import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'package:flutter/animation.dart';


class ListWheelParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListWheelParentData':
        return () => ListWheelParentDataObjectBinding(ListWheelParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListWheelParentDataObjectBinding extends HT_ExternObject<ListWheelParentData> {
  ListWheelParentDataObjectBinding(ListWheelParentData value) : super(value);

  @override
  final typeid = HT_TypeId('ListWheelParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'index':
        return externObject.index;
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

class RenderListWheelViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderListWheelViewport':
        return ({childManager, offset, diameterRatio = defaultDiameterRatio, perspective = defaultPerspective, offAxisFraction = 0, useMagnifier = false, magnification = 1, overAndUnderCenterOpacity = 1, itemExtent, squeeze = 1, renderChildrenOutsideViewport = false, clipBehavior = Clip.none, children}) => RenderListWheelViewportObjectBinding(RenderListWheelViewport(childManager : childManager, offset : offset, diameterRatio : diameterRatio, perspective : perspective, offAxisFraction : offAxisFraction, useMagnifier : useMagnifier, magnification : magnification, overAndUnderCenterOpacity : overAndUnderCenterOpacity, itemExtent : itemExtent, squeeze : squeeze, renderChildrenOutsideViewport : renderChildrenOutsideViewport, clipBehavior : clipBehavior, children : children));
      case 'RenderListWheelViewport.defaultDiameterRatio':
        return RenderListWheelViewport.defaultDiameterRatio;
      case 'RenderListWheelViewport.defaultPerspective':
        return RenderListWheelViewport.defaultPerspective;
      case 'RenderListWheelViewport.diameterRatioZeroMessage':
        return RenderListWheelViewport.diameterRatioZeroMessage;
      case 'RenderListWheelViewport.perspectiveTooHighMessage':
        return RenderListWheelViewport.perspectiveTooHighMessage;
      case 'RenderListWheelViewport.clipBehaviorAndRenderChildrenOutsideViewportConflict':
        return RenderListWheelViewport.clipBehaviorAndRenderChildrenOutsideViewportConflict;
      default:
        throw HTErr_Undefined(id);
    }
  }
  static const defaultDiameterRatio = 2.0;
  static const defaultPerspective = 0.003;
}

class RenderListWheelViewportObjectBinding extends HT_ExternObject<RenderListWheelViewport> {
  RenderListWheelViewportObjectBinding(RenderListWheelViewport value) : super(value);

  @override
  final typeid = HT_TypeId('RenderListWheelViewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'childManager':
        return externObject.childManager;
      case 'offset':
        return externObject.offset;
      case 'diameterRatio':
        return externObject.diameterRatio;
      case 'perspective':
        return externObject.perspective;
      case 'offAxisFraction':
        return externObject.offAxisFraction;
      case 'useMagnifier':
        return externObject.useMagnifier;
      case 'magnification':
        return externObject.magnification;
      case 'overAndUnderCenterOpacity':
        return externObject.overAndUnderCenterOpacity;
      case 'itemExtent':
        return externObject.itemExtent;
      case 'squeeze':
        return externObject.squeeze;
      case 'renderChildrenOutsideViewport':
        return externObject.renderChildrenOutsideViewport;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'isRepaintBoundary':
        return externObject.isRepaintBoundary;
      case 'sizedByParent':
        return externObject.sizedByParent;
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
      case 'indexOf':
        return externObject.indexOf;
      case 'scrollOffsetToIndex':
        return externObject.scrollOffsetToIndex;
      case 'indexToScrollOffset':
        return externObject.indexToScrollOffset;
      case 'performLayout':
        return externObject.performLayout;
      case 'paint':
        return externObject.paint;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'describeApproximatePaintClip':
        return externObject.describeApproximatePaintClip;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'getOffsetToReveal':
        return externObject.getOffsetToReveal;
      case 'showOnScreen':
        return externObject.showOnScreen;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'offset':
        externObject.offset = value;
        break;
      case 'diameterRatio':
        externObject.diameterRatio = value;
        break;
      case 'perspective':
        externObject.perspective = value;
        break;
      case 'offAxisFraction':
        externObject.offAxisFraction = value;
        break;
      case 'useMagnifier':
        externObject.useMagnifier = value;
        break;
      case 'magnification':
        externObject.magnification = value;
        break;
      case 'overAndUnderCenterOpacity':
        externObject.overAndUnderCenterOpacity = value;
        break;
      case 'itemExtent':
        externObject.itemExtent = value;
        break;
      case 'squeeze':
        externObject.squeeze = value;
        break;
      case 'renderChildrenOutsideViewport':
        externObject.renderChildrenOutsideViewport = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

