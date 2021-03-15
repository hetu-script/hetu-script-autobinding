import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/semantics.dart';


class CustomPainterSemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CustomPainterSemantics':
        return ({key, rect, properties, transform, tags}) => CustomPainterSemanticsObjectBinding(CustomPainterSemantics(key : key, rect : rect, properties : properties, transform : transform, tags : tags));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CustomPainterSemanticsObjectBinding extends HT_ExternObject<CustomPainterSemantics> {
  CustomPainterSemanticsObjectBinding(CustomPainterSemantics value) : super(value);

  @override
  final typeid = HT_TypeId('CustomPainterSemantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'key':
        return externObject.key;
      case 'rect':
        return externObject.rect;
      case 'transform':
        return externObject.transform;
      case 'properties':
        return externObject.properties;
      case 'tags':
        return externObject.tags;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderCustomPaintClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderCustomPaint':
        return ({painter, foregroundPainter, preferredSize = Size.zero, isComplex = false, willChange = false, child}) => RenderCustomPaintObjectBinding(RenderCustomPaint(painter : painter, foregroundPainter : foregroundPainter, preferredSize : preferredSize, isComplex : isComplex, willChange : willChange, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderCustomPaintObjectBinding extends HT_ExternObject<RenderCustomPaint> {
  RenderCustomPaintObjectBinding(RenderCustomPaint value) : super(value);

  @override
  final typeid = HT_TypeId('RenderCustomPaint');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isComplex':
        return externObject.isComplex;
      case 'willChange':
        return externObject.willChange;
      case 'painter':
        return externObject.painter;
      case 'foregroundPainter':
        return externObject.foregroundPainter;
      case 'preferredSize':
        return externObject.preferredSize;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'hitTestSelf':
        return externObject.hitTestSelf;
      case 'performLayout':
        return externObject.performLayout;
      case 'computeSizeForNoChild':
        return externObject.computeSizeForNoChild;
      case 'paint':
        return externObject.paint;
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      case 'assembleSemanticsNode':
        return externObject.assembleSemanticsNode;
      case 'clearSemantics':
        return externObject.clearSemantics;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'isComplex':
        externObject.isComplex = value;
        break;
      case 'willChange':
        externObject.willChange = value;
        break;
      case 'painter':
        externObject.painter = value;
        break;
      case 'foregroundPainter':
        externObject.foregroundPainter = value;
        break;
      case 'preferredSize':
        externObject.preferredSize = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

