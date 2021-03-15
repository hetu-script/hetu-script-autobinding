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
        var idx = whitelist.indexWhere((element) {
          if (file.path.contains(element)) {
            print('whitelist: ${file.path} matched: $element');
            return true;
          }

          return false;
        });
        if (idx == -1) {
          return;
        }
      }
      if (ignores.isNotEmpty) {
        var idx = ignores.indexWhere((element) {
          var ignoreClass = element.contains(':');
          if (!ignoreClass) {
            if (file.path.contains(element)) {
              print('ignored: ${file.path} matched: $element');
              return true;
            }
          }

          return false;
        });
        if (idx != -1) {
          return;
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

Future<List<FileDefine>> parseDartFiles(
    String? jsonPath, List<String> ignores) async {
  //文件读取完后将父类赋值给子类
  var fileDefines = <FileDefine>[];
  for (var p in files) {
    var ignoredClasses = <String>{};
    ignores.forEach((element) {
      if (element.contains(':')) {
        var ignoredClassName = element.substring(element.indexOf(':') + 1);
        ignoredClasses.add(ignoredClassName);
      }
    });

    var define = await generateDefines(p.path, jsonPath);
    if (define != null) {
      fileDefines.add(define);
      define.classes.forEach((element) {
        if (ignoredClasses.contains(element.name)) {
          element.ignored = true;
        }
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

void parseBegin(List<String> userPaths, String? flutterPath, List<String> packagePaths, String exportPath,
    String scriptExportPath, List<String> ignores, List<String> whitelist,
    {String? jsonPath}) async {
  var allBindings = <BindingDefine>[];

  ///绑定用户自定义代码
  files.clear();
  for (var a in userPaths) {
    await dirContents(Directory(a), ignores, whitelist);
  }

  if (files.isEmpty) {
  } else {
    var fileDefines = await parseDartFiles(jsonPath, ignores);
    for (var p in fileDefines) {
      var b = await generateWrappers(p, exportPath, scriptExportPath,
          library: ExportType.UserDefine);
      allBindings.addAll(b);
    }
  }

  ///绑定包裹代码
  files.clear();
  for (var a in packagePaths) {
    await dirContents(Directory(a), ignores, whitelist);
  }

  if (files.isEmpty) {
  } else {
    var fileDefines = await parseDartFiles(jsonPath, ignores);
    for (var p in fileDefines) {
      var b = await generateWrappers(p, exportPath, scriptExportPath,
          library: ExportType.Package);
      allBindings.addAll(b);
    }
  }

  var user_api_import = [];
  var user_bindings = [];
  var ht_user_bindings = [];
  allBindings.forEach((element) {
    var importPath = element.filePath;
    var prefix = '';
    if (prefix != '') {
      importPath = '\'$importPath.g.dart\' as $prefix';
    } else {
      importPath = '\'$importPath.g.dart\'';
    }
    user_api_import.add({'import_file': importPath});
    element.externalVars.forEach((e) {
      user_bindings.add({
        'prefix': prefix == '' ? prefix : '$prefix.',
        'dart_class_name': e,
      });
    });
    var ht_file_relative_path = '${element.filePath}.ht';
    ht_user_bindings.add({
      'ht_file_relative_path': ht_file_relative_path,
    });
  });
  var userTemplateVars = {
    'user_api_import': user_api_import,
    'user_bindings': user_bindings,
    'ht_user_bindings': ht_user_bindings
  };
  renderTemplate('bin/template/ht_script_binding.mustache', userTemplateVars,
      '$exportPath/ht_script_binding.dart');

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

    var dartDefines = <FileDefine>[];
    if (files.isEmpty) {
      stdout.writeln('No file found');
    } else {
      dartDefines = await parseDartFiles(jsonPath, ignores);
    }

    ///绑定Flutter库
    files.clear();
    await dirContents(Directory(flutterSourceRoot), ignores, whitelist);

    var flutterDefines = <FileDefine>[];
    if (files.isEmpty) {
      stdout.writeln('No file found');
    } else {
      flutterDefines = await parseDartFiles(jsonPath, ignores);
    }

    allBindings.clear();
    for (var p in dartDefines) {
      var libName =
          path.split(path.relative(p.filePath, from: dartSourceRoot)).first;
      var b = await generateWrappers(p, exportPath, scriptExportPath,
          library: ExportType.DartLibrary, libName: libName);
      allBindings.addAll(b);
    }
    for (var p in flutterDefines) {
      var libName =
          path.split(path.relative(p.filePath, from: flutterSourceRoot)).first;
      var b = await generateWrappers(p, exportPath, scriptExportPath,
          library: ExportType.FlutterLibrary, libName: libName);
      allBindings.addAll(b);
    }

    //生成库自动绑定的接口文件
    var api_import = [];
    var lib_bindings = [];
    var ht_lib_bindings = [];
    allBindings.forEach((element) {
      var importPath = element.filePath;
      var prefix = '';
      if (prefix != '') {
        importPath = '\'$importPath.g.dart\' as $prefix';
      } else {
        importPath = '\'$importPath.g.dart\'';
      }
      api_import.add({'import_file': importPath});
      element.externalVars.forEach((e) {
        lib_bindings.add({
          'prefix': prefix == '' ? prefix : '$prefix.',
          'dart_class_name': e,
        });
      });
      var ht_file_relative_path = '${element.filePath}.ht';
      ht_lib_bindings.add({
        'ht_file_relative_path': ht_file_relative_path,
      });
    });
    var libTemplateVars = {
      'api_import': api_import,
      'bindings': lib_bindings,
      'ht_bindings': ht_lib_bindings
    };
    renderTemplate('bin/template/ht_library_script_binding.mustache',
        libTemplateVars, '$exportPath/ht_library_script_binding.dart');
  }

  //检查是否有缺失的执行文件（库绑定、自定义绑定）
  if (FileSystemEntity.typeSync('$exportPath/ht_script_binding.dart') == FileSystemEntityType.notFound) {

    var userTemplateVars = {
      'user_api_import': [],
      'user_bindings': [],
      'ht_user_bindings': []
    };
    renderTemplate('bin/template/ht_script_binding.mustache', userTemplateVars,
        '$exportPath/ht_script_binding.dart');
  }
  if (FileSystemEntity.typeSync('$exportPath/ht_library_script_binding.dart') == FileSystemEntityType.notFound) {

    var libTemplateVars = {
      'api_import': [],
      'bindings': [],
      'ht_bindings': []
    };
    renderTemplate('bin/template/ht_library_script_binding.mustache',
        libTemplateVars, '$exportPath/ht_library_script_binding.dart');
  }

  print('Job done.');
}

void main(args) {
  var parser = ArgParser();
  parser.addMultiOption('user-lib-paths', abbr: 'u', defaultsTo: [], valueHelp: 'path1, path2, ...', help: 'Will iterate over all the folders recursively.');
  parser.addMultiOption('package-lib-paths', abbr: 'p', defaultsTo: [], valueHelp: 'package1/lib, package2/lib, ...', help: 'Will iterate over all the package cache folders.');
  parser.addOption('flutter-lib-path', abbr: 'f', valueHelp: 'flutter-framework-path', help: 'Will iterate the Flutter/Dart framework recursively. The path should point to the Flutter root folder.');
  parser.addOption('output',
      abbr: 'o', defaultsTo: Directory.current.path.toString() + '/gen/dart', help: 'The output path for .dart code generation and .json intermediate files.');
  parser.addOption('script-output',
      abbr: 's', defaultsTo: Directory.current.path.toString() + '/gen/ht', help: 'The output path for .ht code generation.');
  parser.addFlag('json-export', abbr: 'j', defaultsTo: false, help: 'Whether to export the intermediate JSON files for diagnostics.');
  parser.addFlag('help', abbr: 'h', callback: (f) {
    if (f) {
      print(parser.usage);
    }
  });
  parser.addMultiOption('ignores',
      abbr: 'i',
      defaultsTo: [
        'ui/text.dart:TextStyle',
        'ui/text.dart:StrutStyle',
        'ui/platform_dispatcher.dart:ViewConfiguration',
      ],
      valueHelp:
          'ignored-file-name, ignored-file-name:ignored-class-name, ...',
  help: 'The files/classes from this list will be ignored during the code generation.');
  parser.addMultiOption('whitelist', abbr: 'w', valueHelp:
  'whitelist-file-name, whitelist-file-name2, ...', help: 'Only the files from the list will be parsed, working with \'ignores\' too.');
  var results = parser.parse(args);
  var userPaths = results['user-lib-paths'];

  var output = results['output'];
  var scriptOutput = results['script-output'];
  if (path.isRelative(output)) {
    output = path.absolute(output);
  }
  if (path.isRelative(scriptOutput)) {
    scriptOutput = path.absolute(scriptOutput);
  }
  var flutterPath = results['flutter-lib-path'];
  var packagePaths = results['package-lib-paths'];
  var jsonPath =
      results['json-export'] ? Directory.current.path.toString() + '/gen' : null;
  var ignores = results['ignores'];
  ignores.addAll([
    'core/annotations.dart',
    'core/object.dart',
    'core/errors.dart',
    'core/exceptions.dart',
    'core/expando.dart',
    'core/string.dart',
    'core/string.dart',
    'foundation/annotations.dart',
    'foundation/assertions.dart',
    'foundation/basic_types.dart',
  ]);
  var whitelist = results['whitelist'];
  if (results['help'] == true) {
    return;
  }
  print('Begin parsing...');
  Directory(output).create(recursive: true);
  parseBegin(userPaths, flutterPath, packagePaths, output, scriptOutput, ignores, whitelist,
      jsonPath: jsonPath);

}
