import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class SwitchThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SwitchThemeData':
        return ({thumbColor, trackColor, materialTapTargetSize, mouseCursor, overlayColor, splashRadius}) => SwitchThemeDataObjectBinding(SwitchThemeData(thumbColor : thumbColor, trackColor : trackColor, materialTapTargetSize : materialTapTargetSize, mouseCursor : mouseCursor, overlayColor : overlayColor, splashRadius : splashRadius));
      case 'lerp':
        return (a, b, t) => SwitchThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SwitchThemeDataObjectBinding extends HT_ExternObject<SwitchThemeData> {
  SwitchThemeDataObjectBinding(SwitchThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('SwitchThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'thumbColor':
        return externObject.thumbColor;
      case 'trackColor':
        return externObject.trackColor;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'overlayColor':
        return externObject.overlayColor;
      case 'splashRadius':
        return externObject.splashRadius;
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

class SwitchThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SwitchTheme':
        return ({key, data, child}) => SwitchThemeObjectBinding(SwitchTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => SwitchTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SwitchThemeObjectBinding extends HT_ExternObject<SwitchTheme> {
  SwitchThemeObjectBinding(SwitchTheme value) : super(value);

  @override
  final typeid = HT_TypeId('SwitchTheme');

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

