import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class ButtonBarThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ButtonBarThemeData':
        return ({alignment, mainAxisSize, buttonTextTheme, buttonMinWidth, buttonHeight, buttonPadding, buttonAlignedDropdown, layoutBehavior, overflowDirection}) => ButtonBarThemeDataObjectBinding(ButtonBarThemeData(alignment : alignment, mainAxisSize : mainAxisSize, buttonTextTheme : buttonTextTheme, buttonMinWidth : buttonMinWidth, buttonHeight : buttonHeight, buttonPadding : buttonPadding, buttonAlignedDropdown : buttonAlignedDropdown, layoutBehavior : layoutBehavior, overflowDirection : overflowDirection));
      case 'lerp':
        return (a, b, t) => ButtonBarThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ButtonBarThemeDataObjectBinding extends HT_ExternObject<ButtonBarThemeData> {
  ButtonBarThemeDataObjectBinding(ButtonBarThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('ButtonBarThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'mainAxisSize':
        return externObject.mainAxisSize;
      case 'buttonTextTheme':
        return externObject.buttonTextTheme;
      case 'buttonMinWidth':
        return externObject.buttonMinWidth;
      case 'buttonHeight':
        return externObject.buttonHeight;
      case 'buttonPadding':
        return externObject.buttonPadding;
      case 'buttonAlignedDropdown':
        return externObject.buttonAlignedDropdown;
      case 'layoutBehavior':
        return externObject.layoutBehavior;
      case 'overflowDirection':
        return externObject.overflowDirection;
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

class ButtonBarThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ButtonBarTheme':
        return ({key, data, child}) => ButtonBarThemeObjectBinding(ButtonBarTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => ButtonBarTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ButtonBarThemeObjectBinding extends HT_ExternObject<ButtonBarTheme> {
  ButtonBarThemeObjectBinding(ButtonBarTheme value) : super(value);

  @override
  final typeid = HT_TypeId('ButtonBarTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

