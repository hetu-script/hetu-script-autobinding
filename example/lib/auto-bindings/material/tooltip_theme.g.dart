import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class TooltipThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TooltipThemeData':
        return ({height, padding, margin, verticalOffset, preferBelow, excludeFromSemantics, decoration, textStyle, waitDuration, showDuration}) => TooltipThemeDataObjectBinding(TooltipThemeData(height : height, padding : padding, margin : margin, verticalOffset : verticalOffset, preferBelow : preferBelow, excludeFromSemantics : excludeFromSemantics, decoration : decoration, textStyle : textStyle, waitDuration : waitDuration, showDuration : showDuration));
      case 'lerp':
        return (a, b, t) => TooltipThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TooltipThemeDataObjectBinding extends HT_ExternObject<TooltipThemeData> {
  TooltipThemeDataObjectBinding(TooltipThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('TooltipThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'height':
        return externObject.height;
      case 'padding':
        return externObject.padding;
      case 'margin':
        return externObject.margin;
      case 'verticalOffset':
        return externObject.verticalOffset;
      case 'preferBelow':
        return externObject.preferBelow;
      case 'excludeFromSemantics':
        return externObject.excludeFromSemantics;
      case 'decoration':
        return externObject.decoration;
      case 'textStyle':
        return externObject.textStyle;
      case 'waitDuration':
        return externObject.waitDuration;
      case 'showDuration':
        return externObject.showDuration;
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

class TooltipThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TooltipTheme':
        return ({key, data, child}) => TooltipThemeObjectBinding(TooltipTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => TooltipTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TooltipThemeObjectBinding extends HT_ExternObject<TooltipTheme> {
  TooltipThemeObjectBinding(TooltipTheme value) : super(value);

  @override
  final typeid = HT_TypeId('TooltipTheme');

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

