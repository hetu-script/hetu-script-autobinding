import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class ButtonStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ButtonStyle':
        return ({textStyle, backgroundColor, foregroundColor, overlayColor, shadowColor, elevation, padding, minimumSize, side, shape, mouseCursor, visualDensity, tapTargetSize, animationDuration, enableFeedback, alignment}) => ButtonStyleObjectBinding(ButtonStyle(textStyle : textStyle, backgroundColor : backgroundColor, foregroundColor : foregroundColor, overlayColor : overlayColor, shadowColor : shadowColor, elevation : elevation, padding : padding, minimumSize : minimumSize, side : side, shape : shape, mouseCursor : mouseCursor, visualDensity : visualDensity, tapTargetSize : tapTargetSize, animationDuration : animationDuration, enableFeedback : enableFeedback, alignment : alignment));
      case 'lerp':
        return (a, b, t) => ButtonStyle.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ButtonStyleObjectBinding extends HT_ExternObject<ButtonStyle> {
  ButtonStyleObjectBinding(ButtonStyle value) : super(value);

  @override
  final typeid = HT_TypeId('ButtonStyle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textStyle':
        return externObject.textStyle;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'foregroundColor':
        return externObject.foregroundColor;
      case 'overlayColor':
        return externObject.overlayColor;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'elevation':
        return externObject.elevation;
      case 'padding':
        return externObject.padding;
      case 'minimumSize':
        return externObject.minimumSize;
      case 'side':
        return externObject.side;
      case 'shape':
        return externObject.shape;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'tapTargetSize':
        return externObject.tapTargetSize;
      case 'animationDuration':
        return externObject.animationDuration;
      case 'enableFeedback':
        return externObject.enableFeedback;
      case 'alignment':
        return externObject.alignment;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'merge':
        return externObject.merge;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

