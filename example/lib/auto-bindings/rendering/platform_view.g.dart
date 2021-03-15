import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';

class PlatformViewHitTestBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'opaque':
        return PlatformViewHitTestBehavior.opaque;
      case 'translucent':
        return PlatformViewHitTestBehavior.translucent;
      case 'transparent':
        return PlatformViewHitTestBehavior.transparent;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAndroidViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderAndroidView':
        return ({viewController, hitTestBehavior, gestureRecognizers, clipBehavior = Clip.hardEdge}) => RenderAndroidViewObjectBinding(RenderAndroidView(viewController : viewController, hitTestBehavior : hitTestBehavior, gestureRecognizers : gestureRecognizers, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAndroidViewObjectBinding extends HT_ExternObject<RenderAndroidView> {
  RenderAndroidViewObjectBinding(RenderAndroidView value) : super(value);

  @override
  final typeid = HT_TypeId('RenderAndroidView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'viewcontroller':
        return externObject.viewcontroller;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'sizedByParent':
        return externObject.sizedByParent;
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'isRepaintBoundary':
        return externObject.isRepaintBoundary;
      case 'updateGestureRecognizers':
        return externObject.updateGestureRecognizers;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performResize':
        return externObject.performResize;
      case 'paint':
        return externObject.paint;
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'viewController':
        externObject.viewController = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderUiKitViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderUiKitView':
        return ({viewController, hitTestBehavior, gestureRecognizers}) => RenderUiKitViewObjectBinding(RenderUiKitView(viewController : viewController, hitTestBehavior : hitTestBehavior, gestureRecognizers : gestureRecognizers));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderUiKitViewObjectBinding extends HT_ExternObject<RenderUiKitView> {
  RenderUiKitViewObjectBinding(RenderUiKitView value) : super(value);

  @override
  final typeid = HT_TypeId('RenderUiKitView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hitTestBehavior':
        return externObject.hitTestBehavior;
      case 'viewController':
        return externObject.viewController;
      case 'sizedByParent':
        return externObject.sizedByParent;
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'isRepaintBoundary':
        return externObject.isRepaintBoundary;
      case 'updateGestureRecognizers':
        return externObject.updateGestureRecognizers;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'paint':
        return externObject.paint;
      case 'hitTest':
        return externObject.hitTest;
      case 'hitTestSelf':
        return externObject.hitTestSelf;
      case 'handleEvent':
        return externObject.handleEvent;
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'hitTestBehavior':
        externObject.hitTestBehavior = value;
        break;
      case 'viewController':
        externObject.viewController = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformViewRenderBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PlatformViewRenderBox':
        return ({controller, hitTestBehavior, gestureRecognizers}) => PlatformViewRenderBoxObjectBinding(PlatformViewRenderBox(controller : controller, hitTestBehavior : hitTestBehavior, gestureRecognizers : gestureRecognizers));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformViewRenderBoxObjectBinding extends HT_ExternObject<PlatformViewRenderBox> {
  PlatformViewRenderBoxObjectBinding(PlatformViewRenderBox value) : super(value);

  @override
  final typeid = HT_TypeId('PlatformViewRenderBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'sizedByParent':
        return externObject.sizedByParent;
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'isRepaintBoundary':
        return externObject.isRepaintBoundary;
      case 'updateGestureRecognizers':
        return externObject.updateGestureRecognizers;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'paint':
        return externObject.paint;
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'controller':
        externObject.controller = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

