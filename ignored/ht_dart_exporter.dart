// import 'dart:async';
// import 'dart:io';
//
// import 'package:analyzer/dart/analysis/utilities.dart';
//
// import '../bin/parser.dart';
//
// String path = '/Users/li9s/github/flutter/packages/flutter/lib/src/';
// String dartui = '/Users/li9s/github/flutter/bin/cache/pkg/sky_engine/lib/ui';
// String output = './gen';
// List<String> filePaths = [];
//
// var files = <FileSystemEntity>[];
//
// Future<List<FileSystemEntity>> dirContents(Directory dir) {
//   var completer = Completer<List<FileSystemEntity>>();
//   var lister = dir.list(recursive: true);
//   lister.listen((file) {
//     if (file
//         .statSync()
//         .type == FileSystemEntityType.file &&
//         file.path.endsWith('.dart')) {
//       files.add(file);
//     }
//   },
//       // should also register onError
//       onDone: () => completer.complete(files));
//   return completer.future;
// }
//
// void parseBegin(String outputPath) async {
//   await dirContents(Directory(path));
//   await dirContents(Directory(dartui));
//
//   var visitor = MyVisitor();
//   for (var v in files) {
//     var src = File(v.path).readAsStringSync();
//
//     var result = parseString(content: src, throwIfDiagnostics: false);
//
//     var unit = result.unit;
//
//     unit.accept(visitor)
//
//     unit.visitChildren(visitor);
//
//     visitor.turnOver(v.path);
//     //处理完一个了
//   }
//
//   //ready to export codes
//   var headers = [
//     "import 'dart:math' as math;",
//     "import 'dart:ui';",
//     "import 'package:flutter/gestures.dart';",
//     "import 'package:flutter/material.dart';",
//     "import 'package:flutter/cupertino.dart';",
//     "import 'package:flutter/rendering.dart';",
//     "import 'package:flutter/services.dart';",
//     "import 'package:flutter/foundation.dart';",
//     "import 'package:flutter/semantics.dart';",
//     "import 'package:flutter/physics.dart';",
//     "import 'package:flutter/scheduler.dart';",
//     "import 'package:hetu_script/hetu_script.dart';",
//     "import 'package:hetu_script_binding/hetu_script_binding.dart';"
//   ];
//   var header = headers.join('\n') + '\n\n';
//   var constDefines = [];
//   var methodDefines = [];
//   var privateClassDefines = [];
//
//   var functionMappingHeader =
//   '''var wrapperExternalFunctions = <String, HT_External>{\n''';
//   var functionMapping = '';
//   var functionMappingFooter = '''};\n''';
//   var functionDefineHeader = '''\nclass WidgetWrapper {\n''';
//   var functionDefine = '';
//   var functionDefineFooter = '''}\n\n''';
//
//   var htClassDefineHeaders = [
//     'class HT {',
//     '\tstatic late final Interpreter _interpreter;',
//     '\tstatic Interpreter get interpreter => _interpreter;\n',
//   ];
//   var htClassDefineHeader = htClassDefineHeaders.join('\n');
//   var htClassDefineFooter = '}';
//
//
//   var htExternalFunctions = '';
//   visitor.exported.forEach((key, value) {
//     //先写
//     // print('exported : $key');
//     var extClass = visitor.classMap[value.className];
//
//     functionMapping += '\t\'' +
//         value.ctorName +
//         '\': WidgetWrapper.build' +
//         value.ctorName +
//         ',\n';
//     functionDefine += '\tstatic ' +
//         value.className +
//         ' build' +
//         value.ctorName +
//         '(instance, args, {namedArgs}) {\n';
//     var args = '';
//     var list = [];
//     if (value.positionArguments.isNotEmpty) {
//       list.add(value.positionArguments.join(', '));
//     }
//     if (value.namedInitializers.isNotEmpty) {
//       list.add('{' + value.namedInitializers.join(', ') + '}');
//     }
//     args = list.join(', ');
//     var usage = '';
//     list.clear();
//     if (value.positionArguments.isNotEmpty) {
//       list.add(value.positionArguments.join(', '));
//     }
//     if (value.namedArguments.isNotEmpty) {
//       list.add(value.namedArguments.map((e) {
//         var type = extClass.varTypes[e];
//         if (type == null) {
//           print('class[${extClass.className} : ${value.ctorName}]: $e');
//         } else {
//           if (type.startsWith('List<')) {
//             //列表类型做转换
//             return '$e: ${type}.from($e)';
//           }
//         }
//
//         return "$e: ${'$e'}";
//       }).join(', '));
//     }
//     usage = list.join(', ');
//     var external = '';
//     list.clear();
//     if (value.positionArguments.isNotEmpty) {
//       list.add(value.positionArguments.join(', '));
//     }
//     if (value.namedArguments.isNotEmpty) {
//       list.add('{' + value.namedArguments.join(', ') + '}');
//     }
//     external = list.join(', ');
//     htExternalFunctions += 'external fun ${value.ctorName}($external)\n';
//     functionDefine += '\t\t' +
//         value.className +
//         ' ctor(' +
//         args +
//         ') => ' +
//         value.ctorName.replaceFirst('_', '.') +
//         '(' +
//         usage +
//         ');\n';
//
//     functionDefine +=
//     '\t\treturn Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));\n\t}\n';
//   });
//
//   visitor.constVars.forEach((element) {
//     // constDefines.add('const ${visitor.constVarMap[element].varExpr};');
//     constDefines.add('const $element = null;');
//   });
//   visitor.methods.forEach((element) {
//     // methodDefines.add('${visitor.methodMap[element]}'.replaceFirst('static ', ''));
//     methodDefines.add('const $element = null;');
//   });
//   visitor.privateClasses.forEach((element) {
//     // privateClassDefines.add('${visitor.privateClassMap[element]}\n');
//     privateClassDefines.add('const $element = null;');
//   });
//   // var constDefine = constDefines.join('\n') + '\n\n';
//   // var methodDefine = methodDefines.join('\n') + '\n\n';
//   // var privateClassDefine = privateClassDefines.join('\n') + '\n\n';
//
//
//   // print('output:\n$outputContent');
//   //
//   // print('ht output:\n$htExternalFunctions');
//   var treeVisited = <ExtendClass>{};
//   void printTree(ExtendClass cls, int depth, {bool silent = false}) {
//     if (cls == null) {
//       return;
//     }
//     var o = '';
//     for (var i = 0; i < depth; ++i) {
//       o += '\t';
//     }
//     if (!silent) print(o + cls.className);
//     for (var ecs in cls.subclasses) {
//       treeVisited.add(ecs);
//       printTree(ecs, depth + 1, silent: silent);
//     }
//   }
//
//   void printSuperClass() {
//     visitor.classMap.forEach((key, value) {
//       if (value.superclass == null && value.subclasses.isNotEmpty) {
//         //这是顶部class
//         printTree(value, 0, silent: true);
//       }
//     });
//   }
//   // printSuperClass();
//
//   var enumOutputContent = '';
//   var htEnumOutputContent = '';
//
//   var enumClassHeaders = [
//     '\tstatic void _loadEnumValues() {',
//     '\t\tvar enumClass;\n',
//   ];
//   var enumClassHeader = enumClassHeaders.join('\n');
//   var enumClassDefs = [];
//   var enumClassFooter = '\t}\n';
//   var initBindingHeaders = [
//     '\tstatic Future initBinding() async {',
//     '\t\t_interpreter = await HetuScriptBinding.init();\n',
//   ];
//   var enumDefinesHeader = '\t\tString _enumDefinitions = """\n';
//   var enumDefinesFooter = '\t\t""";\n';
//   var widgetDefinesHeader = '\t\tString _widgetDefinitions = """\n';
//   var widgetDefinesFooter = '\t\t""";\n';
//   var initBindingFooters = [
//     '\t\t_interpreter.eval(_enumDefinitions);',
//     '\t\t_interpreter.eval(_widgetDefinitions);\n',
//
//     '\t\t_loadEnumValues();',
//     '\t\t_interpreter.loadExternalFunctions(wrapperExternalFunctions);',
//     '\t}\n',
//   ];
//
//
//   var htEnumClassDefs = [];
//
//   void addEnumKeyValues(String key, List<String> values) {
//     enumClassDefs
//         .add("\t\tenumClass = interpreter.fetchGlobal('${key}') as HT_Class;");
//     values.forEach((element) {
//       enumClassDefs.add(
//           "\t\tenumClass.assign('${element}', ${key}.${element}, null, null, interpreter);");
//     });
//
//     htEnumClassDefs.add('class $key {');
//     values.forEach((element) {
//       htEnumClassDefs.add('\tstatic var $element');
//     });
//     htEnumClassDefs.add('}\n');
//   }
//
//   for (var en in visitor.enumLists) {
//     addEnumKeyValues(en.enumName, en.enumValues);
//   }
//
//   for (var va in visitor.varsLists) {
//     addEnumKeyValues(va.varKey, va.varValues);
//   }
//
//   var outputContent = header +
//       functionMappingHeader +
//       functionMapping +
//       functionMappingFooter +
//       functionDefineHeader +
//       functionDefine +
//       functionDefineFooter +
//       htClassDefineHeader +
//       enumClassHeader +
//       enumClassDefs.join('\n') +
//       enumClassFooter +
//       initBindingHeaders.join('\n') +
//       enumDefinesHeader +
//       htEnumClassDefs.join('\n') +
//       enumDefinesFooter +
//       widgetDefinesHeader +
//       htExternalFunctions +
//       widgetDefinesFooter +
//       initBindingFooters.join('\n') +
//       htClassDefineFooter;
//
//   var notAdded = List.from(visitor.usedIdentifiers);
//   notAdded.removeWhere((element) => exportedClasses.contains(element));
//   // print('useful arg types: \n${notAdded.map((e) => "'$e'").join(',\n')}');
//
//   for (var extendClassName in extendsSet) {
//     var cc = visitor.classMap[extendClassName];
//     printTree(cc, 0, silent: true);
//   }
//   visitor.usedIdentifiers.forEach((usefulClass) {
//     if (visitor.abstractClass.contains(usefulClass)) {
//       var cc = visitor.classMap[usefulClass];
//       printTree(cc, 1, silent: true);
//     }
//   });
//
//   treeVisited
//       .removeWhere((element) => exportedClasses.contains(element.className));
//   if (treeVisited.isNotEmpty) {
//     print('SHOULD ADDED CLASSES BASED ON ABSTRACT CLASS: ');
//     print(treeVisited.map((e) => "\t\t'${e.className}',").join('\n'));
//
//     exportedClasses.addAll(treeVisited.map((e) => e.className).toList());
//
//     print(
//         'COMBINED EXPORTED CLASSES & ENUMS: \n${exportedClasses.map((
//             e) => "\t\t'$e'").join(',\n')}');
//   }
//
//   // print('path: ${Directory.current}');
//   var defaultOutputPath = Directory.current.path.toString() + '/gen';
//
//   void output(path) async {
//     await writeContent(outputContent, path + '/ht_script_binding.dart');
//   }
//
//   output(outputPath ?? defaultOutputPath);
// }
//
// Future<File> writeContent(String content, String path) async {
//   final file = File('$path');
//   return file.writeAsString(content);
// }
//
// void main(List<String> arguments) {
//   parseBegin(arguments.isEmpty ? null : arguments[0]);
// }
