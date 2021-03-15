import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class FlatButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlatButton':
        return ({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, padding, visualDensity, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, child, height, minWidth}) => FlatButtonObjectBinding(FlatButton(key : key, onPressed : onPressed, onLongPress : onLongPress, onHighlightChanged : onHighlightChanged, mouseCursor : mouseCursor, textTheme : textTheme, textColor : textColor, disabledTextColor : disabledTextColor, color : color, disabledColor : disabledColor, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, splashColor : splashColor, colorBrightness : colorBrightness, padding : padding, visualDensity : visualDensity, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, materialTapTargetSize : materialTapTargetSize, child : child, height : height, minWidth : minWidth));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlatButtonObjectBinding extends HT_ExternObject<FlatButton> {
  FlatButtonObjectBinding(FlatButton value) : super(value);

  @override
  final typeid = HT_TypeId('FlatButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

