import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/semantics.dart';

class CacheExtentStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'pixel':
        return CacheExtentStyle.pixel;
      case 'viewport':
        return CacheExtentStyle.viewport;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RevealedOffsetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RevealedOffset':
        return ({offset, rect}) => RevealedOffsetObjectBinding(RevealedOffset(offset : offset, rect : rect));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RevealedOffsetObjectBinding extends HT_ExternObject<RevealedOffset> {
  RevealedOffsetObjectBinding(RevealedOffset value) : super(value);

  @override
  final typeid = HT_TypeId('RevealedOffset');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offset':
        return externObject.offset;
      case 'rect':
        return externObject.rect;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderViewport':
        return ({axisDirection = AxisDirection.down, crossAxisDirection, offset, anchor = 0.0, children, center, cacheExtent, cacheExtentStyle = CacheExtentStyle.pixel, clipBehavior = Clip.hardEdge}) => RenderViewportObjectBinding(RenderViewport(axisDirection : axisDirection, crossAxisDirection : crossAxisDirection, offset : offset, anchor : anchor, children : children, center : center, cacheExtent : cacheExtent, cacheExtentStyle : cacheExtentStyle, clipBehavior : clipBehavior));
      case 'RenderViewport.useTwoPaneSemantics':
        return RenderViewport.useTwoPaneSemantics;
      case 'RenderViewport.excludeFromScrolling':
        return RenderViewport.excludeFromScrolling;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderViewportObjectBinding extends HT_ExternObject<RenderViewport> {
  RenderViewportObjectBinding(RenderViewport value) : super(value);

  @override
  final typeid = HT_TypeId('RenderViewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'anchor':
        return externObject.anchor;
      case 'center':
        return externObject.center;
      case 'sizedByParent':
        return externObject.sizedByParent;
      case 'hasVisualOverflow':
        return externObject.hasVisualOverflow;
      case 'indexOfFirstChild':
        return externObject.indexOfFirstChild;
      case 'childrenInPaintOrder':
        return externObject.childrenInPaintOrder;
      case 'childrenInHitTestOrder':
        return externObject.childrenInHitTestOrder;
      case 'setupParentData':
        return externObject.setupParentData;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'updateOutOfBandData':
        return externObject.updateOutOfBandData;
      case 'updateChildLayoutOffset':
        return externObject.updateChildLayoutOffset;
      case 'paintOffsetOf':
        return externObject.paintOffsetOf;
      case 'scrollOffsetOf':
        return externObject.scrollOffsetOf;
      case 'maxScrollObstructionExtentBefore':
        return externObject.maxScrollObstructionExtentBefore;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'computeChildMainAxisPosition':
        return externObject.computeChildMainAxisPosition;
      case 'labelForChild':
        return externObject.labelForChild;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'anchor':
        externObject.anchor = value;
        break;
      case 'center':
        externObject.center = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderShrinkWrappingViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderShrinkWrappingViewport':
        return ({axisDirection = AxisDirection.down, crossAxisDirection, offset, clipBehavior = Clip.hardEdge, children}) => RenderShrinkWrappingViewportObjectBinding(RenderShrinkWrappingViewport(axisDirection : axisDirection, crossAxisDirection : crossAxisDirection, offset : offset, clipBehavior : clipBehavior, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderShrinkWrappingViewportObjectBinding extends HT_ExternObject<RenderShrinkWrappingViewport> {
  RenderShrinkWrappingViewportObjectBinding(RenderShrinkWrappingViewport value) : super(value);

  @override
  final typeid = HT_TypeId('RenderShrinkWrappingViewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hasVisualOverflow':
        return externObject.hasVisualOverflow;
      case 'indexOfFirstChild':
        return externObject.indexOfFirstChild;
      case 'childrenInPaintOrder':
        return externObject.childrenInPaintOrder;
      case 'childrenInHitTestOrder':
        return externObject.childrenInHitTestOrder;
      case 'setupParentData':
        return externObject.setupParentData;
      case 'debugThrowIfNotCheckingIntrinsics':
        return externObject.debugThrowIfNotCheckingIntrinsics;
      case 'performLayout':
        return externObject.performLayout;
      case 'updateOutOfBandData':
        return externObject.updateOutOfBandData;
      case 'updateChildLayoutOffset':
        return externObject.updateChildLayoutOffset;
      case 'paintOffsetOf':
        return externObject.paintOffsetOf;
      case 'scrollOffsetOf':
        return externObject.scrollOffsetOf;
      case 'maxScrollObstructionExtentBefore':
        return externObject.maxScrollObstructionExtentBefore;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'computeChildMainAxisPosition':
        return externObject.computeChildMainAxisPosition;
      case 'labelForChild':
        return externObject.labelForChild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

