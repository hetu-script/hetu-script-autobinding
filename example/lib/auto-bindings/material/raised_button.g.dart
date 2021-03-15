import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class RaisedButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RaisedButton':
        return ({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, padding, visualDensity, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, animationDuration, child}) => RaisedButtonObjectBinding(RaisedButton(key : key, onPressed : onPressed, onLongPress : onLongPress, onHighlightChanged : onHighlightChanged, mouseCursor : mouseCursor, textTheme : textTheme, textColor : textColor, disabledTextColor : disabledTextColor, color : color, disabledColor : disabledColor, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, splashColor : splashColor, colorBrightness : colorBrightness, elevation : elevation, focusElevation : focusElevation, hoverElevation : hoverElevation, highlightElevation : highlightElevation, disabledElevation : disabledElevation, padding : padding, visualDensity : visualDensity, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, materialTapTargetSize : materialTapTargetSize, animationDuration : animationDuration, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RaisedButtonObjectBinding extends HT_ExternObject<RaisedButton> {
  RaisedButtonObjectBinding(RaisedButton value) : super(value);

  @override
  final typeid = HT_TypeId('RaisedButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

