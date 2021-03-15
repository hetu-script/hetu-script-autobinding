import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class AssetImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AssetImage':
        return (assetName, {bundle, package}) => AssetImageObjectBinding(AssetImage(assetName, bundle : bundle, package : package));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AssetImageObjectBinding extends HT_ExternObject<AssetImage> {
  AssetImageObjectBinding(AssetImage value) : super(value);

  @override
  final typeid = HT_TypeId('AssetImage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'assetName':
        return externObject.assetName;
      case 'bundle':
        return externObject.bundle;
      case 'package':
        return externObject.package;
      case 'keyName':
        return externObject.keyName;
      case 'hashCode':
        return externObject.hashCode;
      case 'obtainKey':
        return externObject.obtainKey;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

