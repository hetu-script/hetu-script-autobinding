import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math'as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class SliderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Slider':
        return ({key, value, onChanged, onChangeStart, onChangeEnd, min = 0.0, max = 1.0, divisions, label, activeColor, inactiveColor, mouseCursor, semanticFormatterCallback, focusNode, autofocus = false}) => SliderObjectBinding(Slider(key : key, value : value, onChanged : onChanged, onChangeStart : onChangeStart, onChangeEnd : onChangeEnd, min : min, max : max, divisions : divisions, label : label, activeColor : activeColor, inactiveColor : inactiveColor, mouseCursor : mouseCursor, semanticFormatterCallback : semanticFormatterCallback, focusNode : focusNode, autofocus : autofocus));
      case 'Slider.adaptive':
        return ({key, value, onChanged, onChangeStart, onChangeEnd, min = 0.0, max = 1.0, divisions, label, mouseCursor, activeColor, inactiveColor, semanticFormatterCallback, focusNode, autofocus = false}) => SliderObjectBinding(Slider.adaptive(key : key, value : value, onChanged : onChanged, onChangeStart : onChangeStart, onChangeEnd : onChangeEnd, min : min, max : max, divisions : divisions, label : label, mouseCursor : mouseCursor, activeColor : activeColor, inactiveColor : inactiveColor, semanticFormatterCallback : semanticFormatterCallback, focusNode : focusNode, autofocus : autofocus));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliderObjectBinding extends HT_ExternObject<Slider> {
  SliderObjectBinding(Slider value) : super(value);

  @override
  final typeid = HT_TypeId('Slider');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'onChanged':
        return externObject.onChanged;
      case 'onChangeStart':
        return externObject.onChangeStart;
      case 'onChangeEnd':
        return externObject.onChangeEnd;
      case 'min':
        return externObject.min;
      case 'max':
        return externObject.max;
      case 'divisions':
        return externObject.divisions;
      case 'label':
        return externObject.label;
      case 'activeColor':
        return externObject.activeColor;
      case 'inactiveColor':
        return externObject.inactiveColor;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'semanticFormatterCallback':
        return externObject.semanticFormatterCallback;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

