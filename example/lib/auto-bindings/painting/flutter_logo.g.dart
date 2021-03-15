import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;
import 'dart:typed_data';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';

class FlutterLogoStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'markOnly':
        return FlutterLogoStyle.markOnly;
      case 'horizontal':
        return FlutterLogoStyle.horizontal;
      case 'stacked':
        return FlutterLogoStyle.stacked;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlutterLogoDecorationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlutterLogoDecoration':
        return ({textColor = const Color(0xFF757575), style = FlutterLogoStyle.markOnly, margin = EdgeInsets.zero}) => FlutterLogoDecorationObjectBinding(FlutterLogoDecoration(textColor : textColor, style : style, margin : margin));
      case 'lerp':
        return (a, b, t) => FlutterLogoDecoration.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlutterLogoDecorationObjectBinding extends HT_ExternObject<FlutterLogoDecoration> {
  FlutterLogoDecorationObjectBinding(FlutterLogoDecoration value) : super(value);

  @override
  final typeid = HT_TypeId('FlutterLogoDecoration');


}

