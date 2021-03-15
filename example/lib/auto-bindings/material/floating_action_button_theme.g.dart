import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class FloatingActionButtonThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FloatingActionButtonThemeData':
        return ({foregroundColor, backgroundColor, focusColor, hoverColor, splashColor, elevation, focusElevation, hoverElevation, disabledElevation, highlightElevation, shape}) => FloatingActionButtonThemeDataObjectBinding(FloatingActionButtonThemeData(foregroundColor : foregroundColor, backgroundColor : backgroundColor, focusColor : focusColor, hoverColor : hoverColor, splashColor : splashColor, elevation : elevation, focusElevation : focusElevation, hoverElevation : hoverElevation, disabledElevation : disabledElevation, highlightElevation : highlightElevation, shape : shape));
      case 'lerp':
        return (a, b, t) => FloatingActionButtonThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FloatingActionButtonThemeDataObjectBinding extends HT_ExternObject<FloatingActionButtonThemeData> {
  FloatingActionButtonThemeDataObjectBinding(FloatingActionButtonThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('FloatingActionButtonThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'foregroundColor':
        return externObject.foregroundColor;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'splashColor':
        return externObject.splashColor;
      case 'elevation':
        return externObject.elevation;
      case 'focusElevation':
        return externObject.focusElevation;
      case 'hoverElevation':
        return externObject.hoverElevation;
      case 'disabledElevation':
        return externObject.disabledElevation;
      case 'highlightElevation':
        return externObject.highlightElevation;
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

