import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;

class WrapAlignmentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return WrapAlignment.start;
      case 'end':
        return WrapAlignment.end;
      case 'center':
        return WrapAlignment.center;
      case 'spaceBetween':
        return WrapAlignment.spaceBetween;
      case 'spaceAround':
        return WrapAlignment.spaceAround;
      case 'spaceEvenly':
        return WrapAlignment.spaceEvenly;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class WrapCrossAlignmentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return WrapCrossAlignment.start;
      case 'end':
        return WrapCrossAlignment.end;
      case 'center':
        return WrapCrossAlignment.center;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WrapParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WrapParentData':
        return () => WrapParentDataObjectBinding(WrapParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WrapParentDataObjectBinding extends HT_ExternObject<WrapParentData> {
  WrapParentDataObjectBinding(WrapParentData value) : super(value);

  @override
  final typeid = HT_TypeId('WrapParentData');


}

class RenderWrapClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderWrap':
        return ({children, direction = Axis.horizontal, alignment = WrapAlignment.start, spacing = 0.0, runAlignment = WrapAlignment.start, runSpacing = 0.0, crossAxisAlignment = WrapCrossAlignment.start, textDirection, verticalDirection = VerticalDirection.down, clipBehavior = Clip.none}) => RenderWrapObjectBinding(RenderWrap(children : children, direction : direction, alignment : alignment, spacing : spacing, runAlignment : runAlignment, runSpacing : runSpacing, crossAxisAlignment : crossAxisAlignment, textDirection : textDirection, verticalDirection : verticalDirection, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderWrapObjectBinding extends HT_ExternObject<RenderWrap> {
  RenderWrapObjectBinding(RenderWrap value) : super(value);

  @override
  final typeid = HT_TypeId('RenderWrap');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'direction':
        return externObject.direction;
      case 'alignment':
        return externObject.alignment;
      case 'spacing':
        return externObject.spacing;
      case 'runAlignment':
        return externObject.runAlignment;
      case 'runSpacing':
        return externObject.runSpacing;
      case 'crossAxisAlignment':
        return externObject.crossAxisAlignment;
      case 'textDirection':
        return externObject.textDirection;
      case 'verticalDirection':
        return externObject.verticalDirection;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'setupParentData':
        return externObject.setupParentData;
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
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'paint':
        return externObject.paint;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'direction':
        externObject.direction = value;
        break;
      case 'alignment':
        externObject.alignment = value;
        break;
      case 'spacing':
        externObject.spacing = value;
        break;
      case 'runAlignment':
        externObject.runAlignment = value;
        break;
      case 'runSpacing':
        externObject.runSpacing = value;
        break;
      case 'crossAxisAlignment':
        externObject.crossAxisAlignment = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'verticalDirection':
        externObject.verticalDirection = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

