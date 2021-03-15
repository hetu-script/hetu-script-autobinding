import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;


class RenderRotatedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderRotatedBox':
        return ({quarterTurns, child}) => RenderRotatedBoxObjectBinding(RenderRotatedBox(quarterTurns : quarterTurns, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderRotatedBoxObjectBinding extends HT_ExternObject<RenderRotatedBox> {
  RenderRotatedBoxObjectBinding(RenderRotatedBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderRotatedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'quarterTurns':
        return externObject.quarterTurns;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'paint':
        return externObject.paint;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'quarterTurns':
        externObject.quarterTurns = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

