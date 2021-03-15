import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class OutlinedButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OutlinedButton':
        return ({key, onPressed, onLongPress, style, focusNode, autofocus = false, clipBehavior = Clip.none, child}) => OutlinedButtonObjectBinding(OutlinedButton(key : key, onPressed : onPressed, onLongPress : onLongPress, style : style, focusNode : focusNode, autofocus : autofocus, clipBehavior : clipBehavior, child : child));
      case 'styleFrom':
        return ({primary, onSurface, backgroundColor, shadowColor, elevation, textStyle, padding, minimumSize, side, shape, enabledMouseCursor, disabledMouseCursor, visualDensity, tapTargetSize, animationDuration, enableFeedback, alignment}) => OutlinedButton.styleFrom(primary : primary, onSurface : onSurface, backgroundColor : backgroundColor, shadowColor : shadowColor, elevation : elevation, textStyle : textStyle, padding : padding, minimumSize : minimumSize, side : side, shape : shape, enabledMouseCursor : enabledMouseCursor, disabledMouseCursor : disabledMouseCursor, visualDensity : visualDensity, tapTargetSize : tapTargetSize, animationDuration : animationDuration, enableFeedback : enableFeedback, alignment : alignment);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OutlinedButtonObjectBinding extends HT_ExternObject<OutlinedButton> {
  OutlinedButtonObjectBinding(OutlinedButton value) : super(value);

  @override
  final typeid = HT_TypeId('OutlinedButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'defaultStyleOf':
        return externObject.defaultStyleOf;
      case 'themeStyleOf':
        return externObject.themeStyleOf;
      default:
        throw HTErr_Undefined(id);
    }
  }

}
