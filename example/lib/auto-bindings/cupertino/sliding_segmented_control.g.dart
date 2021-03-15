import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math'as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
const _kThumbColor = CupertinoDynamicColor.withBrightness(color: Color(0xFFFFFFFF), darkColor: Color(0xFF636366));
const _kHorizontalItemPadding = EdgeInsets.symmetric(vertical: 2, horizontal: 3);


class CupertinoSlidingSegmentedControlClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoSlidingSegmentedControl':
        return ({key, children, onValueChanged, groupValue, thumbColor = _kThumbColor, padding = _kHorizontalItemPadding, backgroundColor = CupertinoColors.tertiarySystemFill}) => CupertinoSlidingSegmentedControlObjectBinding(CupertinoSlidingSegmentedControl(key : key, children : children, onValueChanged : onValueChanged, groupValue : groupValue, thumbColor : thumbColor, padding : padding, backgroundColor : backgroundColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoSlidingSegmentedControlObjectBinding extends HT_ExternObject<CupertinoSlidingSegmentedControl> {
  CupertinoSlidingSegmentedControlObjectBinding(CupertinoSlidingSegmentedControl value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoSlidingSegmentedControl');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'children':
        return externObject.children;
      case 'groupValue':
        return externObject.groupValue;
      case 'onValueChanged':
        return externObject.onValueChanged;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'thumbColor':
        return externObject.thumbColor;
      case 'padding':
        return externObject.padding;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

