import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;


class RenderSliverFillViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverFillViewport':
        return ({childManager, viewportFraction = 1.0}) => RenderSliverFillViewportObjectBinding(RenderSliverFillViewport(childManager : childManager, viewportFraction : viewportFraction));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverFillViewportObjectBinding extends HT_ExternObject<RenderSliverFillViewport> {
  RenderSliverFillViewportObjectBinding(RenderSliverFillViewport value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverFillViewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemExtent':
        return externObject.itemExtent;
      case 'viewportFraction':
        return externObject.viewportFraction;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'viewportFraction':
        externObject.viewportFraction = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverFillRemainingWithScrollableClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverFillRemainingWithScrollable':
        return ({child}) => RenderSliverFillRemainingWithScrollableObjectBinding(RenderSliverFillRemainingWithScrollable(child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverFillRemainingWithScrollableObjectBinding extends HT_ExternObject<RenderSliverFillRemainingWithScrollable> {
  RenderSliverFillRemainingWithScrollableObjectBinding(RenderSliverFillRemainingWithScrollable value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverFillRemainingWithScrollable');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'performLayout':
        return externObject.performLayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderSliverFillRemainingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverFillRemaining':
        return ({child}) => RenderSliverFillRemainingObjectBinding(RenderSliverFillRemaining(child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverFillRemainingObjectBinding extends HT_ExternObject<RenderSliverFillRemaining> {
  RenderSliverFillRemainingObjectBinding(RenderSliverFillRemaining value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverFillRemaining');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'performLayout':
        return externObject.performLayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderSliverFillRemainingAndOverscrollClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverFillRemainingAndOverscroll':
        return ({child}) => RenderSliverFillRemainingAndOverscrollObjectBinding(RenderSliverFillRemainingAndOverscroll(child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverFillRemainingAndOverscrollObjectBinding extends HT_ExternObject<RenderSliverFillRemainingAndOverscroll> {
  RenderSliverFillRemainingAndOverscrollObjectBinding(RenderSliverFillRemainingAndOverscroll value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverFillRemainingAndOverscroll');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'performLayout':
        return externObject.performLayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

