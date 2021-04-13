import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:hetu_binding_generator/main.dart';
import 'package:mustache_template/mustache.dart';
import 'package:path/path.dart' as path;
import 'package:pub_semver/pub_semver.dart' show Version;

import 'dart-visitor.dart';
import 'default_templates.dart';
import 'defines.dart';

var defaultTemplates = {
  'import_entry.mustache': import_entry,
  'dart_classes.mustache': dart_classes,
  'ht_classes.mustache': ht_classes,
  'ht_library_script_binding.mustache': ht_library_script_binding,
  'ht_script_binding.mustache': ht_script_binding,
};
enum ExportType {
  UserDefine,
  Package,
  FlutterLibrary,
  DartLibrary,
}

void renderTemplate(String templateFile, Map<String, dynamic> templateVars, String opath) async {
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

void writeJson(String? jsonPath, String filePath, Map<String, dynamic>? astData) async {
  if (jsonPath != null) {
    var dirName = path.basename(path.dirname(filePath));
    var outputPath = '$jsonPath/$dirName/';
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

void fetchSuperClass(ClassDefine cls) {
  if (cls.superFetched) {
    return;
  }
  if (cls.mixinNames.isNotEmpty) {
    cls.mixinNames.forEach((element) {
      var mixin = mixinMap[element];
      if (mixin != null && !mixin.ignored) {
        cls.withMixins.add(mixin);

        //添加mixin的接口

        for (var v in mixin.instanceMethods) {
          if (v.name.startsWith('_')) {
            continue;
          }
          var exist = cls.instanceMethods.indexWhere((element) => element.name == v.name) != -1 ||
              cls.instanceVars.indexWhere((element) => element.name == v.name) != -1;
          if (!exist) {
            //子类没有，复制
            cls.instanceMethods.add(v);
            // print('Class [${cls.name}] add method ${v.name}');

            // //基础了父类的方法，也需要集成因extension而新import的文件
            // mixin.file.extImports.forEach((ex) {
            //   if (!cls.file.extImports.contains(ex)) {
            //     cls.file.extImports.add(ex);
            //   }
            // });
          }
        }
      }
    });
  }

  if (cls.superClass != null) {
    var sp = cls.superClass!;
    if (!sp.superFetched && !sp.ignored) {
      //父类还没有获取过接口，递归调用
      fetchSuperClass(sp);
    }

    //将父类成员变量、成员方法、Getter、Setter都拷贝到子类里
    for (var v in sp.instanceVars) {
      if (v.name.startsWith('_')) {
        continue;
      }
      var exist = cls.instanceMethods.indexWhere((element) => element.name == v.name) != -1 ||
          cls.instanceVars.indexWhere((element) => element.name == v.name) != -1;
      if (!exist) {
        //子类没有，复制
        cls.instanceVars.add(v);
        // print('Class [${cls.name}] add var ${v.name}');
      }
    }

    for (var v in sp.instanceMethods) {
      if (v.name.startsWith('_')) {
        continue;
      }
      var exist = cls.instanceMethods.indexWhere((element) => element.name == v.name) != -1 ||
          cls.instanceVars.indexWhere((element) => element.name == v.name) != -1;
      if (!exist) {
        //子类没有，复制
        cls.instanceMethods.add(v);
        // print('Class [${cls.name}] add method ${v.name}');

        //基础了父类的方法，也需要集成因extension而新import的文件
        sp.file.extImports.forEach((ex) {
          if (!cls.file.extImports.contains(ex)) {
            cls.file.extImports.add(ex);
          }
        });
      }
    }
  }
  //添加extensions
  if (extensionMap.containsKey(cls.name)) {
    var exts = extensionMap[cls.name];
    exts?.forEach((e) {
      e.instanceMethods.forEach((m) {
        var idx = cls.instanceMethods.indexWhere((element) => element.name == m.name);
        if (idx != -1) {
          cls.instanceMethods.removeAt(idx);
        }
        cls.instanceMethods.add(m);
        var importUri = e.fileDefine.filePath;
        var url;
        if (customImportMap.containsKey(importUri)) {
          url = customImportMap[importUri] as String;
          if (url == '') {
            //用户文件
            url = path.relative(cls.file.filePath, from: importUri);
          } else {
            //库文件
          }
          url = '\'$url\'';
        }
        if (cls.file.extImports.indexWhere((element) => element.uri == url) == -1) {
          cls.file.extImports.add(ImportDefine({'id': url, 'prefix': null}));
        }
      });
    });
  }

  cls.superFetched = true;
}

Future<List<BindingDefine>> generateWrappers(
    FileDefine fd, String outputPath, String scriptOutputPath,
    {ExportType library = ExportType.UserDefine,
    String? libName,
    List<String> generics = const <String>[]}) async {
  var filePath = fd.filePath;
  var file_imports = [];
  var bindingExternals = <String>[];
  var bindingFunctionTypes = <Map<String, dynamic>>[];
  var bindings = <BindingDefine>[];

  fd.classes.forEach((element) {
    fetchSuperClass(element);
  });
  fd.privateClasses.forEach((element) {
    fetchSuperClass(element);
  });

  if (fd.partOf != null) {
    //查找对应的library文件，引入对应的import
    if (libraryFileMap.containsKey(fd.partOf)) {
      var fileDefine = libraryFileMap[fd.partOf];
      if (fileDefine != null) {
        fd.imports.addAll(fileDefine.imports);
      }
    }
  }

  fd.imports.forEach((element) {
    var uri = element.uri;
    if (uri != null) {
      var importName = uri.substring(1); //去掉第一个字符' 或者 "
      if (importName.contains(':_')) {
        //引入私有文件pass
        return;
      }
      if (importName.startsWith('dart:') || importName.startsWith('package:')) {
        file_imports.add({
          'import_uri': uri,
          'import_prefix': element.prefix == null ? '' : 'as ${element.prefix}',
        });
      }
      //packages需要添加文件自己作为引用
      if (library == ExportType.Package) {
        if (fd.partOf == null) {
          var idx = filePath.indexOf('/lib/');
          var p = filePath.substring(idx + 5);
          var u = '\'package:$libName/$p\'';
          print(p);
          if (file_imports.isEmpty || file_imports.indexWhere((element) => element['import_uri'] == u) == -1) {
            file_imports.add({
              'import_uri': u,
              'import_prefix': '',
            });
          }
        }
      }
    }
  });
  fd.extImports.forEach((element) {
    var uri = element.uri;
    if (uri != null) {
      file_imports.add({
        'import_uri': uri,
        'import_prefix': element.prefix == null ? '' : 'as ${element.prefix}',
      });
    }
  });

  var have_enums = <Map<String, dynamic>>[];
  // var private_enums = [];
  var privateClasses = <Map<String, dynamic>>[];
  var privateTopVars = <Map<String, dynamic>>[];
  var ht_enums = [];
  var ht_classes = [];

  for (var e in fd.enums) {
    if (!e.annotations.contains('HTAutoBinding') && library == ExportType.UserDefine) {
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
  var classes = <ClassDefine>[];
  classes.addAll(fd.classes);

  for (var kclass in classes) {
    var dart_class_name = kclass.name;
    if (kclass.isTest) {
      print('class pass: [${kclass.name}] test only');
      continue;
    }
    if (!kclass.annotations.contains('HTAutoBinding') && library == ExportType.UserDefine) {
      print('class pass: [${kclass.name}] user defined but not annotated');
      continue;
    }
    if (kclass.ignored) {
      //被用户忽略的类
      print('class pass: [${kclass.name}] user ignored');
      continue;
    }
    if (kclass.isPrivate) {
      //私有类不能绑定
      print('class pass: [${kclass.name}] private class');
      continue;
    }
    var genericTypes = {};
    if (kclass.generics != null) {
      var exp = false;
      if (generics.isNotEmpty) {
        //检查是否有同样的类
        generics.forEach((element) {
          var eles = element.split(':');
          var clsName = eles[0];
          var genericType = eles[1];
          genericTypes[clsName] ??= [];
          genericTypes[clsName].add(genericType);
          if (kclass.name == clsName) {
            exp = true;
            return;
          }
        });
      }
      if (!exp) {
        //有泛型的类不支持导出，需要用户自己实现不带泛型的类然后标记导出
        print('class pass: [${kclass.name}] generic unsupported');
        continue;
      }
    }

    // var generic_types = '';
    // if (kclass.generics != null) {
    //   var types = <String>[];
    //   kclass.generics!.forEach((element) {
    //     var genericType = element['type'];
    //     if (genericType != null) {
    //       types.add(genericType);
    //     }
    //   });
    //   if (types.isNotEmpty) {
    //     generic_types = '<${types.join(', ')}>';
    //   }
    // }
    if (kclass.superClassName != null && !kclass.superClassName!.startsWith('_') && kclass.superClass == null) {}

    var binding_constructors = [];
    var have_static_declarations = [];
    var ht_fields = [];
    var have_constructors = false;
    var have_instance_getter = true;
    var have_instance_setter = true;
    var failed = false;

    void checkIdentifier(String id, Set<String> added, List<Map<String, dynamic>> privateDefines) {
      if (id == '_TextSelectionToolbarContainer') {
        print('111');
      }
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
                if (!privateTopVars.any((element) => element['private_top_vars'] == value)) {
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
                  privateDefines.add({'private_impl': 'const ${v.name} = $dart_class_name.${v.name};'});
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
              if (!privateTopVars.any((element) => element['private_top_vars'] == value)) {
                privateTopVars.add({'private_top_vars': value});
              }
            }
          }
        }
      } else {
        // print('${fd.filePath} Cannot find identifier: $idCopy');

      }
    }

    var function_bindings = [];

    void checkFunctionParamType(ParamDefine param) {
      var type = param.type ?? '';
      if (type.endsWith('?')) {
        type = type.substring(0, type.length - 1);
      }
      if (functionTypedefMap.containsKey(type)) {
        //是函数类型变量，生成

        var element = functionTypedefMap[type]!;
        if (element.generic) {
          //泛型不支持
          return;
        }
        // if (element.returnType.contains('<')) {
        //
        //   return;
        // }
        if (bindingFunctionTypes.indexWhere((e) => e['dart_class_name'] == dart_class_name) == -1) {
          bindingFunctionTypes.add({
            'dart_class_name': dart_class_name,
          });
        }
        if (function_bindings.indexWhere((e) => e['function_type_name'] == element.name) == -1) {
          function_bindings.add({
            'function_type_name': element.name,
            'function_args': element.getParams(),
            'function_return_type': element.returnType == 'void' ? '' : ' as ${element.returnType}',
            'function_invoke_args': element.getInvokeParams(),
          });
        }
      }
    }

    var staticClassOnly = true;
    if (kclass.constructors.isEmpty && !kclass.isAbstract) {
      //一个构造函数都没定义，会添加一个默认的，所以不是静态专用类
      staticClassOnly = false;
    } else {
      for (var ctor in kclass.constructors) {
        if (!ctor.isPrivate) {
          //有非私有构造函数，可以生成instance
          staticClassOnly = false;
        }
      }
    }
    for (var ctor in kclass.constructors) {
      //确实有构造函数
      have_constructors = true;
      if (ctor.isPrivate || ctor.isDeprecated) {
        //私有构造函数跳过
        continue;
      }
      if (kclass.isAbstract && !ctor.isFactory) {
        //抽象类只有factory构造函数导出
        continue;
      }
      // print('add ctor: ${dart_class_name} ${ctor.name} const: ${ctor.isConst}');
      if (!staticClassOnly) {
        var constructor_name = '${ctor.name ?? ""}';
        if (constructor_name != '') {
          constructor_name = '.$constructor_name';
        }
        ctor.params.forEach((p) {
          checkFunctionParamType(p);
        });

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
          'generic_types': '',
          'constructor_invoke_params': constructor_invoke_params,
          'constructor_private_defines': constructor_private_defines
        });

        ht_fields.add({'field': 'construct ${ctor.name ?? ""}'});
      }
    }
    if (failed) {
      //TODO:有无法使用的默认参数，暂时不导出
      print('class pass: [$dart_class_name] contains undefined default values');
      continue;
    }

    if (have_constructors && binding_constructors.isEmpty && !staticClassOnly) {
      //有构造函数，但是没有可以导出的，并且不是静态专用类，不导出此类。
      print('class pass: [$dart_class_name] no constructors & not static only');
      continue;
    }
    if (!have_constructors && !kclass.isAbstract) {
      //一个构造函数都没有，绑定一个默认的
      binding_constructors.add({
        'dart_class_name': dart_class_name,
        'constructor_name': '',
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
        iv = iv as FieldVarDefine;
        if (iv.isPrivate || iv.isProtected || iv.isDeprecated) {
          return;
        }
        var setter = false;
        instanceVarGetterList.add({'instance_identifier': iv.name});

        if (!iv.isFinal) {
          setter = true;
          instanceVarSetterList.add({'instance_identifier': iv.name, 'instance_value': iv.getValue()});
        }

        if (setter) {
          ht_fields.add({'field': 'var ${iv.name}'});
        } else {
          ht_fields.add({'field': 'get ${iv.name}'});
        }
      });
      kclass.instanceMethods.forEach((m) {
        if (m.isPrivate || m.isOperator || m.isProtected || m.isDeprecated) {
          return;
        }
        m.params.forEach((p) {
          checkFunctionParamType(p);
        });
        if (m.isSetter) {
          instanceVarSetterList.add({'instance_identifier': m.name, 'instance_value': 'value'});
          ht_fields.add({'field': 'set ${m.name}(value)'});
        } else if (m.isGetter) {
          instanceVarGetterList.add({'instance_identifier': m.name});
          ht_fields.add({'field': 'get ${m.name}'});
        } else {
          var instance_method_private_defines = <Map<String, dynamic>>[];
          var default_identifiers = m.getDefaultIdentifiers();
          var added_identifiers = <String>{};
          default_identifiers.forEach((id) {
            if (id.startsWith('_')) {
              checkIdentifier(id, added_identifiers, instance_method_private_defines);
            }
          });
          instanceMethodList.add({
            'method_identifier': m.name,
            'instance_method_invoke_params': m.getInvokeParam(),
            'instance_method_private_defines': instance_method_private_defines
          });

          ht_fields.add({'field': 'fun ${m.name}'});
        }
      });
    }

    have_instance_getter = instanceVarGetterList.isNotEmpty || instanceMethodList.isNotEmpty;
    have_instance_setter = instanceVarSetterList.isNotEmpty;
    var binding_static_methods = [];
    var binding_static_variables_getter = [];
    var binding_static_variables_setter = [];
    kclass.staticMethods.forEach((m) {
      if (m.isPrivate || m.isTest || m.isProtected || m.isDeprecated || m.extendsTypes.isNotEmpty) {
        return;
      }
      m.params.forEach((p) {
        checkFunctionParamType(p);
      });
      var static_method_private_defines = <Map<String, dynamic>>[];
      var default_identifiers = m.getDefaultIdentifiers();
      var added_identifiers = <String>{};
      default_identifiers.forEach((id) {
        if (id.startsWith('_')) {
          checkIdentifier(id, added_identifiers, static_method_private_defines);
        }
      });
      if (m.isGetter) {
        binding_static_variables_getter.add({'dart_class_name': dart_class_name, 'static_variable_name': m.name});
        ht_fields.add({'field': 'static get ${m.name}${m.getHetuParams()}'});
      } else if (m.isSetter) {
        binding_static_variables_setter.add({'dart_class_name': dart_class_name, 'static_variable_name': m.name});
        ht_fields.add({'field': 'static set ${m.name}${m.getHetuParams()}'});
      } else {
        binding_static_methods.add({
          'dart_class_name': dart_class_name,
          'static_method_name': m.name,
          'static_method_params': m.getParams(),
          'static_method_invoke_params': m.getInvokeParam(),
          'static_method_private_defines': static_method_private_defines,
        });
        ht_fields.add({'field': 'static fun ${m.name}${m.getHetuParams()}'});
      }
    });
    kclass.staticVars.forEach((v) {
      if (v.isPrivate || v.isProtected || v.isDeprecated) {
        return;
      }
      var setter = false;
      binding_static_variables_getter.add({'dart_class_name': dart_class_name, 'static_variable_name': v.name});
      if (!v.isConst && !v.isFinal) {
        setter = true;
        binding_static_variables_setter.add({'dart_class_name': dart_class_name, 'static_variable_name': v.name});
      }

      if (setter) {
        ht_fields.add({'field': 'static var ${v.name}'});
      } else {
        ht_fields.add({'field': 'static const ${v.name}'});
      }
    });

    var have_class_fetch = binding_constructors.isNotEmpty ||
        binding_static_methods.isNotEmpty ||
        binding_static_variables_getter.isNotEmpty;

    var have_class_assign = binding_static_variables_setter.isNotEmpty;
    var have_function_params;
    if (function_bindings.isNotEmpty) {
      have_function_params = {'function_bindings': function_bindings};
    }

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
        'have_instance_getter': have_instance_getter,
        'have_instance_setter': have_instance_setter,
        'have_function_params': have_function_params,
      };
    }
    var empty_instance_binding = !have_instance_setter && !have_instance_getter && binding_constructors.isEmpty;
    if (!empty_instance_binding) {
      have_instance_member = {
        'dart_class_name': dart_class_name,
        'have_instance_getter': have_instance_getter,
        'have_instance_setter': have_instance_setter,
        'getter_case': instanceVarGetterList,
        'method_case': instanceMethodList,
        'setter_case': instanceVarSetterList,
      };
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
      ht_classes.add({'dart_class_name': dart_class_name, 'field_declaration': ht_fields});
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

  var ht_template_vars = <String, dynamic>{
    'ht_classes': ht_classes,
    'ht_enums': ht_enums,
  };

  var fileName = path.basenameWithoutExtension(filePath);
  late String dartPath;
  late String htPath;
  late String dirName;
  // String getPackageName(String name) {
  //   var dn = path.basename(path.dirname(name));
  //   if (dn == libName) {
  //     return path.basenameWithoutExtension(name);
  //   } else {
  //     return getPackageName(path.dirname(name));
  //   }
  // }
  var midFolder = '$libName/';
  var midPrefix = '$libName-';
  if (library == ExportType.FlutterLibrary) {
    dirName = 'flutter';
    template_vars['library_class_import'] = {
      'flutter_lib_name': "import 'package:flutter/${libName!}.dart';",
    };
  } else if (library == ExportType.DartLibrary) {
    dirName = 'dart';

    template_vars['library_class_import'] = {
      'flutter_lib_name': "import 'dart:${libName!}';",
    };
  } else if (library == ExportType.UserDefine) {
    dirName = 'user';
    midFolder = '';
    midPrefix = '';
    var relPath = path.relative(filePath, from: '$outputPath/user');
    template_vars['library_class_import'] = {
      'flutter_lib_name': "import '$relPath';",
    };
  } else if (library == ExportType.Package) {
    dirName = 'packages';
    template_vars['library_class_import'] = {
      'flutter_lib_name': "import 'package:$libName/$libName.dart';",
    };
  }
  dartPath = '$outputPath/$dirName/';
  htPath = '$scriptOutputPath/$dirName/';
  await Directory(dartPath).create(recursive: true);
  await Directory(htPath).create(recursive: true);
  bindings.add(BindingDefine('$dirName/$midFolder$fileName',
      '$dirName/$midPrefix$fileName', bindingExternals, bindingFunctionTypes));

  renderTemplate('template/dart_classes.mustache', template_vars,
      '$dartPath$midFolder$fileName.g.dart');
  renderTemplate('template/ht_classes.mustache', ht_template_vars,
      '$htPath$midPrefix$fileName.ht');

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
        final sdkVersionString = Platform.version.split(' ').first;
        var parseResult = parseFile(
            path: path,
            featureSet: FeatureSet.fromEnableFlags2(sdkLanguageVersion: Version.parse(sdkVersionString), flags: []),
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
