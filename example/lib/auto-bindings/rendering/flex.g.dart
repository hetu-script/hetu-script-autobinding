import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';

class FlexFitClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tight':
        return FlexFit.tight;
      case 'loose':
        return FlexFit.loose;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class MainAxisSizeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'min':
        return MainAxisSize.min;
      case 'max':
        return MainAxisSize.max;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class MainAxisAlignmentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return MainAxisAlignment.start;
      case 'end':
        return MainAxisAlignment.end;
      case 'center':
        return MainAxisAlignment.center;
      case 'spaceBetween':
        return MainAxisAlignment.spaceBetween;
      case 'spaceAround':
        return MainAxisAlignment.spaceAround;
      case 'spaceEvenly':
        return MainAxisAlignment.spaceEvenly;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class CrossAxisAlignmentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return CrossAxisAlignment.start;
      case 'end':
        return CrossAxisAlignment.end;
      case 'center':
        return CrossAxisAlignment.center;
      case 'stretch':
        return CrossAxisAlignment.stretch;
      case 'baseline':
        return CrossAxisAlignment.baseline;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlexParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlexParentData':
        return () => FlexParentDataObjectBinding(FlexParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlexParentDataObjectBinding extends HT_ExternObject<FlexParentData> {
  FlexParentDataObjectBinding(FlexParentData value) : super(value);

  @override
  final typeid = HT_TypeId('FlexParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'flex':
        return externObject.flex;
      case 'fit':
        return externObject.fit;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'flex':
        externObject.flex = value;
        break;
      case 'fit':
        externObject.fit = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFlexClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderFlex':
        return ({children, direction = Axis.horizontal, mainAxisSize = MainAxisSize.max, mainAxisAlignment = MainAxisAlignment.start, crossAxisAlignment = CrossAxisAlignment.center, textDirection, verticalDirection = VerticalDirection.down, textBaseline, clipBehavior = Clip.none}) => RenderFlexObjectBinding(RenderFlex(children : children, direction : direction, mainAxisSize : mainAxisSize, mainAxisAlignment : mainAxisAlignment, crossAxisAlignment : crossAxisAlignment, textDirection : textDirection, verticalDirection : verticalDirection, textBaseline : textBaseline, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFlexObjectBinding extends HT_ExternObject<RenderFlex> {
  RenderFlexObjectBinding(RenderFlex value) : super(value);

  @override
  final typeid = HT_TypeId('RenderFlex');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'direction':
        return externObject.direction;
      case 'mainAxisAlignment':
        return externObject.mainAxisAlignment;
      case 'mainAxisSize':
        return externObject.mainAxisSize;
      case 'crossAxisAlignment':
        return externObject.crossAxisAlignment;
      case 'textDirection':
        return externObject.textDirection;
      case 'verticalDirection':
        return externObject.verticalDirection;
      case 'textBaseline':
        return externObject.textBaseline;
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
      case 'describeApproximatePaintClip':
        return externObject.describeApproximatePaintClip;
      case 'toStringShort':
        return externObject.toStringShort;
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
      case 'mainAxisAlignment':
        externObject.mainAxisAlignment = value;
        break;
      case 'mainAxisSize':
        externObject.mainAxisSize = value;
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
      case 'textBaseline':
        externObject.textBaseline = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

