import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:mustache_template/mustache.dart';
import 'package:path/path.dart' as path;

import 'dart-visitor.dart';
import 'default_templates.dart';
import 'defines.dart';

enum ExportType {
  UserDefine,
  Package,
  FlutterLibrary,
  DartLibrary,
}

void renderTemplate(String templateFile, Map<String, dynamic> templateVars,
    String opath) async {
  var f = File(templateFile);
  var content;
  if (!f.existsSync()) {
    //读取默认模板
    var baseName = path.basename(templateFile);
    content = defaultTemplates[baseName];
  } else {
    content = f.readAsStringSync();
  }
  var template = Template(content, lenient: true, htmlEscapeValues: false);
  var output = template.renderString(templateVars);
  var dirName = path.dirname(opath);
  await Directory(dirName).create(recursive: true);
  final file = File(opath);
  await file.writeAsString(output);
}

void writeJson(
    String? jsonPath, String filePath, Map<String, dynamic>? astData) async {
  if (jsonPath != null) {
    var dirName = path.basename(path.dirname(filePath));
    var outputPath = '$jsonPath/json/$dirName/';
    await Directory(outputPath).create(recursive: true);
    var output = '$outputPath/${path.basenameWithoutExtension(filePath)}.json';
    var encoder = JsonEncoder.withIndent('  ');
    var content = encoder.convert(astData);
    final file = File('$output');
    await file.writeAsString(content);
  }
}

Future<FileDefine?> generateDefines(String filePath, String? jsonPath) async {
  print('parsing: [file://$filePath]');
  var js = await generate(filePath);
  if (js == null) {
    return null;
  }
  writeJson(jsonPath, filePath, js);

  return FileDefine(js, filePath);
}

Future<List<BindingDefine>> generateWrappers(
    FileDefine fd, String outputPath, String scriptOutputPath,
    {ExportType library = ExportType.UserDefine, String? libName}) async {
  var filePath = fd.filePath;
  var file_imports = [];
  var bindingExternals = <String>[];
  var bindings = <BindingDefine>[];

  fd.imports.forEach((element) {
    var uri = element.uri;
    if (uri != null) {
      if (uri.startsWith('\'dart:') || uri.startsWith('\'package:flutter/')) {
        file_imports.add({
          'import_uri': uri,
          'import_prefix': element.prefix == null ? '' : 'as ${element.prefix}',
        });
      }
    }
  });
  var have_enums = <Map<String, dynamic>>[];
  var private_enums = [];
  var privateClasses = <Map<String, dynamic>>[];
  var privateTopVars = <Map<String, dynamic>>[];
  var ht_enums = [];
  var ht_classes = [];

  for (var e in fd.enums) {
    if (!e.annotations.contains('HT_Binding') &&
        library == ExportType.UserDefine) {
      continue;
    }
    if (e.isPrivate) {
      continue;
    }
    var binding_enums = [];
    e.constants.forEach((element) {
      binding_enums.add({'enum_constant_name': element});
    });
    var tempVar = {'enum_name': e.name, 'binding_enums': binding_enums};
    have_enums.add(tempVar);
    ht_enums.add(tempVar);
  }

  var all_classes = [];
  var added_classes = <String>{};
  for (var kclass in fd.classes) {
    if (!kclass.annotations.contains('HT_Binding') &&
        library == ExportType.UserDefine) {
      continue;
    }
    if (kclass.ignored) {
      //被用户忽略的类
      continue;
    }
    if (kclass.name.startsWith('_') || kclass.isAbstract) {
      //私有类不能绑定
      continue;
    }
    // if (kclass.generics != null) {
    //   //有泛型的类不支持导出
    //   continue;
    // }
    var generic_types = '';
    if (kclass.generics != null) {
      var types = <String>[];
      kclass.generics!.forEach((element) {
        var genericType = element['type'];
        if (genericType != null) {
          types.add(genericType);
        }
      });
      if (types.isNotEmpty) {
        generic_types = '<${types.join(', ')}>';
      }
    }
    if (kclass.superClassName != null &&
        !kclass.superClassName!.startsWith('_') &&
        kclass.superClass == null) {
      var ignored = {'NativeFieldWrapperClass2', 'IterableBase'};
      if (!ignored.contains(kclass.superClassName)) {
        // print(
        //     '[file://${fd.filePath}]\n\t\t[${kclass.name}] Cannot find super class: ${kclass.superClassName}');
      }
    }
    var dart_class_name = kclass.name;

    var binding_constructors = [];
    var have_static_declarations = [];
    var ht_fields = [];
    var have_constructors = false;
    var have_instance_getter = true;
    var have_instance_setter = true;
    var failed = false;
    void checkIdentifier(String id, Set<String> added,
        List<Map<String, dynamic>> privateDefines) {
      var isPrefixedId = id.contains('.');

      if (isPrefixedId) {
        //暂时没发现私有调用的情况，不需要做任何处理
        var index = id.indexOf('.');
        var className = id.substring(0, index);
        var varName = id.substring(index + 1);
        if (className.startsWith('_')) {
          //私有类型
          id = className;
        } else if (varName.startsWith('_')) {
          //非私有类的私有构造函数
          failed = true;
        } else {
          return;
        }
      }
      var v = fd.findIdentifier(id);
      // print('[$dart_class_name] need id: $id v: ${v.runtimeType}');
      if (v != null) {
        if (v is ClassDefine) {
          if (!added_classes.contains(id)) {
            v.identifiers.forEach((element) {
              checkIdentifier(element, added, privateDefines);
            });
            added_classes.add(id);
            privateClasses.add({'raw_class': v.raw});
          }
        } else {
          if (!added.contains(id)) {
            added.add(id);
            if (v is FieldVarDefine) {
              v.identifiers.forEach((element) {
                checkIdentifier(element, added, privateDefines);
              });
              var varType = v.isConst ? 'const' : 'var';
              if (v.isTopLevel) {
                var value = '$varType ${v.raw};';
                if (!privateTopVars
                    .any((element) => element['private_top_vars'] == value)) {
                  privateTopVars.add({'private_top_vars': value});
                }
              } else if (v.isStatic) {
                have_static_declarations.add({
                  'static_declaration': 'static $varType ${v.raw};',
                });
              } else {
                privateDefines.add({
                  'private_impl': '$varType ${v.raw};',
                });
              }
            } else if (v is MethodDefine) {
              if (!v.isPrivate) {
                if (v.isStatic) {
                  privateDefines.add({
                    'private_impl':
                        'const ${v.name} = $dart_class_name.${v.name};'
                  });
                }
              } else {
                if (v.isStatic) {
                  v.identifiers.forEach((element) {
                    if (element.startsWith('_')) {
                      checkIdentifier(element, added, privateDefines);
                    }
                  });
                  have_static_declarations.add({
                    'static_declaration': v.raw,
                  });
                } else {
                  privateDefines.add({
                    'private_impl': v.raw,
                  });
                }
              }
            } else if (v is FunctionDefine) {
              v.identifiers.forEach((element) {
                checkIdentifier(element, added, privateDefines);
              });
              var value = v.raw;
              if (!privateTopVars
                  .any((element) => element['private_top_vars'] == value)) {
                privateTopVars.add({'private_top_vars': value});
              }
            }
          }
        }
      } else {
        // print('${fd.filePath} Cannot find identifier: $idCopy');

      }
    }

    var staticClassOnly = false;
    for (var ctor in kclass.constructors) {
      //确实有构造函数
      have_constructors = true;
      if (ctor.isFactory) {
        //工厂构造函数不导出
        continue;
      }
      if (ctor.isPrivate) {
        //私有构造函数只导出静态变量/方法
        staticClassOnly = true;
      }

      if (!staticClassOnly) {
        var constructor_name = '${ctor.name ?? ""}';
        if (constructor_name != '') {
          constructor_name = '.$constructor_name';
        }
        var constructor_params = ctor.getParams();
        var constructor_invoke_params = ctor.getInvokeParam();

        var default_identifiers = ctor.getDefaultIdentifiers();
        var added_identifiers = <String>{};
        var constructor_private_defines = <Map<String, dynamic>>[];

        default_identifiers.forEach((id) {
          if (id.startsWith('math.') && library == ExportType.DartLibrary) {
            file_imports.add({
              'import_uri': '\'dart:math\'',
              'import_prefix': ' as math',
            });
          }
          checkIdentifier(id, added_identifiers, constructor_private_defines);
        });

        binding_constructors.add({
          'dart_class_name': dart_class_name,
          'constructor_name': constructor_name,
          'constructor_params': constructor_params,
          'generic_types': generic_types,
          'constructor_invoke_params': constructor_invoke_params,
          'constructor_private_defines': constructor_private_defines
        });

        ht_fields.add({'field': 'construct ${ctor.name ?? ""}'});
      }
    }
    if (failed) {
      //TODO:有无法使用的默认参数，暂时不导出
      continue;
    }

    if (have_constructors && binding_constructors.isEmpty && !staticClassOnly) {
      //有构造函数，但是没有可以导出的，并且不是静态专用类，不导出此类。
      continue;
    }
    if (!have_constructors) {
      //一个构造函数都没有，绑定一个默认的
      binding_constructors.add({
        'dart_class_name': dart_class_name,
        'constructor_name': '',
        'constructor_params': '()',
        'generic_types': '',
        'constructor_invoke_params': '()',
        'constructor_private_defines': []
      });
      ht_fields.add({'field': 'construct'});
    }
    var instanceVarGetterList = [];
    var instanceVarSetterList = [];
    var instanceMethodList = [];
    if (!staticClassOnly) {
      kclass.instanceVars.forEach((iv) {
        if (iv.isPrivate) {
          return;
        }
        var setter = false;
        instanceVarGetterList.add({'instance_identifier': iv.name});

        if (!iv.isFinal) {
          setter = true;
          instanceVarSetterList.add({'instance_identifier': iv.name});
        }

        if (setter) {
          ht_fields.add({'field': 'var ${iv.name}'});
        } else {
          ht_fields.add({'field': 'get ${iv.name}'});
        }
      });
      kclass.instanceMethods.forEach((m) {
        if (m.isPrivate || m.isOperator) {
          return;
        }
        if (m.isSetter) {
          instanceVarSetterList.add({'instance_identifier': m.name});
          ht_fields.add({'field': 'set ${m.name}(value)'});
        } else if (m.isGetter) {
          instanceVarGetterList.add({'instance_identifier': m.name});
          ht_fields.add({'field': 'get ${m.name}'});
        } else {
          instanceMethodList.add({'method_identifier': m.name});
          ht_fields.add({'field': 'fun ${m.name}'});
        }
      });
    }

    have_instance_getter =
        instanceVarGetterList.isNotEmpty || instanceMethodList.isNotEmpty;
    have_instance_setter = instanceVarSetterList.isNotEmpty;
    var binding_static_methods = [];
    var binding_static_variables_getter = [];
    var binding_static_variables_setter = [];
    kclass.staticMethods.forEach((m) {
      if (m.isPrivate || m.isTest || m.extendsTypes.isNotEmpty) {
        return;
      }
      var static_method_private_defines = <Map<String, dynamic>>[];
      var default_identifiers = m.getDefaultIdentifiers();
      var added_identifiers = <String>{};
      default_identifiers.forEach((id) {
        if (id.startsWith('_')) {
          checkIdentifier(id, added_identifiers, static_method_private_defines);
        }
      });
      binding_static_methods.add({
        'dart_class_name': dart_class_name,
        'static_method_name': m.name,
        'static_method_params': m.getParams(),
        'static_method_invoke_params': m.getInvokeParam(),
        'static_method_private_defines': static_method_private_defines,
      });
      ht_fields.add({'field': 'static fun ${m.name}${m.getHetuParams()}'});
    });
    kclass.staticVars.forEach((v) {
      if (v.isPrivate) {
        return;
      }
      var setter = false;
      binding_static_variables_getter.add(
          {'dart_class_name': dart_class_name, 'static_variable_name': v.name});
      if (!v.isConst && !v.isFinal) {
        setter = true;
        binding_static_variables_setter.add({
          'dart_class_name': dart_class_name,
          'static_variable_name': v.name
        });
      }

      if (setter) {
        ht_fields.add({'field': 'static var ${v.name}'});
      } else {
        ht_fields.add({'field': 'static get ${v.name}'});
      }
    });

    var have_class_fetch = binding_constructors.isNotEmpty ||
        binding_static_methods.isNotEmpty ||
        binding_static_variables_getter.isNotEmpty;

    var have_class_assign = binding_static_variables_setter.isNotEmpty;

    var empty_class_binding = !have_class_fetch && !have_class_assign;
    var have_class_member;
    var have_instance_member;
    if (!empty_class_binding) {
      have_class_member = {
        'dart_class_name': dart_class_name,
        'have_class_fetch': have_class_fetch,
        'binding_constructors': binding_constructors,
        'binding_static_methods': binding_static_methods,
        'binding_static_variables_getter': binding_static_variables_getter,
        'have_class_assign': have_class_assign,
        'binding_static_variables_setter': binding_static_variables_setter,
        'have_static_declarations': have_static_declarations,
      };
    }
    var empty_instance_binding = !have_instance_setter &&
        !have_instance_getter &&
        binding_constructors.isEmpty;
    if (!empty_instance_binding) {
      have_instance_member = {
        'dart_class_name': dart_class_name,
        'have_instance_getter': have_instance_getter,
        'have_instance_setter': have_instance_setter,
        'getter_case': instanceVarGetterList,
        'method_case': instanceMethodList,
        'setter_case': instanceVarSetterList,
      };
      ;
    }

    var classMap = {};
    if (have_class_member != null) {
      classMap['have_class_member'] = have_class_member;
    }
    if (have_instance_member != null) {
      classMap['have_instance_member'] = have_instance_member;
    }

    if (classMap.isNotEmpty) {
      all_classes.add(classMap);
    }

    var empty_ht_class = ht_fields.isEmpty;
    if (!empty_ht_class) {
      ht_classes.add(
          {'dart_class_name': dart_class_name, 'field_declaration': ht_fields});
    }
  }

  if (all_classes.isEmpty && have_enums.isEmpty) {
    return [];
  }

  all_classes.forEach((element) {
    var cls = element['have_class_member'];
    if (cls != null) {
      bindingExternals.add(cls['dart_class_name']);
    }
  });
  have_enums.forEach((element) {
    bindingExternals.add(element['enum_name']);
  });

  var template_vars = <String, dynamic>{
    'file_imports': file_imports,
    'have_private_top_vars': privateTopVars,
    'private_classes': privateClasses,
    'all_classes': all_classes,
    'have_enums': have_enums,
  };

  var fileName = path.basenameWithoutExtension(filePath);
  late String dartPath;
  late String htPath;
  var dirName = path.basename(path.dirname(filePath));
  if (library == ExportType.UserDefine || library == ExportType.Package) {
    dirName = 'user-defined';
  }
  dartPath = '$outputPath/$dirName/';
  htPath = '$scriptOutputPath/$dirName/';
  await Directory(dartPath).create(recursive: true);
  await Directory(htPath).create(recursive: true);

  bindings.add(BindingDefine('$dirName/$fileName', bindingExternals));

  var ht_template_vars = <String, dynamic>{
    'ht_classes': ht_classes,
    'ht_enums': ht_enums,
  };
  if (library == ExportType.FlutterLibrary) {
    template_vars['library_class_import'] = {
      'flutter_lib_name': "import 'package:flutter/${libName!}.dart';",
    };
  } else if (library == ExportType.DartLibrary) {
    template_vars['library_class_import'] = {
      'flutter_lib_name': "import 'dart:${libName!}';",
    };
  } else if (library == ExportType.UserDefine) {
    var from = dartPath;
    var to = filePath;
    // print('from: $from\nto: $to\nrel:${path.relative(to, from: from)}');
    var relPath = path.relative(to, from: from);
    template_vars['library_class_import'] = {
      'flutter_lib_name': "import '$relPath';",
    };
  } else {
    var packageName = path.basenameWithoutExtension(filePath);
    if (packageName == 'lib') {
      //上一级
      packageName = path.basenameWithoutExtension(path.dirname(packageName));
    }
    if (packageName.contains('-')) {
      packageName = packageName.substring(0, packageName.indexOf('-'));
    }
    template_vars['library_class_import'] = {
      'flutter_lib_name': "import 'package:$packageName/$packageName.dart';",
    };
  }
  // print('output: $dartPath$fileName.g.dart');
  // print('ht output: $htPath/$fileName.ht');
  renderTemplate('template/dart-classes.mustache', template_vars,
      '$dartPath$fileName.g.dart');
  renderTemplate('template/ht-classes.mustache', ht_template_vars,
      '$htPath$fileName.ht');

  return bindings;
}

//生成AST
Future<Map<String, dynamic>?> generate(String path) async {
  if (path.isEmpty) {
    stdout.writeln('No file found');
  } else {
    await _handleError(path);
    if (exitCode == 2) {
      try {
        var parseResult = parseFile(
            path: path,
            featureSet: FeatureSet.fromEnableFlags([]),
            throwIfDiagnostics: false);
        var compilationUnit = parseResult.unit;
        //遍历AST
        var astData = compilationUnit.accept(RootAstVisitor());
        // print(astData);

        return astData;
      } catch (e, stack) {
        stdout.writeln('\t\tparse file error: ${e.toString()} \n$stack');
      }
    }
  }
  return null;
}

Future _handleError(String path) async {
  if (await FileSystemEntity.isDirectory(path)) {
    stderr.writeln('error: $path is a directory');
  } else {
    exitCode = 2;
  }
}
