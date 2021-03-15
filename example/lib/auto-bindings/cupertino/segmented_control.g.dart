import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:collection';
import 'dart:math'as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class CupertinoSegmentedControlClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoSegmentedControl':
        return ({key, children, onValueChanged, groupValue, unselectedColor, selectedColor, borderColor, pressedColor, padding}) => CupertinoSegmentedControlObjectBinding(CupertinoSegmentedControl<Object>(key : key, children : children, onValueChanged : onValueChanged, groupValue : groupValue, unselectedColor : unselectedColor, selectedColor : selectedColor, borderColor : borderColor, pressedColor : pressedColor, padding : padding));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoSegmentedControlObjectBinding extends HT_ExternObject<CupertinoSegmentedControl> {
  CupertinoSegmentedControlObjectBinding(CupertinoSegmentedControl value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoSegmentedControl');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'children':
        return externObject.children;
      case 'groupValue':
        return externObject.groupValue;
      case 'onValueChanged':
        return externObject.onValueChanged;
      case 'unselectedColor':
        return externObject.unselectedColor;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'borderColor':
        return externObject.borderColor;
      case 'pressedColor':
        return externObject.pressedColor;
      case 'padding':
        return externObject.padding;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

