import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as path;

import 'binding-generator.dart';

var files = <FileSystemEntity>[];

Future<List<FileSystemEntity>> dirContents(
    Directory dir, List<String> ignores, List<String> whitelist) {
  var completer = Completer<List<FileSystemEntity>>();
  var lister = dir.list(recursive: true);
  lister.listen((file) {
    var fileName = path.basename(file.path);
    if (file.statSync().type == FileSystemEntityType.file &&
        !fileName.startsWith('_') &&
        file.path.endsWith('.dart') &&
        !file.path.endsWith('.g.dart')) {
      if (whitelist.isNotEmpty) {
        var match = whitelist.firstWhere((element) {
          if (file.path.allMatches(element).isNotEmpty) {
            return true;
          }
          return false;
        }, orElse: () => '');
        if (match == '') {
          //no match
          return;
        }
      } else {
        if (ignores.isNotEmpty) {
          ignores.forEach((element) {
            if (file.path.allMatches(element).isNotEmpty) {
              return;
            }
          });
        }
      }
      files.add(file);
    }
  },
      // should also register onError
      onDone: () => completer.complete(files));
  return completer.future;
}

void parseBegin(List<String> userPaths, String? flutterPath, String exportPath,
    List<String> ignores, List<String> whitelist) async {
  for (var a in userPaths) {
    await dirContents(Directory(a), ignores, whitelist);
  }

  if (files.isEmpty) {
    stdout.writeln('No file found');
  } else {
    for (var p in files) {
      generateWrappers(p.path, exportPath, library: false);
    }
  }

  files.clear();
  if (flutterPath != null) {
    var flutterSourceRoot = flutterPath + '/packages/flutter/lib/src/';

    await dirContents(Directory(flutterSourceRoot), ignores, whitelist);

    if (files.isEmpty) {
      stdout.writeln('No file found');
    } else {
      for (var p in files) {
        var libName =
            path.split(path.relative(p.path, from: flutterSourceRoot)).first;
        generateWrappers(p.path, exportPath, library: true, libName: libName);
      }
    }

    var dartSourceRoot = flutterPath + '/bin/cache/dart-sdk/lib/';

    var dartLibs = [
      'collection',
      'ui',
      'math',
      'async',
      'convert',
      'developer',
      'ffi',
      'io',
      'isolate',
      'typed_data',
      'core',
    ];
  }
}

void main(args) {
  var parser = ArgParser();
  parser.addMultiOption('user-lib-paths',
      abbr: 'u', defaultsTo: [Directory.current.path.toString()]);
  parser.addOption('flutter-lib-path', abbr: 'f');
  parser.addOption('output',
      abbr: 'o', defaultsTo: Directory.current.path.toString() + '/gen');
  parser.addMultiOption('ignores', abbr: 'i', defaultsTo: []);
  parser.addMultiOption('whitelist', abbr: 'w');
  var results = parser.parse(args);
  var userPaths = results['user-lib-paths'];

  var output = results['output'];
  if (path.isRelative(output)) {
    output = path.absolute(output);
  }
  var flutterPath = results['flutter-lib-path'];

  var ignores = results['ignores'];
  var whitelist = results['whitelist'];
  print(userPaths);
  print(flutterPath);
  print(output);
  print(ignores);
  print(whitelist);
  Directory(output).create(recursive: true);
  parseBegin(userPaths, flutterPath, output, ignores, whitelist);
}
