import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class ToggleButtonsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ToggleButtons':
        return ({key, children, isSelected, onPressed, mouseCursor, textStyle, constraints, color, selectedColor, disabledColor, fillColor, focusColor, highlightColor, hoverColor, splashColor, focusNodes, renderBorder = true, borderColor, selectedBorderColor, disabledBorderColor, borderRadius, borderWidth, direction = Axis.horizontal, verticalDirection = VerticalDirection.down}) => ToggleButtonsObjectBinding(ToggleButtons(key : key, children : children, isSelected : isSelected, onPressed : onPressed, mouseCursor : mouseCursor, textStyle : textStyle, constraints : constraints, color : color, selectedColor : selectedColor, disabledColor : disabledColor, fillColor : fillColor, focusColor : focusColor, highlightColor : highlightColor, hoverColor : hoverColor, splashColor : splashColor, focusNodes : focusNodes, renderBorder : renderBorder, borderColor : borderColor, selectedBorderColor : selectedBorderColor, disabledBorderColor : disabledBorderColor, borderRadius : borderRadius, borderWidth : borderWidth, direction : direction, verticalDirection : verticalDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ToggleButtonsObjectBinding extends HT_ExternObject<ToggleButtons> {
  ToggleButtonsObjectBinding(ToggleButtons value) : super(value);

  @override
  final typeid = HT_TypeId('ToggleButtons');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'children':
        return externObject.children;
      case 'isSelected':
        return externObject.isSelected;
      case 'onPressed':
        return externObject.onPressed;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'textStyle':
        return externObject.textStyle;
      case 'constraints':
        return externObject.constraints;
      case 'color':
        return externObject.color;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'fillColor':
        return externObject.fillColor;
      case 'focusColor':
        return externObject.focusColor;
      case 'highlightColor':
        return externObject.highlightColor;
      case 'splashColor':
        return externObject.splashColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'focusNodes':
        return externObject.focusNodes;
      case 'renderBorder':
        return externObject.renderBorder;
      case 'borderColor':
        return externObject.borderColor;
      case 'selectedBorderColor':
        return externObject.selectedBorderColor;
      case 'disabledBorderColor':
        return externObject.disabledBorderColor;
      case 'borderWidth':
        return externObject.borderWidth;
      case 'borderRadius':
        return externObject.borderRadius;
      case 'direction':
        return externObject.direction;
      case 'verticalDirection':
        return externObject.verticalDirection;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

