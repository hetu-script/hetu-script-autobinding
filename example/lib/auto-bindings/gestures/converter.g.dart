import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui'as ui;


class PointerEventConverterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'expand':
        return (data, devicePixelRatio) => PointerEventConverter.expand(data, devicePixelRatio);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


