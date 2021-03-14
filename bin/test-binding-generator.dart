import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as path;

import 'binding-generator.dart';
import 'defines.dart';

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
          var idx = ignores.indexWhere((element) {
            if (file.path.contains(element)) {
              print('ignored: ${file.path} matched: $element');
              return true;
            }
            return false;
          });
          if (idx != -1) {
            return;
          }
        }
      }
      files.add(file);
    }
  },
      // should also register onError
      onDone: () => completer.complete(files));
  return completer.future;
}

var classDefineMap = <String, ClassDefine>{};
var super_childMap = <String, List<ClassDefine>>{};

Future<List<FileDefine>> parseDartFiles(String? jsonPath) async {
  //文件读取完后将父类赋值给子类
  var fileDefines = <FileDefine>[];
  for (var p in files) {
    var define = await generateDefines(p.path, jsonPath);
    if (define != null) {
      fileDefines.add(define);
      define.classes.forEach((element) {
        classDefineMap[element.name] = element;
        if (element.superClassName != null) {
          var superName = element.superClassName!;
          if (classDefineMap.containsKey(superName)) {
            element.superClass = classDefineMap[superName]!;
          } else {
            super_childMap[superName] ??= [];
            super_childMap[superName]!.add(element);
          }
        }
        if (super_childMap.containsKey(element.name)) {
          var children = super_childMap[element.name] as List<ClassDefine>;
          children.forEach((child) {
            child.superClass = element;
          });
          children.clear();
        }
      });
    }
  }
  return fileDefines;
}

void parseBegin(List<String> userPaths, String? flutterPath, String exportPath,
    List<String> ignores, List<String> whitelist,
    {String? jsonPath}) async {
  ///绑定用户自定义代码
  files.clear();
  for (var a in userPaths) {
    await dirContents(Directory(a), ignores, whitelist);
  }

  if (files.isEmpty) {
    stdout.writeln('No file found');
  } else {
    var fileDefines = await parseDartFiles(jsonPath);
    for (var p in fileDefines) {
      generateWrappers(p, exportPath, library: ExportType.UserDefine);
    }
  }

  files.clear();
  if (flutterPath != null) {
    var flutterSourceRoot = flutterPath + '/packages/flutter/lib/src/';

    ///绑定Dart库
    var dartSourceRoot = flutterPath + '/bin/cache/pkg/sky_engine/lib/';
    var dartLibs = [
      // 'collection',
      'ui',
      'math',
      'async',
      'convert',
      'io',
      // 'isolate',
      // 'typed_data',
      'core',
    ];
    files.clear();
    for (var lib in dartLibs) {
      var libPath = '$dartSourceRoot$lib/';
      await dirContents(Directory(libPath), ignores, whitelist);
    }

    var dartDefines = [];
    if (files.isEmpty) {
      stdout.writeln('No file found');
    } else {
      dartDefines = await parseDartFiles(jsonPath);
    }

    ///绑定Flutter库
    files.clear();
    await dirContents(Directory(flutterSourceRoot), ignores, whitelist);

    var flutterDefines = [];
    if (files.isEmpty) {
      stdout.writeln('No file found');
    } else {
      flutterDefines = await parseDartFiles(jsonPath);
    }

    for (var p in dartDefines) {
      var libName =
          path.split(path.relative(p.filePath, from: dartSourceRoot)).first;
      generateWrappers(p, exportPath,
          library: ExportType.DartLibrary, libName: libName);
    }
    for (var p in flutterDefines) {
      var libName =
          path.split(path.relative(p.filePath, from: flutterSourceRoot)).first;
      generateWrappers(p, exportPath,
          library: ExportType.FlutterLibrary, libName: libName);
    }
  }
}

void main(args) {
  var parser = ArgParser();
  parser.addMultiOption('user-lib-paths',
      abbr: 'u', defaultsTo: [Directory.current.path.toString()]);
  parser.addOption('flutter-lib-path', abbr: 'f');
  parser.addOption('output',
      abbr: 'o', defaultsTo: Directory.current.path.toString() + '/gen');
  parser.addFlag('jsonExport', abbr: 'j', defaultsTo: false);
  parser.addMultiOption('ignores',
      abbr: 'i', defaultsTo: []);
  parser.addMultiOption('whitelist', abbr: 'w');
  var results = parser.parse(args);
  var userPaths = results['user-lib-paths'];

  var output = results['output'];
  if (path.isRelative(output)) {
    output = path.absolute(output);
  }
  var flutterPath = results['flutter-lib-path'];
  var jsonPath =
      results['jsonExport'] ? Directory.current.path.toString() + '/gen' : null;
  var ignores = results['ignores'];
  var whitelist = results['whitelist'];

  Directory(output).create(recursive: true);
  parseBegin(userPaths, flutterPath, output, ignores, whitelist,
      jsonPath: jsonPath);
}
