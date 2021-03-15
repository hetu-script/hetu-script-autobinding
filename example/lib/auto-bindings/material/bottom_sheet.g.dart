import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';


class BottomSheetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BottomSheet':
        return ({key, animationController, enableDrag = true, onDragStart, onDragEnd, backgroundColor, elevation, shape, clipBehavior, onClosing, builder}) => BottomSheetObjectBinding(BottomSheet(key : key, animationController : animationController, enableDrag : enableDrag, onDragStart : onDragStart, onDragEnd : onDragEnd, backgroundColor : backgroundColor, elevation : elevation, shape : shape, clipBehavior : clipBehavior, onClosing : onClosing, builder : builder));
      case 'createAnimationController':
        return (vsync) => BottomSheet.createAnimationController(vsync);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BottomSheetObjectBinding extends HT_ExternObject<BottomSheet> {
  BottomSheetObjectBinding(BottomSheet value) : super(value);

  @override
  final typeid = HT_TypeId('BottomSheet');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'animationController':
        return externObject.animationController;
      case 'onClosing':
        return externObject.onClosing;
      case 'builder':
        return externObject.builder;
      case 'enableDrag':
        return externObject.enableDrag;
      case 'onDragStart':
        return externObject.onDragStart;
      case 'onDragEnd':
        return externObject.onDragEnd;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

