import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/foundation.dart';


class FontLoaderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FontLoader':
        return (family) => FontLoaderObjectBinding(FontLoader(family));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FontLoaderObjectBinding extends HT_ExternObject<FontLoader> {
  FontLoaderObjectBinding(FontLoader value) : super(value);

  @override
  final typeid = HT_TypeId('FontLoader');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'family':
        return externObject.family;
      case 'addFont':
        return externObject.addFont;
      case 'load':
        return externObject.load;
      case 'loadFont':
        return externObject.loadFont;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

