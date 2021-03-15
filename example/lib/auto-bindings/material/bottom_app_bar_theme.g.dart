import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class BottomAppBarThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BottomAppBarTheme':
        return ({color, elevation, shape}) => BottomAppBarThemeObjectBinding(BottomAppBarTheme(color : color, elevation : elevation, shape : shape));
      case 'of':
        return (context) => BottomAppBarTheme.of(context);
      case 'lerp':
        return (a, b, t) => BottomAppBarTheme.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BottomAppBarThemeObjectBinding extends HT_ExternObject<BottomAppBarTheme> {
  BottomAppBarThemeObjectBinding(BottomAppBarTheme value) : super(value);

  @override
  final typeid = HT_TypeId('BottomAppBarTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'elevation':
        return externObject.elevation;
      case 'shape':
        return externObject.shape;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

