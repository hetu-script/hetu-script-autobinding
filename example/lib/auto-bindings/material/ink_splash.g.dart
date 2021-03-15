import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class InkSplashClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InkSplash':
        return ({controller, referenceBox, textDirection, position, color, containedInkWell = false, rectCallback, borderRadius, customBorder, radius, onRemoved}) => InkSplashObjectBinding(InkSplash(controller : controller, referenceBox : referenceBox, textDirection : textDirection, position : position, color : color, containedInkWell : containedInkWell, rectCallback : rectCallback, borderRadius : borderRadius, customBorder : customBorder, radius : radius, onRemoved : onRemoved));
      case 'InkSplash.splashFactory':
        return InkSplash.splashFactory;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InkSplashObjectBinding extends HT_ExternObject<InkSplash> {
  InkSplashObjectBinding(InkSplash value) : super(value);

  @override
  final typeid = HT_TypeId('InkSplash');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'confirm':
        return externObject.confirm;
      case 'cancel':
        return externObject.cancel;
      case 'dispose':
        return externObject.dispose;
      case 'paintFeature':
        return externObject.paintFeature;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

