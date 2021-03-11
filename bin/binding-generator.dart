import 'dart:convert';
import 'dart:io';
import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:args/args.dart';

import 'dart-analyzer.dart';


class DemoAstVisitor extends GeneralizingAstVisitor<dynamic> {
  @override
  dynamic visitNode(AstNode node) {
    //输出遍历AST Node 节点内容
    stdout.writeln('${node.runtimeType}<---->${node.toSource()}');
    return super.visitNode(node);
  }
}

//生成AST
Future<String?> generate(String path) async {
  if (path.isEmpty) {
    stdout.writeln('No file found');
  } else {
    await _handleError(path);
    if (exitCode == 2) {
      try {
        var parseResult =
            parseFile(path: path, featureSet: FeatureSet.fromEnableFlags([]), throwIfDiagnostics: false);
        var compilationUnit = parseResult.unit;
        //遍历AST
        var astData = compilationUnit.accept(MyAstVisitor());
        // print(astData);
        var encoder = JsonEncoder.withIndent('  ');
        var content = encoder.convert(astData);
        return content;
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
