import 'dart:async';
import 'dart:io';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

String path = '/Users/li9s/github/flutter/packages/flutter/lib/src/';
String output = './gen';
List<String> filePaths = [];
List<String> exportedClasses = [
  'Column',
  'Row',
  'Container',
  'Text',
  'Card',
  'Icon',
  'Scaffold',
  'Checkbox',
  'Color'
];

List<String> listWidgetFields = ['children'];

Future<List<FileSystemEntity>> dirContents(Directory dir) {
  var files = <FileSystemEntity>[];
  var completer = Completer<List<FileSystemEntity>>();
  var lister = dir.list(recursive: true);
  lister.listen((file) {
    if (file.statSync().type == FileSystemEntityType.file &&
        file.path.endsWith('.dart')) {
      files.add(file);
    }
  },
      // should also register onError
      onDone: () => completer.complete(files));
  return completer.future;
}

Set<String> extendsSet = {
  'SingleChildRenderObjectWidget',
  'StatefulWidget',
  'StatelessWidget'
};

class ExportClass {
  final String className;
  final String ctorName;
  final List<String> positionArguments;
  final List<String> namedArguments;
  final List<String> namedInitializers;

  ExportClass(this.className, this.ctorName, this.namedArguments,
      this.namedInitializers, this.positionArguments);
}

class ExtendClass {
  final String className;
  ExtendClass superclass;
  final List<ExtendClass> subclasses = [];

  ExtendClass(this.className);
}

class MyVisitor extends RecursiveAstVisitor {
  // @override
  // visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
  //   print("top: ${node.variables.type} ${node.variables}");
  //   return super.visitTopLevelVariableDeclaration(node);
  // }
  // @override
  // dynamic visitVariableDeclaration(VariableDeclaration node) {
  //
  //   var varName = node.name.name;
  //   if (varName != 'clipBehavior') {
  //     return;
  //   }
  //   print('varName: $varName');
  //   print('${node.childEntities}');
  //   return super.visitVariableDeclaration(node);
  // }

  Map<String, ExportClass> exported = {};
  Set<String> allSuperClasses = {};
  var classMap = <String, ExtendClass>{};

  @override
  dynamic visitClassDeclaration(ClassDeclaration node) {
    var className = node.name.name;
    if (className.startsWith('_')) {
      return;
    }
    ExtendClass getClass(String name) {
      var c = classMap[name];
      if (c == null) {
        c = ExtendClass(name);
        classMap[name] = c;
      }
      return c;
    }

    var extendClassName = node.extendsClause?.superclass?.name?.toString();
    var extclass = getClass(className);
    classMap[className] = extclass;

    if (extendClassName != null) {
      var c = getClass(extendClassName);
      if (c.subclasses
              .indexWhere((element) => element.className == className) ==
          -1) {
        c.subclasses.add(extclass);
        extclass.superclass = c;
      }
    }
    // print('class $className ${extendClassName ?? ""}');

    if (extendClassName != null) allSuperClasses.add(extendClassName);

    //测试Container
    if (!exportedClasses.contains(className)) {
      return;
    }

    //静态方法，构造函数
    for (var m in node.members) {
      if (m is ConstructorDeclaration) {
        var namedArgs = <String>[];
        var positionArgs = <String>[];
        var initializers = <String>[];
        //contructor
        print('\t\t constructor: ${m.name}');
        var ctorName;
        if (m.name == null) {
          //默认
          ctorName = className;
        } else {
          //命名
          ctorName = className + '_' + m.name.name;
        }
        // print('\t\t\t\t params: ${m.parameters}');
        for (var param in m.parameters.parameters) {
          // print('\t\t\t\t\t\t param: $param');
          // print('\t\t\t\tparam: ${param.identifier.name} ${param.declaredElement} ${param.childEntities}');
          print('\t\t\t\t paramName: ${param.identifier.name}');

          if (param.isPositional) {
            print("pos: ${param.identifier.name}");
            positionArgs.add(param.identifier.name);
          } else {
            namedArgs.add(param.identifier.name);
            if (param.childEntities.length > 1) {
              var parts = List.from(param.childEntities)
                  .map((e) => e.toString())
                  .toList();
              parts[0] = param.identifier.name;
              initializers.add(parts.join(' '));
            } else {
              initializers.add(param.identifier.name);
            }
          }

          for (var e in param.childEntities) {
            print('\t\t\t\t\t\t e: $e');
          }
        }

        var ec = ExportClass(
            className, ctorName, namedArgs, initializers, positionArgs);
        exported[ctorName] = ec;
      } else if (m is FieldDeclaration) {
        // print('type : ${m.fields.type}');
        // for (var f in m.fields.variables) {
        //   print('var: ${f.name.name}');
        // }

      }
    }

    return super.visitClassDeclaration(node);
  }

  @override
  dynamic visitEnumDeclaration(EnumDeclaration node) {
    var enumName = node.name.name;
    if (enumName.startsWith('_')) {
      return;
    }
    if (enumName != 'Clip') {
      return;
    }
    print("enum: $enumName");
    for (var e in node.constants) {
      print('constant: ${e.name} ${e.offset}');
    }
    return super.visitEnumDeclaration(node);
  }
}

void main(List<String> arguments) {
  print('path: ${Directory.current}');
  var outputPath = Directory.current.toString() + '/gen';
  var dir = Directory(outputPath);
  dirContents(Directory(path)).then((value) {
    var visitor = MyVisitor();
    for (var v in value) {
      var src = File(v.path).readAsStringSync();

      var result = parseString(content: src, throwIfDiagnostics: false);

      var unit = result.unit;

      unit.visitChildren(visitor);
    }

    //ready to export codes
    var headers = [
      '''import 'package:flutter/gestures.dart';''',
      '''import 'package:flutter/material.dart';''',
      '''import 'package:hetu_script/hetu_script.dart';''',
    ];
    var header = headers.join('\n') + '\n';
    var functionMappingHeader =
        '''var wrapperExternalFunctions = <String, HT_External>{\n''';
    var functionMapping = '';
    var functionMappingFooter = '''};\n''';
    var functionDefineHeader = '''\nclass WidgetWrapper {\n''';
    var functionDefine = '';
    var functionDefineFooter = '''}''';

    var htExternalFunctions = '';
    visitor.exported.forEach((key, value) {
      //先写
      print('exported : $key');

      functionMapping += '\t\'' +
          value.ctorName +
          '\': WidgetWrapper.build' +
          value.ctorName +
          ',\n';
      functionDefine += '\tstatic ' +
          value.className +
          ' build' +
          value.ctorName +
          '(instance, args, {namedArgs}) {\n';
      var args = '';
      var list = [];
      if (value.positionArguments.isNotEmpty) {
        list.add(value.positionArguments.join(', '));
      }
      if (value.namedInitializers.isNotEmpty) {
        list.add('{' + value.namedInitializers.join(', ') + '}');
      }
      args = list.join(', ');
      var usage = '';
      list.clear();
      if (value.positionArguments.isNotEmpty) {
        list.add(value.positionArguments.join(', '));
      }
      if (value.namedArguments.isNotEmpty) {
        list.add(value.namedArguments.map((e) {
          var listWidget = listWidgetFields.contains('$e');
          return "$e: ${listWidget ? 'List<Widget>.from($e)' : '$e'}";
        }).join(', '));
      }
      usage = list.join(', ');
      var external = '';
      list.clear();
      if (value.positionArguments.isNotEmpty) {
        list.add(value.positionArguments.join(', '));
      }
      if (value.namedArguments.isNotEmpty) {
        list.add('{' + value.namedArguments.join(', ') + '}');
      }
      external = list.join(', ');
      htExternalFunctions += 'external fun ${value.ctorName}($external)\n';
      functionDefine += '\t\t' +
          value.className +
          ' ctor(' +
          args +
          ') => ' +
          value.className +
          '(' +
          usage +
          ');\n';

      functionDefine +=
          '\t\treturn Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));\n\t}\n';
    });

    var outputContent = header +
        functionMappingHeader +
        functionMapping +
        functionMappingFooter +
        functionDefineHeader +
        functionDefine +
        functionDefineFooter;
    print('output:\n$outputContent');

    print('ht output:\n$htExternalFunctions');

    void printSuperClass() {
      visitor.classMap.forEach((key, value) {
        if (value.superclass == null && value.subclasses.isNotEmpty) {
          //这是顶部class
          void printTree(ExtendClass cls, int depth) {
            var o = '';
            for (var i = 0; i < depth; ++i) {
              o += '\t';
            }
            print(o + cls.className);
            for (var ecs in cls.subclasses) {
              printTree(ecs, depth + 1);
            }
          }

          printTree(value, 0);
        }
      });
    }
    // printSuperClass();
  });
}
