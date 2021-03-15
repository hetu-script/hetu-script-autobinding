import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/animation.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';

class AnimationBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'normal':
        return AnimationBehavior.normal;
      case 'preserve':
        return AnimationBehavior.preserve;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimationControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimationController':
        return ({value, duration, reverseDuration, debugLabel, lowerBound = 0.0, upperBound = 1.0, animationBehavior = AnimationBehavior.normal, vsync}) => AnimationControllerObjectBinding(AnimationController(value : value, duration : duration, reverseDuration : reverseDuration, debugLabel : debugLabel, lowerBound : lowerBound, upperBound : upperBound, animationBehavior : animationBehavior, vsync : vsync));
      case 'AnimationController.unbounded':
        return ({value = 0.0, duration, reverseDuration, debugLabel, vsync, animationBehavior = AnimationBehavior.preserve}) => AnimationControllerObjectBinding(AnimationController.unbounded(value : value, duration : duration, reverseDuration : reverseDuration, debugLabel : debugLabel, vsync : vsync, animationBehavior : animationBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimationControllerObjectBinding extends HT_ExternObject<AnimationController> {
  AnimationControllerObjectBinding(AnimationController value) : super(value);

  @override
  final typeid = HT_TypeId('AnimationController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lowerBound':
        return externObject.lowerBound;
      case 'upperBound':
        return externObject.upperBound;
      case 'debugLabel':
        return externObject.debugLabel;
      case 'animationBehavior':
        return externObject.animationBehavior;
      case 'duration':
        return externObject.duration;
      case 'reverseDuration':
        return externObject.reverseDuration;
      case 'view':
        return externObject.view;
      case 'value':
        return externObject.value;
      case 'velocity':
        return externObject.velocity;
      case 'lastElapsedDuration':
        return externObject.lastElapsedDuration;
      case 'isAnimating':
        return externObject.isAnimating;
      case 'status':
        return externObject.status;
      case 'resync':
        return externObject.resync;
      case 'reset':
        return externObject.reset;
      case 'forward':
        return externObject.forward;
      case 'reverse':
        return externObject.reverse;
      case 'animateTo':
        return externObject.animateTo;
      case 'animateBack':
        return externObject.animateBack;
      case 'repeat':
        return externObject.repeat;
      case 'fling':
        return externObject.fling;
      case 'animateWith':
        return externObject.animateWith;
      case 'stop':
        return externObject.stop;
      case 'dispose':
        return externObject.dispose;
      case 'toStringDetails':
        return externObject.toStringDetails;
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
      case 'value':
        externObject.value = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

