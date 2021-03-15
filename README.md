# Dart Binding Code Generator for Hetu Script Language

## Introduction

A Dart binding code generator for [Hetu script language](https://github.com/hythl0day/hetu_script). 
You can generate glue codes from Flutter/Dart library, your codes, or any packages. 
Then you can use them in the Hetu script.

## Usage

### Generate the binding codes:
1. Flutter/Dart Framework (-f)
   
   *Should only point to the root of the Flutter repository folder (containing 'packages' folder)*
   
2. Third-party packages  (-p)
   
   *Could point to any packages' lib folder or the root of the repository folder.*
   
   *You can find the packages from ~/.pub-cache/hosted/pub.dartlang.org/ or from a repository folder.*
   
3. Your own codes  (-u)

   *Point to the folder that containing your codes. You should also add a ```@HT_Binding()``` annotation to your custom class/enum for binding:*
```dart
@HT_Binding()
class CustomClass {
  var m;
}

@HT_Binding()
enum CustomEnum { 
  a,
  b,
}

```
More options could be found by flagging ```-h```:
```shell
./bin/ht-binding-generator -h

-u, --user-lib-paths=<path1, path2, ...>                                        
  Will iterate over all the folders recursively.

-p, --package-lib-paths=<package1/lib, package2/lib, ...>                       
  Will iterate over all the package cache folders.

-f, --flutter-lib-path=<flutter-framework-path>                                 
  Will iterate the Flutter/Dart framework recursively. The path should point to the Flutter root folder.

-o, --output                                                                    
  The output path for .dart code generation and .json intermediate files.
  
-s, --script-output                                                             
  The output path for .ht code generation.
                                                                           
-j, --[no-]json-export                                                          
  Whether to export the intermediate JSON files for diagnostics.

-h, --[no-]help       
                                                        
-i, --ignores=<ignored-file-name, ignored-file-name:ignored-class-name, ...>    
  The files/classes from this list will be ignored during the code generation.
  
-w, --whitelist=<whitelist-file-name, whitelist-file-name2, ...>                
  Only the files from the list will be parsed, working with 'ignores' too.
```

### Initialize the binding:

call ```loadAutoBinding``` and ```loadAutoBindingScripts``` on a ```HetuScriptBinding()``` will initialize all definitions for Hetu script usage.
 

```dart
  void initBinding() async {
    var hetu = HT_Interpreter(readFileMethod: (path) {
      return rootBundle.loadString(path);
    });
    var binding = HetuScriptBinding();
    binding.loadAutoBinding(hetu);
    binding.loadAutoBindingScripts(hetu, 'assets/path').then((value) {
      print('initialization done.');
    });
  }
```

### Manual binding:

You can also add manual-binding codes by subclassing ```HetuScriptBinding```class, and use ```ManualBinding``` instead of ```HetuScriptBinding```.

The auto-binding codes will be loaded by calling the ```super```. 

```dart

class ManualBinding extends HetuScriptBinding {
  @override
  void loadAutoBinding(HT_Interpreter interpreter) {
    super.loadAutoBinding(interpreter);
    var bindings = {
      'RootAssetBundle' : RootAssetBundleClassBinding(),
      'ScriptHelper' : ScriptHelperClassBinding(),
      'ExternalAssetBundle' : ExternalAssetBundleClassBinding(),
    };
    bindings.forEach((key, value) {
      interpreter.bindExternalNamespace(key, value);
    });
  }

  @override
  Future loadAutoBindingScripts(HT_Interpreter interpreter, String path) {
    var future = super.loadAutoBindingScripts(interpreter, path);
    var futures = <Future>[];
    futures.add(future);
    futures.add(interpreter.evalf('$path/user-defined/root_asset_bundle.ht'));
    futures.add(interpreter.evalf('$path/user-defined/external_asset_bundle.ht'));
    return Future.wait(futures);
  }
}
```