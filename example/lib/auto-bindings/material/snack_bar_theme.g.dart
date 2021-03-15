import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class SnackBarBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'fixed':
        return SnackBarBehavior.fixed;
      case 'floating':
        return SnackBarBehavior.floating;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SnackBarThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SnackBarThemeData':
        return ({backgroundColor, actionTextColor, disabledActionTextColor, contentTextStyle, elevation, shape, behavior}) => SnackBarThemeDataObjectBinding(SnackBarThemeData(backgroundColor : backgroundColor, actionTextColor : actionTextColor, disabledActionTextColor : disabledActionTextColor, contentTextStyle : contentTextStyle, elevation : elevation, shape : shape, behavior : behavior));
      case 'lerp':
        return (a, b, t) => SnackBarThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SnackBarThemeDataObjectBinding extends HT_ExternObject<SnackBarThemeData> {
  SnackBarThemeDataObjectBinding(SnackBarThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('SnackBarThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'actionTextColor':
        return externObject.actionTextColor;
      case 'disabledActionTextColor':
        return externObject.disabledActionTextColor;
      case 'contentTextStyle':
        return externObject.contentTextStyle;
      case 'elevation':
        return externObject.elevation;
      case 'shape':
        return externObject.shape;
      case 'behavior':
        return externObject.behavior;
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

