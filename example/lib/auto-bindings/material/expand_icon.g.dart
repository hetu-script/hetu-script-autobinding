import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';


class ExpandIconClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ExpandIcon':
        return ({key, isExpanded = false, size = 24.0, onPressed, padding = const EdgeInsets.all(8.0), color, disabledColor, expandedColor}) => ExpandIconObjectBinding(ExpandIcon(key : key, isExpanded : isExpanded, size : size, onPressed : onPressed, padding : padding, color : color, disabledColor : disabledColor, expandedColor : expandedColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExpandIconObjectBinding extends HT_ExternObject<ExpandIcon> {
  ExpandIconObjectBinding(ExpandIcon value) : super(value);

  @override
  final typeid = HT_TypeId('ExpandIcon');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isExpanded':
        return externObject.isExpanded;
      case 'size':
        return externObject.size;
      case 'onPressed':
        return externObject.onPressed;
      case 'padding':
        return externObject.padding;
      case 'color':
        return externObject.color;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'expandedColor':
        return externObject.expandedColor;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

