import 'package:hetu_script/hetu_script.dart';
import 'ht_library_script_binding.dart';
import 'user-defined/root_asset_bundle.g.dart';
import 'user-defined/external_asset_bundle.g.dart';

class HetuScriptBinding extends HetuLibraryScriptBinding {
  @override
  void loadAutoBinding(HT_Interpreter interpreter) {
    super.loadAutoBinding(interpreter);
    var bindings = {
      'RootAssetBundle' : RootAssetBundleClassBinding(),
      'ScriptHelper' : ScriptHelperClassBinding(),
      'Ingredients' : IngredientsClassBinding(),
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