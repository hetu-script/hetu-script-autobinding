import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class CheckboxThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CheckboxThemeData':
        return ({mouseCursor, fillColor, checkColor, overlayColor, splashRadius, materialTapTargetSize, visualDensity}) => CheckboxThemeDataObjectBinding(CheckboxThemeData(mouseCursor : mouseCursor, fillColor : fillColor, checkColor : checkColor, overlayColor : overlayColor, splashRadius : splashRadius, materialTapTargetSize : materialTapTargetSize, visualDensity : visualDensity));
      case 'lerp':
        return (a, b, t) => CheckboxThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CheckboxThemeDataObjectBinding extends HT_ExternObject<CheckboxThemeData> {
  CheckboxThemeDataObjectBinding(CheckboxThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('CheckboxThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'fillColor':
        return externObject.fillColor;
      case 'checkColor':
        return externObject.checkColor;
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

class CheckboxThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CheckboxTheme':
        return ({key, data, child}) => CheckboxThemeObjectBinding(CheckboxTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => CheckboxTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CheckboxThemeObjectBinding extends HT_ExternObject<CheckboxTheme> {
  CheckboxThemeObjectBinding(CheckboxTheme value) : super(value);

  @override
  final typeid = HT_TypeId('CheckboxTheme');

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

