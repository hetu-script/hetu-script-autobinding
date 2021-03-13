import 'dart:io';

import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:mustache_template/mustache.dart';
import 'package:path/path.dart' as path;

import 'dart-visitor.dart';
import 'defines.dart';

class DemoAstVisitor extends GeneralizingAstVisitor<dynamic> {
  @override
  dynamic visitNode(AstNode node) {
    //输出遍历AST Node 节点内容
    stdout.writeln('${node.runtimeType}<---->${node.toSource()}');
    return super.visitNode(node);
  }
}

void generateWrappers(String filePath, String outputPath,
    {bool library = false, String? libName}) async {
  print('parsing: [file://$filePath]');
  var js = await generate(filePath);
  if (js == null) {
    return;
  }

  var fd = FileDefine(js);
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
  var privateClasses = <Map<String, dynamic>>[];
  var privateTopVars = <Map<String, dynamic>>[];

  var added_classes = <String>{};
  for (var kclass in fd.classes) {
    if (!kclass.annotations.contains('HT_Binding') && !library) {
      continue;
    }
    if (kclass.name.startsWith('_') || kclass.isAbstract) {
      //私有类不能绑定
      continue;
    }
    var dart_class_name = kclass.name;
    var constructorsList = [];
    var binding_constructors = [];
    var static_methods = [];
    var have_constructors = true;
    var have_instance_getter = true;
    var have_instance_setter = true;
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
      }
    }

    for (var ctor in kclass.constructors) {
      if (ctor.isPrivate || ctor.isFactory) {
        //私有/工厂构造函数不导出
        continue;
      }
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
    }
    have_constructors = constructorsList.isNotEmpty;
    if (!have_constructors) {
      //没有构造函数，不导出此类
      continue;
    }
    var instanceVarGetterList = [];
    var instanceVarSetterList = [];
    kclass.instanceVars.forEach((iv) {
      if (iv.isPrivate) {
        return;
      }
      instanceVarGetterList.add({'instance_identifier': iv.name});
      if (!iv.isFinal) {
        instanceVarSetterList.add({'instance_identifier': iv.name});
      }
    });
    have_instance_getter = instanceVarGetterList.isNotEmpty;
    have_instance_setter = instanceVarSetterList.isNotEmpty;
    var methodList = [];
    kclass.instanceMethods.forEach((m) {
      if (m.isPrivate || m.isOperator) {
        return;
      }
      methodList.add({'method_identifier': m.name});
    });
    var binding_static_methods = [];
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
        'static_method_name':
            m.name + '${m.extendsTypes.isNotEmpty ? "<${m.extendsTypes.join(', ')}>" : ""}',
        'static_method_generated_params': m.getInvokeParam(),
        'static_method_private_defines': static_method_private_defines,
      });
    });
    var binding_static_variables_getter = [];
    var binding_static_variables_setter = [];
    kclass.staticVars.forEach((v) {
      if (v.isPrivate) {
        return;
      }
      binding_static_variables_getter.add(
          {'dart_class_name': dart_class_name, 'static_variable_name': v.name});
      if (!v.isConst && !v.isFinal) {
        binding_static_variables_setter.add({
          'dart_class_name': dart_class_name,
          'static_variable_name': v.name
        });
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
  };
  if (library) {
    template_vars['library_class_import'] = {
      'flutter_lib_name': libName!,
    };
  } else {
    template_vars['custom_class_import'] = {
      'source_file': source_file,
    };
  }
  var templateFile = 'bin/template/class-wrapper.mustache';
  var f = File(templateFile);
  var content = f.readAsStringSync();
  var template = Template(content, lenient: true, htmlEscapeValues: false);

  var output = template.renderString(template_vars);
  var fileName = path.basenameWithoutExtension(filePath);
  late String dartPath;
  if (library) {
    var dirName = path.basename(path.dirname(filePath));
    dartPath = '$outputPath/dart/$dirName/';
    await Directory(dartPath).create(recursive: true);
  } else {
    dartPath = path.dirname(filePath) + '/';
  }
  var bindingFileName = dartPath + fileName + '.g.dart';
  final file = File(bindingFileName);
  await file.writeAsString(output);
  print('writing : $bindingFileName');
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
