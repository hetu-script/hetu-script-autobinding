import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class MaterialButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialButton':
        return ({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, padding, visualDensity, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, animationDuration, minWidth, height, enableFeedback = true, child}) => MaterialButtonObjectBinding(MaterialButton(key : key, onPressed : onPressed, onLongPress : onLongPress, onHighlightChanged : onHighlightChanged, mouseCursor : mouseCursor, textTheme : textTheme, textColor : textColor, disabledTextColor : disabledTextColor, color : color, disabledColor : disabledColor, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, splashColor : splashColor, colorBrightness : colorBrightness, elevation : elevation, focusElevation : focusElevation, hoverElevation : hoverElevation, highlightElevation : highlightElevation, disabledElevation : disabledElevation, padding : padding, visualDensity : visualDensity, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, materialTapTargetSize : materialTapTargetSize, animationDuration : animationDuration, minWidth : minWidth, height : height, enableFeedback : enableFeedback, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialButtonObjectBinding extends HT_ExternObject<MaterialButton> {
  MaterialButtonObjectBinding(MaterialButton value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialButton');

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
      case 'textTheme':
        return externObject.textTheme;
      case 'textColor':
        return externObject.textColor;
      case 'disabledTextColor':
        return externObject.disabledTextColor;
      case 'color':
        return externObject.color;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'splashColor':
        return externObject.splashColor;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'highlightColor':
        return externObject.highlightColor;
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
      case 'colorBrightness':
        return externObject.colorBrightness;
      case 'child':
        return externObject.child;
      case 'padding':
        return externObject.padding;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'animationDuration':
        return externObject.animationDuration;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'minWidth':
        return externObject.minWidth;
      case 'height':
        return externObject.height;
      case 'enableFeedback':
        return externObject.enableFeedback;
      case 'enabled':
        return externObject.enabled;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

