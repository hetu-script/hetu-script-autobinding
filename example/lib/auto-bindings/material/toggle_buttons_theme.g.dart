import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class ToggleButtonsThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ToggleButtonsThemeData':
        return ({textStyle, constraints, color, selectedColor, disabledColor, fillColor, focusColor, highlightColor, hoverColor, splashColor, borderColor, selectedBorderColor, disabledBorderColor, borderRadius, borderWidth}) => ToggleButtonsThemeDataObjectBinding(ToggleButtonsThemeData(textStyle : textStyle, constraints : constraints, color : color, selectedColor : selectedColor, disabledColor : disabledColor, fillColor : fillColor, focusColor : focusColor, highlightColor : highlightColor, hoverColor : hoverColor, splashColor : splashColor, borderColor : borderColor, selectedBorderColor : selectedBorderColor, disabledBorderColor : disabledBorderColor, borderRadius : borderRadius, borderWidth : borderWidth));
      case 'lerp':
        return (a, b, t) => ToggleButtonsThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ToggleButtonsThemeDataObjectBinding extends HT_ExternObject<ToggleButtonsThemeData> {
  ToggleButtonsThemeDataObjectBinding(ToggleButtonsThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('ToggleButtonsThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textStyle':
        return externObject.textStyle;
      case 'constraints':
        return externObject.constraints;
      case 'color':
        return externObject.color;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'fillColor':
        return externObject.fillColor;
      case 'focusColor':
        return externObject.focusColor;
      case 'highlightColor':
        return externObject.highlightColor;
      case 'splashColor':
        return externObject.splashColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'borderColor':
        return externObject.borderColor;
      case 'selectedBorderColor':
        return externObject.selectedBorderColor;
      case 'disabledBorderColor':
        return externObject.disabledBorderColor;
      case 'borderWidth':
        return externObject.borderWidth;
      case 'borderRadius':
        return externObject.borderRadius;
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

class ToggleButtonsThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ToggleButtonsTheme':
        return ({key, data, child}) => ToggleButtonsThemeObjectBinding(ToggleButtonsTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => ToggleButtonsTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ToggleButtonsThemeObjectBinding extends HT_ExternObject<ToggleButtonsTheme> {
  ToggleButtonsThemeObjectBinding(ToggleButtonsTheme value) : super(value);

  @override
  final typeid = HT_TypeId('ToggleButtonsTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'wrap':
        return externObject.wrap;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

