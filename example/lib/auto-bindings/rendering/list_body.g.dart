import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;


class ListBodyParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListBodyParentData':
        return () => ListBodyParentDataObjectBinding(ListBodyParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListBodyParentDataObjectBinding extends HT_ExternObject<ListBodyParentData> {
  ListBodyParentDataObjectBinding(ListBodyParentData value) : super(value);

  @override
  final typeid = HT_TypeId('ListBodyParentData');


}

class RenderListBodyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderListBody':
        return ({children, axisDirection = AxisDirection.down}) => RenderListBodyObjectBinding(RenderListBody(children : children, axisDirection : axisDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderListBodyObjectBinding extends HT_ExternObject<RenderListBody> {
  RenderListBodyObjectBinding(RenderListBody value) : super(value);

  @override
  final typeid = HT_TypeId('RenderListBody');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'axisDirection':
        return externObject.axisDirection;
      case 'mainAxis':
        return externObject.mainAxis;
      case 'setupParentData':
        return externObject.setupParentData;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'computeDistanceToActualBaseline':
        return externObject.computeDistanceToActualBaseline;
      case 'paint':
        return externObject.paint;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'axisDirection':
        externObject.axisDirection = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

