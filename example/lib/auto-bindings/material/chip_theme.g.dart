import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class ChipThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ChipTheme':
        return ({key, data, child}) => ChipThemeObjectBinding(ChipTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => ChipTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ChipThemeObjectBinding extends HT_ExternObject<ChipTheme> {
  ChipThemeObjectBinding(ChipTheme value) : super(value);

  @override
  final typeid = HT_TypeId('ChipTheme');

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

class ChipThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ChipThemeData':
        return ({backgroundColor, deleteIconColor, disabledColor, selectedColor, secondarySelectedColor, shadowColor, selectedShadowColor, showCheckmark, checkmarkColor, labelPadding, padding, side, shape, labelStyle, secondaryLabelStyle, brightness, elevation, pressElevation}) => ChipThemeDataObjectBinding(ChipThemeData(backgroundColor : backgroundColor, deleteIconColor : deleteIconColor, disabledColor : disabledColor, selectedColor : selectedColor, secondarySelectedColor : secondarySelectedColor, shadowColor : shadowColor, selectedShadowColor : selectedShadowColor, showCheckmark : showCheckmark, checkmarkColor : checkmarkColor, labelPadding : labelPadding, padding : padding, side : side, shape : shape, labelStyle : labelStyle, secondaryLabelStyle : secondaryLabelStyle, brightness : brightness, elevation : elevation, pressElevation : pressElevation));
      case 'lerp':
        return (a, b, t) => ChipThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ChipThemeDataObjectBinding extends HT_ExternObject<ChipThemeData> {
  ChipThemeDataObjectBinding(ChipThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('ChipThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'deleteIconColor':
        return externObject.deleteIconColor;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'secondarySelectedColor':
        return externObject.secondarySelectedColor;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'selectedShadowColor':
        return externObject.selectedShadowColor;
      case 'showCheckmark':
        return externObject.showCheckmark;
      case 'checkmarkColor':
        return externObject.checkmarkColor;
      case 'labelPadding':
        return externObject.labelPadding;
      case 'padding':
        return externObject.padding;
      case 'side':
        return externObject.side;
      case 'shape':
        return externObject.shape;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'secondaryLabelStyle':
        return externObject.secondaryLabelStyle;
      case 'brightness':
        return externObject.brightness;
      case 'elevation':
        return externObject.elevation;
      case 'pressElevation':
        return externObject.pressElevation;
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

