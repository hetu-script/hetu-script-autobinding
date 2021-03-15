import 'package:hetu_script/hetu_script.dart';
import 'package:external_asset_bundle/external_asset_bundle.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';


class ExternalAssetBundleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ExternalAssetBundle':
        return (path, {enableBinaryCache = false}) => ExternalAssetBundleObjectBinding(ExternalAssetBundle(path, enableBinaryCache : enableBinaryCache));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExternalAssetBundleObjectBinding extends HT_ExternObject<ExternalAssetBundle> {
  ExternalAssetBundleObjectBinding(ExternalAssetBundle value) : super(value);

  @override
  final typeid = HT_TypeId('ExternalAssetBundle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'evict':
        return externObject.evict;
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

