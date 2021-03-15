import 'package:hetu_script/hetu_script.dart';
import '../../src/root_asset_bundle.dart';
import 'package:flutter/services.dart'as services;

class IngredientsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Apple':
        return Ingredients.Apple;
      case 'Banana':
        return Ingredients.Banana;
      case 'Cinnamon':
        return Ingredients.Cinnamon;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RootAssetBundleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RootAssetBundle':
        return () => RootAssetBundleObjectBinding(RootAssetBundle());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RootAssetBundleObjectBinding extends HT_ExternObject<RootAssetBundle> {
  RootAssetBundleObjectBinding(RootAssetBundle value) : super(value);

  @override
  final typeid = HT_TypeId('RootAssetBundle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'load':
        return externObject.load;
      case 'loadString':
        return externObject.loadString;
      case 'loadStructuredData':
        return externObject.loadStructuredData;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScriptHelperClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'futureHandler':
        return (callback, future) => ScriptHelper.futureHandler(callback, future);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


