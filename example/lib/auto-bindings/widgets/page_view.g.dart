import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';


class PageControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PageController':
        return ({initialPage = 0, keepPage = true, viewportFraction = 1.0}) => PageControllerObjectBinding(PageController(initialPage : initialPage, keepPage : keepPage, viewportFraction : viewportFraction));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PageControllerObjectBinding extends HT_ExternObject<PageController> {
  PageControllerObjectBinding(PageController value) : super(value);

  @override
  final typeid = HT_TypeId('PageController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initialPage':
        return externObject.initialPage;
      case 'keepPage':
        return externObject.keepPage;
      case 'viewportFraction':
        return externObject.viewportFraction;
      case 'page':
        return externObject.page;
      case 'animateToPage':
        return externObject.animateToPage;
      case 'jumpToPage':
        return externObject.jumpToPage;
      case 'nextPage':
        return externObject.nextPage;
      case 'previousPage':
        return externObject.previousPage;
      case 'createScrollPosition':
        return externObject.createScrollPosition;
      case 'attach':
        return externObject.attach;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PageMetricsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PageMetrics':
        return ({minScrollExtent, maxScrollExtent, pixels, viewportDimension, axisDirection, viewportFraction}) => PageMetricsObjectBinding(PageMetrics(minScrollExtent : minScrollExtent, maxScrollExtent : maxScrollExtent, pixels : pixels, viewportDimension : viewportDimension, axisDirection : axisDirection, viewportFraction : viewportFraction));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PageMetricsObjectBinding extends HT_ExternObject<PageMetrics> {
  PageMetricsObjectBinding(PageMetrics value) : super(value);

  @override
  final typeid = HT_TypeId('PageMetrics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'viewportFraction':
        return externObject.viewportFraction;
      case 'page':
        return externObject.page;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PageScrollPhysicsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PageScrollPhysics':
        return ({parent}) => PageScrollPhysicsObjectBinding(PageScrollPhysics(parent : parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PageScrollPhysicsObjectBinding extends HT_ExternObject<PageScrollPhysics> {
  PageScrollPhysicsObjectBinding(PageScrollPhysics value) : super(value);

  @override
  final typeid = HT_TypeId('PageScrollPhysics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'allowImplicitScrolling':
        return externObject.allowImplicitScrolling;
      case 'applyTo':
        return externObject.applyTo;
      case 'createBallisticSimulation':
        return externObject.createBallisticSimulation;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PageViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PageView':
        return ({key, scrollDirection = Axis.horizontal, reverse = false, controller, physics, pageSnapping = true, onPageChanged, children = const <Widget>[], dragStartBehavior = DragStartBehavior.start, allowImplicitScrolling = false, restorationId, clipBehavior = Clip.hardEdge}) => PageViewObjectBinding(PageView(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, physics : physics, pageSnapping : pageSnapping, onPageChanged : onPageChanged, children : children, dragStartBehavior : dragStartBehavior, allowImplicitScrolling : allowImplicitScrolling, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'PageView.builder':
        return ({key, scrollDirection = Axis.horizontal, reverse = false, controller, physics, pageSnapping = true, onPageChanged, itemBuilder, itemCount, dragStartBehavior = DragStartBehavior.start, allowImplicitScrolling = false, restorationId, clipBehavior = Clip.hardEdge}) => PageViewObjectBinding(PageView.builder(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, physics : physics, pageSnapping : pageSnapping, onPageChanged : onPageChanged, itemBuilder : itemBuilder, itemCount : itemCount, dragStartBehavior : dragStartBehavior, allowImplicitScrolling : allowImplicitScrolling, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'PageView.custom':
        return ({key, scrollDirection = Axis.horizontal, reverse = false, controller, physics, pageSnapping = true, onPageChanged, childrenDelegate, dragStartBehavior = DragStartBehavior.start, allowImplicitScrolling = false, restorationId, clipBehavior = Clip.hardEdge}) => PageViewObjectBinding(PageView.custom(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, physics : physics, pageSnapping : pageSnapping, onPageChanged : onPageChanged, childrenDelegate : childrenDelegate, dragStartBehavior : dragStartBehavior, allowImplicitScrolling : allowImplicitScrolling, restorationId : restorationId, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PageViewObjectBinding extends HT_ExternObject<PageView> {
  PageViewObjectBinding(PageView value) : super(value);

  @override
  final typeid = HT_TypeId('PageView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'allowImplicitScrolling':
        return externObject.allowImplicitScrolling;
      case 'restorationId':
        return externObject.restorationId;
      case 'scrollDirection':
        return externObject.scrollDirection;
      case 'reverse':
        return externObject.reverse;
      case 'controller':
        return externObject.controller;
      case 'physics':
        return externObject.physics;
      case 'pageSnapping':
        return externObject.pageSnapping;
      case 'onPageChanged':
        return externObject.onPageChanged;
      case 'childrenDelegate':
        return externObject.childrenDelegate;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

