import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class RadioThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RadioThemeData':
        return ({mouseCursor, fillColor, overlayColor, splashRadius, materialTapTargetSize, visualDensity}) => RadioThemeDataObjectBinding(RadioThemeData(mouseCursor : mouseCursor, fillColor : fillColor, overlayColor : overlayColor, splashRadius : splashRadius, materialTapTargetSize : materialTapTargetSize, visualDensity : visualDensity));
      case 'lerp':
        return (a, b, t) => RadioThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RadioThemeDataObjectBinding extends HT_ExternObject<RadioThemeData> {
  RadioThemeDataObjectBinding(RadioThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('RadioThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'fillColor':
        return externObject.fillColor;
      case 'overlayColor':
        return externObject.overlayColor;
      case 'splashRadius':
        return externObject.splashRadius;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'visualDensity':
        return externObject.visualDensity;
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

class RadioThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RadioTheme':
        return ({key, data, child}) => RadioThemeObjectBinding(RadioTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => RadioTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RadioThemeObjectBinding extends HT_ExternObject<RadioTheme> {
  RadioThemeObjectBinding(RadioTheme value) : super(value);

  @override
  final typeid = HT_TypeId('RadioTheme');

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

