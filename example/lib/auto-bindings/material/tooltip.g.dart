import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class TooltipClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Tooltip':
        return ({key, message, height, padding, margin, verticalOffset, preferBelow, excludeFromSemantics, decoration, textStyle, waitDuration, showDuration, child}) => TooltipObjectBinding(Tooltip(key : key, message : message, height : height, padding : padding, margin : margin, verticalOffset : verticalOffset, preferBelow : preferBelow, excludeFromSemantics : excludeFromSemantics, decoration : decoration, textStyle : textStyle, waitDuration : waitDuration, showDuration : showDuration, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TooltipObjectBinding extends HT_ExternObject<Tooltip> {
  TooltipObjectBinding(Tooltip value) : super(value);

  @override
  final typeid = HT_TypeId('Tooltip');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'height':
        return externObject.height;
      case 'padding':
        return externObject.padding;
      case 'margin':
        return externObject.margin;
      case 'verticalOffset':
        return externObject.verticalOffset;
      case 'preferBelow':
        return externObject.preferBelow;
      case 'excludeFromSemantics':
        return externObject.excludeFromSemantics;
      case 'child':
        return externObject.child;
      case 'decoration':
        return externObject.decoration;
      case 'textStyle':
        return externObject.textStyle;
      case 'waitDuration':
        return externObject.waitDuration;
      case 'showDuration':
        return externObject.showDuration;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

