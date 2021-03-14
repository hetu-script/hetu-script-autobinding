import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:mustache_template/mustache.dart';
import 'package:path/path.dart' as path;

import 'dart-visitor.dart';
import 'defines.dart';

enum ExportType {
  UserDefine,
  FlutterLibrary,
  DartLibrary,
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

void generateWrappers(FileDefine fd, String outputPath,
    {ExportType library = ExportType.UserDefine, String? libName}) async {
  var filePath = fd.filePath;
  var source_file = path.basename(filePath);
  var file_imports = [];

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
  var classList = [];
  var enums = [];
  var private_enums = [];
  var privateClasses = <Map<String, dynamic>>[];
  var privateTopVars = <Map<String, dynamic>>[];
  var ht_enums = [];
  var ht_classes = [];

  for (var e in fd.enums) {
    if (e.isPrivate) {
      continue;
    }
    var binding_enums = [];
    e.constants.forEach((element) {
      binding_enums.add({'enum_constant_name': element});
    });
    var tempVar = {'enum_name': e.name, 'binding_enums': binding_enums};
    enums.add(tempVar);
    ht_enums.add(tempVar);
  }

  var added_classes = <String>{};
  for (var kclass in fd.classes) {
    if (!kclass.annotations.contains('HT_Binding') &&
        library == ExportType.UserDefine) {
      continue;
    }
    if (kclass.name.startsWith('_') || kclass.isAbstract) {
      //私有类不能绑定
      continue;
    }
    if (kclass.superClassName != null && !kclass.superClassName!.startsWith('_') && kclass.superClass == null) {
      var ignored = {
        'NativeFieldWrapperClass2',
        'IterableBase'
      };
      if (!ignored.contains(kclass.superClassName)) {
        print(
            '[file://${fd.filePath}]\n\t\t[${kclass
                .name}] Cannot find super class: ${kclass.superClassName}');
      }
    }
    var dart_class_name = kclass.name;
    var constructorsList = [];
    var binding_constructors = [];
    var static_methods = [];
    var ht_fields = [];
    var have_constructors = true;
    var have_instance_getter = true;
    var have_instance_setter = true;
    var failed = false;
    void checkIdentifier(String id, Set<String> added,
        List<Map<String, dynamic>> privateDefines) {
      var isPrefixedId = id.contains('.');
      var idCopy = id;
      if (isPrefixedId) {
        //暂时没发现私有调用的情况，不需要做任何处理
        var index = id.indexOf('.');
        var className = id.substring(0, index);
        var varName = id.substring(index + 1);
        if (className.startsWith('_')) {
          //私有类型
          id = className;
        } else if (varName.startsWith('_')){
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
                        'var ${v.name} = $dart_class_name.${v.name};'
                  });
                }
              } else {
                if (v.isStatic) {
                  v.identifiers.forEach((element) {
                    if (element.startsWith('_')) {
                      checkIdentifier(element, added, privateDefines);
                    }
                  });
                  static_methods.add({
                    'static_method_impl': v.raw,
                  });
                  //添加一个local变量映射到静态变量的
                  privateDefines.add({
                    'private_impl': 'var $id = ${dart_class_name}Wrapper.$id;',
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
              privateDefines.add({'private_impl': v.raw});
            }
          }
        }
      } else {
        // print('${fd.filePath} Cannot find identifier: $idCopy');

      }
    }

    var staticClassOnly = false;
    for (var ctor in kclass.constructors) {
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
        var constructor_params = ctor.getCtorParam();
        var super_params = ctor.getSuperParam();
        var constructor_generated_params = ctor.getInvokeParam();
        constructorsList.add({
          'constructor_name': constructor_name,
          'constructor_params': constructor_params,
          'super_params': super_params,
        });
        var default_identifiers = ctor.getDefaultIdentifiers();
        var added_identifiers = <String>{};
        var constructor_private_defines = <Map<String, dynamic>>[];

        default_identifiers.forEach((id) {
          checkIdentifier(id, added_identifiers, constructor_private_defines);
        });

        binding_constructors.add({
          'dart_class_name': dart_class_name,
          'constructor_name': constructor_name,
          'constructor_generated_params': constructor_generated_params,
          'constructor_private_defines': constructor_private_defines
        });

        ht_fields.add({'field': 'construct ${ctor.name ?? ""}'});
      }
    }
    if (failed) {
      //TODO:有无法使用的默认参数，暂时不导出
      continue;
    }
    have_constructors = constructorsList.isNotEmpty;
    if (!have_constructors && !staticClassOnly) {
      //没有构造函数，并且不是静态专用类，不导出此类。
      continue;
    }
    var instanceVarGetterList = [];
    var instanceVarSetterList = [];
    var methodList = [];
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
          methodList.add({'method_identifier': m.name});
          ht_fields.add({'field': 'fun ${m.name}'});
        }
      });
    }

    have_instance_getter = instanceVarGetterList.isNotEmpty;
    have_instance_setter = instanceVarSetterList.isNotEmpty;

    var binding_static_methods = [];
    var binding_static_variables_getter = [];
    var binding_static_variables_setter = [];
    kclass.staticMethods.forEach((m) {
      if (m.isPrivate || m.isTest) {
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
        'static_method_name': m.name +
            '${m.extendsTypes.isNotEmpty ? "<${m.extendsTypes.join(', ')}>" : ""}',
        'static_method_generated_params': m.getInvokeParam(),
        'static_method_private_defines': static_method_private_defines,
      });
      ht_fields.add({'field': 'static fun ${m.name}${m.getHetuParams()}'});
    });
    kclass.staticVars.forEach((v) {
      if (v.isPrivate) {
        return;
      }
      bool setter = false;
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
    classList.add({
      'dart_class_name': dart_class_name,
      'constructors': constructorsList,
      'getter_case': instanceVarGetterList,
      'method_case': methodList,
      'setter_case': instanceVarSetterList,
      'binding_constructors': binding_constructors,
      'binding_static_methods': binding_static_methods,
      'binding_static_variables_getter': binding_static_variables_getter,
      'binding_static_variables_setter': binding_static_variables_setter,
      'have_constructors': have_constructors,
      'have_instance_getter': have_instance_getter,
      'have_instance_setter': have_instance_setter,
      'have_static_methods': static_methods,
    });

    ht_classes.add(
        {'dart_class_name': dart_class_name, 'field_declaration': ht_fields});
  }
  ;
  if (classList.isEmpty) {
    return;
  }

  var template_vars = <String, dynamic>{
    'file_imports': file_imports,
    'have_private_top_vars': privateTopVars,
    'classes': classList,
    'private_classes': privateClasses,
    'enums': enums,
  };

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
  } else {
    template_vars['custom_class_import'] = {
      'source_file': source_file,
    };
  }

  void renderTemplate(String templateFile, Map<String, dynamic> templateVars,
      String outputPath) async {
    var f = File(templateFile);
    var content = f.readAsStringSync();
    var template = Template(content, lenient: true, htmlEscapeValues: false);
    var output = template.renderString(templateVars);
    var fileName = path.basenameWithoutExtension(filePath);
    var dirName = path.dirname(outputPath);
    await Directory(dirName).create(recursive: true);
    final file = File(outputPath);
    await file.writeAsString(output);
    // print('writing : $outputPath');
  }

  var fileName = path.basenameWithoutExtension(filePath);
  late String dartPath;
  if (library != ExportType.UserDefine) {
    var dirName = path.basename(path.dirname(filePath));
    dartPath = '$outputPath/bindings/$dirName/';
    await Directory(dartPath).create(recursive: true);
  } else {
    dartPath = path.dirname(filePath) + '/';
  }
  renderTemplate('bin/template/dart-classes.mustache', template_vars,
      '$dartPath/$fileName.g.dart');
  renderTemplate('bin/template/ht-classes.mustache', ht_template_vars,
      '$dartPath/$fileName.ht');
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
