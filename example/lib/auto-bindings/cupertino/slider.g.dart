import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class CupertinoSliderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoSlider':
        return ({key, value, onChanged, onChangeStart, onChangeEnd, min = 0.0, max = 1.0, divisions, activeColor, thumbColor = CupertinoColors.white}) => CupertinoSliderObjectBinding(CupertinoSlider(key : key, value : value, onChanged : onChanged, onChangeStart : onChangeStart, onChangeEnd : onChangeEnd, min : min, max : max, divisions : divisions, activeColor : activeColor, thumbColor : thumbColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoSliderObjectBinding extends HT_ExternObject<CupertinoSlider> {
  CupertinoSliderObjectBinding(CupertinoSlider value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoSlider');

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
      case 'activeColor':
        return externObject.activeColor;
      case 'thumbColor':
        return externObject.thumbColor;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

