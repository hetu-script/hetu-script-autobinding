import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class DialogThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DialogTheme':
        return ({backgroundColor, elevation, shape, titleTextStyle, contentTextStyle}) => DialogThemeObjectBinding(DialogTheme(backgroundColor : backgroundColor, elevation : elevation, shape : shape, titleTextStyle : titleTextStyle, contentTextStyle : contentTextStyle));
      case 'of':
        return (context) => DialogTheme.of(context);
      case 'lerp':
        return (a, b, t) => DialogTheme.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DialogThemeObjectBinding extends HT_ExternObject<DialogTheme> {
  DialogThemeObjectBinding(DialogTheme value) : super(value);

  @override
  final typeid = HT_TypeId('DialogTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'shape':
        return externObject.shape;
      case 'titleTextStyle':
        return externObject.titleTextStyle;
      case 'contentTextStyle':
        return externObject.contentTextStyle;
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

