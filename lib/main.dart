import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as path;

import 'binding-generator.dart';
import 'defines.dart';

var version = '1.0.12';

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
      // if (ignores.isNotEmpty) {
      //   var idx = ignores.indexWhere((element) {
      //     var ignoreClass = element.contains(':');
      //     if (!ignoreClass) {
      //       if (file.path.contains(element)) {
      //         print('ignored: ${file.path} matched: $element');
      //         return true;
      //       }
      //     }
      //
      //     return false;
      //   });
      //   if (idx != -1) {
      //     return;
      //   }
      // }
      files.add(file);
    }
  },
      // should also register onError
      onDone: () => completer.complete(files));
  return completer.future;
}

var classDefineMap = <String, ClassDefine>{};
var super_childMap = <String, List<ClassDefine>>{};
var functionTypedefMap = <String, FunctionTypeDefine>{};
var extensionMap = <String, List<ExtensionDefine>>{};
var libraryFileMap = <String, FileDefine>{};
var mixinMap = <String, MixinDefine>{};

Future<List<FileDefine>> parseDartFiles(
    String? jsonPath, List<String> ignores) async {
  //文件读取完后将父类赋值给子类
  var fileDefines = <FileDefine>[];
  for (var p in files) {
    var ignoredClasses = <String>{};
    ignores.forEach((element) {
      if (element.contains(':')) {
        var index = element.indexOf(':');
        var ignoredClassName = element.substring(index + 1);
        var ignoredFileName = element.substring(0, index);
        if (p.path.contains(ignoredFileName)) {
          ignoredClasses.add(ignoredClassName);
        }
      } else {
        if (p.path.contains(element)) {
          ignoredClasses.add('-all-');
        }
      }
    });

    var define = await generateDefines(p.path, jsonPath);
    if (define != null) {
      fileDefines.add(define);
      if (define.library != null) {
        libraryFileMap[define.library!] = define;
      }
      define.functionTypedefs.forEach((element) {
        functionTypedefMap[element.name] = element;
      });

      define.extensions.forEach((element) {
        extensionMap[element.superName] ??= [];
        extensionMap[element.superName]!.add(element);
      });

      define.mixins.forEach((element) {
        if (ignoredClasses.contains(element.name) ||
            ignoredClasses.contains('-all-')) {
          element.ignored = true;
          print('ignored: ${p.path} matched mixin: ${element.name}');
          return;
        }
        mixinMap[element.name] = element;
      });

      var allClasses = <ClassDefine>[];
      allClasses.addAll(define.classes);
      allClasses.addAll(define.privateClasses);
      allClasses.forEach((element) {
        if (ignoredClasses.contains(element.name) ||
            ignoredClasses.contains('-all-')) {
          element.ignored = true;
          print('ignored: ${p.path} matched class: ${element.name}');
          return;
        }
        if (classDefineMap.containsKey(element.name)) {
          print(
              'WARNING: [${element.name}] Same Class Name Found!\n\tConflict: file://${classDefineMap[element.name]!.file.filePath}');
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

var customImportMap = <String, String>{};

void parseBegin(
    List<String> userPaths,
    String? flutterPath,
    List<String> packagePaths,
    String exportPath,
    String scriptExportPath,
    List<String> ignores,
    List<String> whitelist,
    List<String> generics,
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
          library: ExportType.UserDefine, generics: generics);
      allBindings.addAll(b);
      customImportMap[p.filePath] = '';
    }
  }

  ///绑定包裹代码
  for (var a in packagePaths) {
    files.clear();
    await dirContents(Directory(a), ignores, whitelist);

    if (files.isNotEmpty) {
      var fileEntries = [];
      var packageName = path.basenameWithoutExtension(a);
      if (packageName == 'lib') {
        //上一级
        packageName = path.basenameWithoutExtension(path.dirname(a));
      }
      if (packageName.contains('-')) {
        packageName = packageName.substring(0, packageName.indexOf('-'));
      }
      print('parsing package: [$packageName]');

      var fileDefines = await parseDartFiles(jsonPath, ignores);
      for (var p in fileDefines) {
        var b = await generateWrappers(p, exportPath, scriptExportPath,
            library: ExportType.Package,
            libName: packageName,
            relPath: a,
            generics: generics);
        var relPath = path.relative(p.filePath, from: a);
        var seperator = Platform.isWindows ? '\\' : '/';
        var dirToFileName = path.dirname(relPath).replaceAll(seperator, '-');

        customImportMap[p.filePath] = 'package:$packageName/$packageName.dart';
        if (b.isNotEmpty) {
          allBindings.addAll(b);
          fileEntries.add({
            'import_file_name':
                'package://$packageName-$dirToFileName-${path.basenameWithoutExtension(relPath)}.ht'
          });
        }
      }

      var templateVars = {'import_files': fileEntries};

      renderTemplate('template/import_entry.mustache', templateVars,
          '$scriptExportPath/packages/$packageName.ht');
    }
  }

  var user_api_import = [];
  var user_bindings = [];
  var ht_user_bindings = [];
  var function_defs = [];
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
    var ht_file_relative_path = '${element.htFilePath}.ht';
    ht_user_bindings.add({
      'ht_file_relative_path': ht_file_relative_path,
    });
    function_defs.addAll(element.funcTypeDefs);
  });
  var userTemplateVars = {
    'user_api_import': user_api_import,
    'user_bindings': user_bindings,
    'ht_user_bindings': ht_user_bindings,
    'function_defs': function_defs,
  };
  renderTemplate('template/ht_script_binding.mustache', userTemplateVars,
      '$exportPath/ht_script_binding.dart');

  if (flutterPath != null) {
    if (flutterPath.endsWith('/')) {
      flutterPath = flutterPath.substring(0, flutterPath.length - 1);
    }
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
    var packages = <String, List>{};
    for (var p in dartDefines) {
      var libName =
          path.split(path.relative(p.filePath, from: dartSourceRoot)).first;
      packages[libName] ??= [];
      var fileEntries = packages[libName];

      var b = await generateWrappers(p, exportPath, scriptExportPath,
          library: ExportType.DartLibrary,
          libName: libName,
          generics: generics);

      if (b.isNotEmpty) {
        allBindings.addAll(b);
        fileEntries?.add({
          'import_file_name':
              'dart://$libName/${path.basenameWithoutExtension(p.filePath)}.ht'
        });
      }
    }
    packages.forEach((key, value) {
      if (value.isNotEmpty) {
        var templateVars = {'import_files': value};
        renderTemplate('template/import_entry.mustache', templateVars,
            '$scriptExportPath/dart/$key.ht');
      }
    });
    packages.clear();
    for (var p in flutterDefines) {
      var libName =
          path.split(path.relative(p.filePath, from: flutterSourceRoot)).first;
      packages[libName] ??= [];
      var fileEntries = packages[libName];

      var b = await generateWrappers(p, exportPath, scriptExportPath,
          library: ExportType.FlutterLibrary,
          libName: libName,
          generics: generics);

      if (b.isNotEmpty) {
        allBindings.addAll(b);
        fileEntries?.add({
          'import_file_name':
              'flutter://$libName/${path.basenameWithoutExtension(p.filePath)}.ht'
        });
      }
    }
    packages.forEach((key, value) {
      if (value.isNotEmpty) {
        var templateVars = {'import_files': value};
        renderTemplate('template/import_entry.mustache', templateVars,
            '$scriptExportPath/flutter/$key.ht');
      }
    });

    //生成库自动绑定的接口文件
    var api_import = [];
    var lib_bindings = [];
    var ht_lib_bindings = [];
    var function_defs = [];
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
      var ht_file_relative_path = '${element.htFilePath}.ht';
      ht_lib_bindings.add({
        'ht_file_relative_path': ht_file_relative_path,
      });

      function_defs.addAll(element.funcTypeDefs);
    });
    var libTemplateVars = {
      'api_import': api_import,
      'bindings': lib_bindings,
      'ht_bindings': ht_lib_bindings,
      'function_defs': function_defs,
    };
    renderTemplate('template/ht_library_script_binding.mustache',
        libTemplateVars, '$exportPath/ht_library_script_binding.dart');
  }

  //检查是否有缺失的执行文件（库绑定、自定义绑定）
  if (await FileSystemEntity.type('$exportPath/ht_script_binding.dart') ==
      FileSystemEntityType.notFound) {
    var userTemplateVars = {
      'user_api_import': [],
      'user_bindings': [],
      'ht_user_bindings': []
    };
    renderTemplate('template/ht_script_binding.mustache', userTemplateVars,
        '$exportPath/ht_script_binding.dart');
  }
  if (await FileSystemEntity.type(
          '$exportPath/ht_library_script_binding.dart') ==
      FileSystemEntityType.notFound) {
    var libTemplateVars = {'api_import': [], 'bindings': [], 'ht_bindings': []};
    renderTemplate('template/ht_library_script_binding.mustache',
        libTemplateVars, '$exportPath/ht_library_script_binding.dart');
  }

  print('Job done.');
}

void main(args) {
  var parser = ArgParser();
  parser.addFlag('version', abbr: 'v', help: 'Show executable\'s version.',
      callback: (flag) async {
    if (flag) {
      print('Hetu Binding Generator: Version $version');
    }
  }, negatable: false);
  parser.addMultiOption('user-lib-paths',
      abbr: 'u',
      defaultsTo: [],
      valueHelp: 'path1, path2, ...',
      help: 'Will iterate over all the folders recursively.');
  parser.addMultiOption('package-lib-paths',
      abbr: 'p',
      defaultsTo: [],
      valueHelp: 'package1/lib, package2/lib, ...',
      help: 'Will iterate over all the package cache folders.');
  parser.addOption('flutter-lib-path',
      abbr: 'f',
      valueHelp: 'flutter-framework-path',
      help:
          'Will iterate the Flutter/Dart framework recursively. The path should point to the Flutter root folder.');
  parser.addOption('output',
      abbr: 'o',
      defaultsTo: Directory.current.path.toString() + '/gen/dart',
      help:
          'The output path for .dart code generation and .json intermediate files.');
  parser.addOption('script-output',
      abbr: 's',
      defaultsTo: Directory.current.path.toString() + '/gen/ht',
      help: 'The output path for .ht code generation.');
  parser.addOption('json-export',
      abbr: 'j',
      defaultsTo: null,
      help: 'Whether to export the intermediate JSON files for diagnostics.');
  parser.addMultiOption('generics',
      abbr: 'g',
      defaultsTo: [],
      help:
          'Specify generic types for classes. Only specified generic types are generated. Use "Class:GenericType" pattern with comma separated.');
  parser.addFlag('help', abbr: 'h', negatable: false, callback: (f) {
    if (f) {
      print(parser.usage);
    }
  }, help: 'Show this help.');
  parser.addMultiOption('ignores',
      abbr: 'i',
      defaultsTo: [],
      valueHelp: 'ignored-file-name, ignored-file-name:ignored-class-name, ...',
      help:
          "The files/classes from this list will be ignored during the code generation. If only file name is provided, all classes from the file won't be exported. All function typedefs will be exported even the file is ignored.");
  parser.addMultiOption('whitelist',
      abbr: 'w',
      valueHelp: 'whitelist-file-name, whitelist-file-name2, ...',
      help:
          'Only the files from the list will be parsed, working with \'ignores\' too.');
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
  var jsonPath = results['json-export'];
  if (jsonPath != null) {
    if (path.isRelative(jsonPath)) {
      jsonPath = path.absolute(jsonPath);
    }
  }
  // print('json: $jsonPath');
  var defaultIgnores = [
    'core/annotations.dart',
    'core/object.dart',
    'core/errors.dart',
    'core/exceptions.dart',
    'core/expando.dart',
    'core/string.dart',
    'core/bool.dart',
    'core/num.dart',
    'convert/codec.dart',
    'foundation/annotations.dart',
    'foundation/assertions.dart',
    'foundation/basic_types.dart',
    'material/date_picker_deprecated.dart',
    'rendering/object.dart',
    'widgets/framework.dart',
    'ui/painting.dart:Codec',
    'ui/painting.dart:Image',
    'ui/painting.dart:Gradient',
    'painting/image_provider.dart:AssetBundleImageProvider',
    'widgets/icon_data.dart:IconData',
    'ui/text.dart:TextStyle',
    'ui/text.dart:StrutStyle',
    'ui/platform_dispatcher.dart:ViewConfiguration',
    'foundation/diagnostics.dart',
  ];
  if (Platform.isWindows) {
    //Windows改为反斜杠
    var tmp = <String>[];
    defaultIgnores.forEach((element) {
      tmp.add(element.replaceAll('/', '\\'));
    });
    defaultIgnores = tmp;
  }
  var ignores = results['ignores'];
  ignores.addAll(defaultIgnores);

  var whitelist = results['whitelist'];
  if (results['help'] == true || results['version'] == true) {
    return;
  }

  var generics = results['generics'] ?? <String>[];

  print('Begin parsing...');
  Directory(output).create(recursive: true);
  parseBegin(userPaths, flutterPath, packagePaths, output, scriptOutput,
      ignores, whitelist, generics,
      jsonPath: jsonPath);
}
