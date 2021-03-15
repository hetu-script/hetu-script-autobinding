import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class OutlineButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OutlineButton':
        return ({key, onPressed, onLongPress, mouseCursor, textTheme, textColor, disabledTextColor, color, focusColor, hoverColor, highlightColor, splashColor, highlightElevation, borderSide, disabledBorderColor, highlightedBorderColor, padding, visualDensity, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, child}) => OutlineButtonObjectBinding(OutlineButton(key : key, onPressed : onPressed, onLongPress : onLongPress, mouseCursor : mouseCursor, textTheme : textTheme, textColor : textColor, disabledTextColor : disabledTextColor, color : color, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, splashColor : splashColor, highlightElevation : highlightElevation, borderSide : borderSide, disabledBorderColor : disabledBorderColor, highlightedBorderColor : highlightedBorderColor, padding : padding, visualDensity : visualDensity, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, materialTapTargetSize : materialTapTargetSize, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OutlineButtonObjectBinding extends HT_ExternObject<OutlineButton> {
  OutlineButtonObjectBinding(OutlineButton value) : super(value);

  @override
  final typeid = HT_TypeId('OutlineButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'highlightedBorderColor':
        return externObject.highlightedBorderColor;
      case 'disabledBorderColor':
        return externObject.disabledBorderColor;
      case 'borderSide':
        return externObject.borderSide;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

