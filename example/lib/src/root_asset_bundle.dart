import 'package:flutter/services.dart' as services;
import 'package:hetu_script/hetu_script.dart';

import '../main.dart';

@HT_Binding()
enum Ingredients {
  Apple,
  Banana,
  Cinnamon,
}

@HT_Binding()
class RootAssetBundle extends services.AssetBundle{
  @override
  Future<services.ByteData> load(String key) {
    return services.rootBundle.load(key);
  }

  @override
  Future<String> loadString(String key, {bool cache = true}) {
    return services.rootBundle.loadString(key, cache: cache);
  }

  @override
  Future<T> loadStructuredData<T>(String key, Future<T> Function(String value) parser) {
    return services.rootBundle.loadStructuredData(key, parser);
  }
}

@HT_Binding()
class ScriptHelper {
  ScriptHelper._();

  static void futureHandler(HT_Function callback, Future future) {
    future.then((value) {
      try {
        callback.call(positionalArgs: [value]);
      }
      catch(err, stack) {
        print('$err\n$stack');
      }
    });
  }
}
