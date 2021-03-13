import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as path;

import 'binding-generator.dart';

var files = <FileSystemEntity>[];

Future<List<FileSystemEntity>> dirContents(Directory dir) {
  var completer = Completer<List<FileSystemEntity>>();
  var lister = dir.list(recursive: true);
  lister.listen((file) {
    if (file.statSync().type == FileSystemEntityType.file &&
        file.path.endsWith('.dart') &&
        !file.path.endsWith('.g.dart')) {
      files.add(file);
    }
  },
      // should also register onError
      onDone: () => completer.complete(files));
  return completer.future;
}

Future<File> writeContent(String content, String path) async {
  final file = File('$path');
  // print('writing file: $file');
  return file.writeAsString(content);
}

void parseBegin(List<String> paths, String exportPath) async {
  for (var a in paths) {
    await dirContents(Directory(a));
  }

  if (files.isEmpty) {
    stdout.writeln('No file found');
  } else {
    for (var p in files) {
      print('parsing: [file://${p.path}]');
      var astData = await generate(p.path);
      var dirName = path.basename(path.dirname(p.path));
      var outputPath = '$exportPath/json/$dirName/';
      await Directory(outputPath).create(recursive: true);
      var output =
          '$outputPath/${path.basenameWithoutExtension(p.path)}.json';
      var encoder = JsonEncoder.withIndent('  ');
      var content = encoder.convert(astData);
      await writeContent(content, output);
    }
  }
}

void main(List<String> arguments) {
  var parser = ArgParser();
  parser.addOption('output',
      abbr: 'o', defaultsTo: Directory.current.path.toString() + '/gen');
  parser.addOption('pass', abbr: 'p');
  var results = parser.parse(arguments);
  var output = results['output'];
  Directory(output).create();
  results.rest.forEach((element) {
    dirContents(Directory(element));
  });

  parseBegin(results.rest, output);
}
