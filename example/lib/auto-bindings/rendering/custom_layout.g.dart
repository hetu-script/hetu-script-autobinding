import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';


class MultiChildLayoutParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MultiChildLayoutParentData':
        return () => MultiChildLayoutParentDataObjectBinding(MultiChildLayoutParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MultiChildLayoutParentDataObjectBinding extends HT_ExternObject<MultiChildLayoutParentData> {
  MultiChildLayoutParentDataObjectBinding(MultiChildLayoutParentData value) : super(value);

  @override
  final typeid = HT_TypeId('MultiChildLayoutParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'id':
        return externObject.id;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'id':
        externObject.id = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderCustomMultiChildLayoutBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderCustomMultiChildLayoutBox':
        return ({children, delegate}) => RenderCustomMultiChildLayoutBoxObjectBinding(RenderCustomMultiChildLayoutBox(children : children, delegate : delegate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderCustomMultiChildLayoutBoxObjectBinding extends HT_ExternObject<RenderCustomMultiChildLayoutBox> {
  RenderCustomMultiChildLayoutBoxObjectBinding(RenderCustomMultiChildLayoutBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderCustomMultiChildLayoutBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'delegate':
        return externObject.delegate;
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
      case 'delegate':
        externObject.delegate = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

