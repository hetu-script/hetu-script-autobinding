import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class ElevatedButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ElevatedButton':
        return ({key, onPressed, onLongPress, style, focusNode, autofocus = false, clipBehavior = Clip.none, child}) => ElevatedButtonObjectBinding(ElevatedButton(key : key, onPressed : onPressed, onLongPress : onLongPress, style : style, focusNode : focusNode, autofocus : autofocus, clipBehavior : clipBehavior, child : child));
      case 'styleFrom':
        return ({primary, onPrimary, onSurface, shadowColor, elevation, textStyle, padding, minimumSize, side, shape, enabledMouseCursor, disabledMouseCursor, visualDensity, tapTargetSize, animationDuration, enableFeedback, alignment}) => ElevatedButton.styleFrom(primary : primary, onPrimary : onPrimary, onSurface : onSurface, shadowColor : shadowColor, elevation : elevation, textStyle : textStyle, padding : padding, minimumSize : minimumSize, side : side, shape : shape, enabledMouseCursor : enabledMouseCursor, disabledMouseCursor : disabledMouseCursor, visualDensity : visualDensity, tapTargetSize : tapTargetSize, animationDuration : animationDuration, enableFeedback : enableFeedback, alignment : alignment);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ElevatedButtonObjectBinding extends HT_ExternObject<ElevatedButton> {
  ElevatedButtonObjectBinding(ElevatedButton value) : super(value);

  @override
  final typeid = HT_TypeId('ElevatedButton');

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

