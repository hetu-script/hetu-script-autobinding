import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class RawMaterialButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawMaterialButton':
        return ({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textStyle, fillColor, focusColor, hoverColor, highlightColor, splashColor, elevation = 2.0, focusElevation = 4.0, hoverElevation = 4.0, highlightElevation = 8.0, disabledElevation = 0.0, padding = EdgeInsets.zero, visualDensity = VisualDensity.standard, constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0), shape = const RoundedRectangleBorder(), animationDuration = kThemeChangeDuration, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, child, enableFeedback = true}) => RawMaterialButtonObjectBinding(RawMaterialButton(key : key, onPressed : onPressed, onLongPress : onLongPress, onHighlightChanged : onHighlightChanged, mouseCursor : mouseCursor, textStyle : textStyle, fillColor : fillColor, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, splashColor : splashColor, elevation : elevation, focusElevation : focusElevation, hoverElevation : hoverElevation, highlightElevation : highlightElevation, disabledElevation : disabledElevation, padding : padding, visualDensity : visualDensity, constraints : constraints, shape : shape, animationDuration : animationDuration, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, materialTapTargetSize : materialTapTargetSize, child : child, enableFeedback : enableFeedback));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawMaterialButtonObjectBinding extends HT_ExternObject<RawMaterialButton> {
  RawMaterialButtonObjectBinding(RawMaterialButton value) : super(value);

  @override
  final typeid = HT_TypeId('RawMaterialButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onPressed':
        return externObject.onPressed;
      case 'onLongPress':
        return externObject.onLongPress;
      case 'onHighlightChanged':
        return externObject.onHighlightChanged;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'textStyle':
        return externObject.textStyle;
      case 'fillColor':
        return externObject.fillColor;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'highlightColor':
        return externObject.highlightColor;
      case 'splashColor':
        return externObject.splashColor;
      case 'elevation':
        return externObject.elevation;
      case 'hoverElevation':
        return externObject.hoverElevation;
      case 'focusElevation':
        return externObject.focusElevation;
      case 'highlightElevation':
        return externObject.highlightElevation;
      case 'disabledElevation':
        return externObject.disabledElevation;
      case 'padding':
        return externObject.padding;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'constraints':
        return externObject.constraints;
      case 'shape':
        return externObject.shape;
      case 'animationDuration':
        return externObject.animationDuration;
      case 'child':
        return externObject.child;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'enableFeedback':
        return externObject.enableFeedback;
      case 'enabled':
        return externObject.enabled;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

