import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';

class RenderAnimatedSizeStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return RenderAnimatedSizeState.start;
      case 'stable':
        return RenderAnimatedSizeState.stable;
      case 'changed':
        return RenderAnimatedSizeState.changed;
      case 'unstable':
        return RenderAnimatedSizeState.unstable;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAnimatedSizeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderAnimatedSize':
        return ({vsync, duration, reverseDuration, curve = Curves.linear, alignment = Alignment.center, textDirection, child, clipBehavior = Clip.hardEdge}) => RenderAnimatedSizeObjectBinding(RenderAnimatedSize(vsync : vsync, duration : duration, reverseDuration : reverseDuration, curve : curve, alignment : alignment, textDirection : textDirection, child : child, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAnimatedSizeObjectBinding extends HT_ExternObject<RenderAnimatedSize> {
  RenderAnimatedSizeObjectBinding(RenderAnimatedSize value) : super(value);

  @override
  final typeid = HT_TypeId('RenderAnimatedSize');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'state':
        return externObject.state;
      case 'duration':
        return externObject.duration;
      case 'reverseDuration':
        return externObject.reverseDuration;
      case 'curve':
        return externObject.curve;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'isAnimating':
        return externObject.isAnimating;
      case 'vsync':
        return externObject.vsync;
      case 'detach':
        return externObject.detach;
      case 'performLayout':
        return externObject.performLayout;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'duration':
        externObject.duration = value;
        break;
      case 'reverseDuration':
        externObject.reverseDuration = value;
        break;
      case 'curve':
        externObject.curve = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      case 'vsync':
        externObject.vsync = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

