import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class PopupMenuThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PopupMenuThemeData':
        return ({color, shape, elevation, textStyle, enableFeedback}) => PopupMenuThemeDataObjectBinding(PopupMenuThemeData(color : color, shape : shape, elevation : elevation, textStyle : textStyle, enableFeedback : enableFeedback));
      case 'lerp':
        return (a, b, t) => PopupMenuThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PopupMenuThemeDataObjectBinding extends HT_ExternObject<PopupMenuThemeData> {
  PopupMenuThemeDataObjectBinding(PopupMenuThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('PopupMenuThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'shape':
        return externObject.shape;
      case 'elevation':
        return externObject.elevation;
      case 'textStyle':
        return externObject.textStyle;
      case 'enableFeedback':
        return externObject.enableFeedback;
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

class PopupMenuThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PopupMenuTheme':
        return ({key, data, child}) => PopupMenuThemeObjectBinding(PopupMenuTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => PopupMenuTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PopupMenuThemeObjectBinding extends HT_ExternObject<PopupMenuTheme> {
  PopupMenuThemeObjectBinding(PopupMenuTheme value) : super(value);

  @override
  final typeid = HT_TypeId('PopupMenuTheme');

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

