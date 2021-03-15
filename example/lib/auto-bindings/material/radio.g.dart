import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class RadioClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Radio':
        return ({key, value, groupValue, onChanged, mouseCursor, toggleable = false, activeColor, fillColor, focusColor, hoverColor, overlayColor, splashRadius, materialTapTargetSize, visualDensity, focusNode, autofocus = false}) => RadioObjectBinding(Radio(key : key, value : value, groupValue : groupValue, onChanged : onChanged, mouseCursor : mouseCursor, toggleable : toggleable, activeColor : activeColor, fillColor : fillColor, focusColor : focusColor, hoverColor : hoverColor, overlayColor : overlayColor, splashRadius : splashRadius, materialTapTargetSize : materialTapTargetSize, visualDensity : visualDensity, focusNode : focusNode, autofocus : autofocus));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RadioObjectBinding extends HT_ExternObject<Radio> {
  RadioObjectBinding(Radio value) : super(value);

  @override
  final typeid = HT_TypeId('Radio');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'groupValue':
        return externObject.groupValue;
      case 'onChanged':
        return externObject.onChanged;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'toggleable':
        return externObject.toggleable;
      case 'activeColor':
        return externObject.activeColor;
      case 'fillColor':
        return externObject.fillColor;
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

