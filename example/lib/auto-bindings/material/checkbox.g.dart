import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class CheckboxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Checkbox':
        return ({key, value, tristate = false, onChanged, mouseCursor, activeColor, fillColor, checkColor, focusColor, hoverColor, overlayColor, splashRadius, materialTapTargetSize, visualDensity, focusNode, autofocus = false}) => CheckboxObjectBinding(Checkbox(key : key, value : value, tristate : tristate, onChanged : onChanged, mouseCursor : mouseCursor, activeColor : activeColor, fillColor : fillColor, checkColor : checkColor, focusColor : focusColor, hoverColor : hoverColor, overlayColor : overlayColor, splashRadius : splashRadius, materialTapTargetSize : materialTapTargetSize, visualDensity : visualDensity, focusNode : focusNode, autofocus : autofocus));
      case 'Checkbox.width':
        return Checkbox.width;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CheckboxObjectBinding extends HT_ExternObject<Checkbox> {
  CheckboxObjectBinding(Checkbox value) : super(value);

  @override
  final typeid = HT_TypeId('Checkbox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'onChanged':
        return externObject.onChanged;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'activeColor':
        return externObject.activeColor;
      case 'fillColor':
        return externObject.fillColor;
      case 'checkColor':
        return externObject.checkColor;
      case 'tristate':
        return externObject.tristate;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'overlayColor':
        return externObject.overlayColor;
      case 'splashRadius':
        return externObject.splashRadius;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

