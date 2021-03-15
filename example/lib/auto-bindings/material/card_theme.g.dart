import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class CardThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CardTheme':
        return ({clipBehavior, color, shadowColor, elevation, margin, shape}) => CardThemeObjectBinding(CardTheme(clipBehavior : clipBehavior, color : color, shadowColor : shadowColor, elevation : elevation, margin : margin, shape : shape));
      case 'of':
        return (context) => CardTheme.of(context);
      case 'lerp':
        return (a, b, t) => CardTheme.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CardThemeObjectBinding extends HT_ExternObject<CardTheme> {
  CardThemeObjectBinding(CardTheme value) : super(value);

  @override
  final typeid = HT_TypeId('CardTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'color':
        return externObject.color;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'elevation':
        return externObject.elevation;
      case 'margin':
        return externObject.margin;
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

