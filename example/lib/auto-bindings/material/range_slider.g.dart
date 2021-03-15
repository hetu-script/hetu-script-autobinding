import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';


class RangeSliderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RangeSlider':
        return ({key, values, onChanged, onChangeStart, onChangeEnd, min = 0.0, max = 1.0, divisions, labels, activeColor, inactiveColor, semanticFormatterCallback}) => RangeSliderObjectBinding(RangeSlider(key : key, values : values, onChanged : onChanged, onChangeStart : onChangeStart, onChangeEnd : onChangeEnd, min : min, max : max, divisions : divisions, labels : labels, activeColor : activeColor, inactiveColor : inactiveColor, semanticFormatterCallback : semanticFormatterCallback));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RangeSliderObjectBinding extends HT_ExternObject<RangeSlider> {
  RangeSliderObjectBinding(RangeSlider value) : super(value);

  @override
  final typeid = HT_TypeId('RangeSlider');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'values':
        return externObject.values;
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
      case 'labels':
        return externObject.labels;
      case 'activeColor':
        return externObject.activeColor;
      case 'inactiveColor':
        return externObject.inactiveColor;
      case 'semanticFormatterCallback':
        return externObject.semanticFormatterCallback;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

