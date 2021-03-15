import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';


class NetworkAssetBundleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NetworkAssetBundle':
        return (baseUrl) => NetworkAssetBundleObjectBinding(NetworkAssetBundle(baseUrl));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NetworkAssetBundleObjectBinding extends HT_ExternObject<NetworkAssetBundle> {
  NetworkAssetBundleObjectBinding(NetworkAssetBundle value) : super(value);

  @override
  final typeid = HT_TypeId('NetworkAssetBundle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'load':
        return externObject.load;
      case 'loadStructuredData':
        return externObject.loadStructuredData;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PlatformAssetBundleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PlatformAssetBundle':
        return () => PlatformAssetBundleObjectBinding(PlatformAssetBundle());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformAssetBundleObjectBinding extends HT_ExternObject<PlatformAssetBundle> {
  PlatformAssetBundleObjectBinding(PlatformAssetBundle value) : super(value);

  @override
  final typeid = HT_TypeId('PlatformAssetBundle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'load':
        return externObject.load;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

