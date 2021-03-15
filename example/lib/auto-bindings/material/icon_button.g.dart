import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class IconButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IconButton':
        return ({key, iconSize = 24.0, visualDensity, padding = const EdgeInsets.all(8.0), alignment = Alignment.center, splashRadius, icon, color, focusColor, hoverColor, highlightColor, splashColor, disabledColor, onPressed, mouseCursor = SystemMouseCursors.click, focusNode, autofocus = false, tooltip, enableFeedback = true, constraints}) => IconButtonObjectBinding(IconButton(key : key, iconSize : iconSize, visualDensity : visualDensity, padding : padding, alignment : alignment, splashRadius : splashRadius, icon : icon, color : color, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, splashColor : splashColor, disabledColor : disabledColor, onPressed : onPressed, mouseCursor : mouseCursor, focusNode : focusNode, autofocus : autofocus, tooltip : tooltip, enableFeedback : enableFeedback, constraints : constraints));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IconButtonObjectBinding extends HT_ExternObject<IconButton> {
  IconButtonObjectBinding(IconButton value) : super(value);

  @override
  final typeid = HT_TypeId('IconButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'iconSize':
        return externObject.iconSize;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'padding':
        return externObject.padding;
      case 'alignment':
        return externObject.alignment;
      case 'splashRadius':
        return externObject.splashRadius;
      case 'icon':
        return externObject.icon;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'color':
        return externObject.color;
      case 'splashColor':
        return externObject.splashColor;
      case 'highlightColor':
        return externObject.highlightColor;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'onPressed':
        return externObject.onPressed;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'tooltip':
        return externObject.tooltip;
      case 'enableFeedback':
        return externObject.enableFeedback;
      case 'constraints':
        return externObject.constraints;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

