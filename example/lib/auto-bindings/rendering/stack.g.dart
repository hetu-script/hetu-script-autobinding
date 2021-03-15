import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';

class StackFitClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'loose':
        return StackFit.loose;
      case 'expand':
        return StackFit.expand;
      case 'passthrough':
        return StackFit.passthrough;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class OverflowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'visible':
        return Overflow.visible;
      case 'clip':
        return Overflow.clip;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RelativeRectClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RelativeRect.fromLTRB':
        return (left, top, right, bottom) => RelativeRectObjectBinding(RelativeRect.fromLTRB(left, top, right, bottom));
      case 'lerp':
        return (a, b, t) => RelativeRect.lerp(a, b, t);
      case 'RelativeRect.fill':
        return RelativeRect.fill;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RelativeRectObjectBinding extends HT_ExternObject<RelativeRect> {
  RelativeRectObjectBinding(RelativeRect value) : super(value);

  @override
  final typeid = HT_TypeId('RelativeRect');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'left':
        return externObject.left;
      case 'top':
        return externObject.top;
      case 'right':
        return externObject.right;
      case 'bottom':
        return externObject.bottom;
      case 'hasInsets':
        return externObject.hasInsets;
      case 'hashCode':
        return externObject.hashCode;
      case 'shift':
        return externObject.shift;
      case 'inflate':
        return externObject.inflate;
      case 'deflate':
        return externObject.deflate;
      case 'intersect':
        return externObject.intersect;
      case 'toRect':
        return externObject.toRect;
      case 'toSize':
        return externObject.toSize;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StackParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StackParentData':
        return () => StackParentDataObjectBinding(StackParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StackParentDataObjectBinding extends HT_ExternObject<StackParentData> {
  StackParentDataObjectBinding(StackParentData value) : super(value);

  @override
  final typeid = HT_TypeId('StackParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'top':
        return externObject.top;
      case 'right':
        return externObject.right;
      case 'bottom':
        return externObject.bottom;
      case 'left':
        return externObject.left;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'rect':
        return externObject.rect;
      case 'isPositioned':
        return externObject.isPositioned;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'top':
        externObject.top = value;
        break;
      case 'right':
        externObject.right = value;
        break;
      case 'bottom':
        externObject.bottom = value;
        break;
      case 'left':
        externObject.left = value;
        break;
      case 'width':
        externObject.width = value;
        break;
      case 'height':
        externObject.height = value;
        break;
      case 'rect':
        externObject.rect = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderStackClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderStack':
        return ({children, alignment = AlignmentDirectional.topStart, textDirection, fit = StackFit.loose, clipBehavior = Clip.hardEdge}) => RenderStackObjectBinding(RenderStack(children : children, alignment : alignment, textDirection : textDirection, fit : fit, clipBehavior : clipBehavior));
      case 'getIntrinsicDimension':
        return (firstChild, mainChildSizeGetter) => RenderStack.getIntrinsicDimension(firstChild, mainChildSizeGetter);
      case 'layoutPositionedChild':
        return (child, childParentData, size, alignment) => RenderStack.layoutPositionedChild(child, childParentData, size, alignment);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderStackObjectBinding extends HT_ExternObject<RenderStack> {
  RenderStackObjectBinding(RenderStack value) : super(value);

  @override
  final typeid = HT_TypeId('RenderStack');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'textDirection':
        return externObject.textDirection;
      case 'fit':
        return externObject.fit;
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
      case 'paintStack':
        return externObject.paintStack;
      case 'paint':
        return externObject.paint;
      case 'describeApproximatePaintClip':
        return externObject.describeApproximatePaintClip;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'alignment':
        externObject.alignment = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'fit':
        externObject.fit = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderIndexedStackClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderIndexedStack':
        return ({children, alignment = AlignmentDirectional.topStart, textDirection, index = 0}) => RenderIndexedStackObjectBinding(RenderIndexedStack(children : children, alignment : alignment, textDirection : textDirection, index : index));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderIndexedStackObjectBinding extends HT_ExternObject<RenderIndexedStack> {
  RenderIndexedStackObjectBinding(RenderIndexedStack value) : super(value);

  @override
  final typeid = HT_TypeId('RenderIndexedStack');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'index':
        return externObject.index;
      case 'visitChildrenForSemantics':
        return externObject.visitChildrenForSemantics;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'paintStack':
        return externObject.paintStack;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'index':
        externObject.index = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

