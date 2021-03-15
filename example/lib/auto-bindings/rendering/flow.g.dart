import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';


class FlowParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlowParentData':
        return () => FlowParentDataObjectBinding(FlowParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlowParentDataObjectBinding extends HT_ExternObject<FlowParentData> {
  FlowParentDataObjectBinding(FlowParentData value) : super(value);

  @override
  final typeid = HT_TypeId('FlowParentData');


}

class RenderFlowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderFlow':
        return ({children, delegate, clipBehavior = Clip.hardEdge}) => RenderFlowObjectBinding(RenderFlow(children : children, delegate : delegate, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFlowObjectBinding extends HT_ExternObject<RenderFlow> {
  RenderFlowObjectBinding(RenderFlow value) : super(value);

  @override
  final typeid = HT_TypeId('RenderFlow');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'delegate':
        return externObject.delegate;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'isRepaintBoundary':
        return externObject.isRepaintBoundary;
      case 'setupParentData':
        return externObject.setupParentData;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
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
      case 'getChildSize':
        return externObject.getChildSize;
      case 'paintChild':
        return externObject.paintChild;
      case 'paint':
        return externObject.paint;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'delegate':
        externObject.delegate = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

