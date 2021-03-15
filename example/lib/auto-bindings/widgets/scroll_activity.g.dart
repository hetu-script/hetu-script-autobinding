import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';


class IdleScrollActivityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IdleScrollActivity':
        return (delegate) => IdleScrollActivityObjectBinding(IdleScrollActivity(delegate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IdleScrollActivityObjectBinding extends HT_ExternObject<IdleScrollActivity> {
  IdleScrollActivityObjectBinding(IdleScrollActivity value) : super(value);

  @override
  final typeid = HT_TypeId('IdleScrollActivity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'shouldIgnorePointer':
        return externObject.shouldIgnorePointer;
      case 'isScrolling':
        return externObject.isScrolling;
      case 'velocity':
        return externObject.velocity;
      case 'applyNewDimensions':
        return externObject.applyNewDimensions;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HoldScrollActivityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HoldScrollActivity':
        return ({delegate, onHoldCanceled}) => HoldScrollActivityObjectBinding(HoldScrollActivity(delegate : delegate, onHoldCanceled : onHoldCanceled));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HoldScrollActivityObjectBinding extends HT_ExternObject<HoldScrollActivity> {
  HoldScrollActivityObjectBinding(HoldScrollActivity value) : super(value);

  @override
  final typeid = HT_TypeId('HoldScrollActivity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onHoldCanceled':
        return externObject.onHoldCanceled;
      case 'shouldIgnorePointer':
        return externObject.shouldIgnorePointer;
      case 'isScrolling':
        return externObject.isScrolling;
      case 'velocity':
        return externObject.velocity;
      case 'cancel':
        return externObject.cancel;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScrollDragControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollDragController':
        return ({delegate, details, onDragCanceled, carriedVelocity, motionStartDistanceThreshold}) => ScrollDragControllerObjectBinding(ScrollDragController(delegate : delegate, details : details, onDragCanceled : onDragCanceled, carriedVelocity : carriedVelocity, motionStartDistanceThreshold : motionStartDistanceThreshold));
      case 'ScrollDragController.momentumRetainStationaryDurationThreshold':
        return ScrollDragController.momentumRetainStationaryDurationThreshold;
      case 'ScrollDragController.motionStoppedDurationThreshold':
        return ScrollDragController.motionStoppedDurationThreshold;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollDragControllerObjectBinding extends HT_ExternObject<ScrollDragController> {
  ScrollDragControllerObjectBinding(ScrollDragController value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollDragController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onDragCanceled':
        return externObject.onDragCanceled;
      case 'carriedVelocity':
        return externObject.carriedVelocity;
      case 'motionStartDistanceThreshold':
        return externObject.motionStartDistanceThreshold;
      case 'delegate':
        return externObject.delegate;
      case 'lastDetails':
        return externObject.lastDetails;
      case 'updateDelegate':
        return externObject.updateDelegate;
      case 'update':
        return externObject.update;
      case 'end':
        return externObject.end;
      case 'cancel':
        return externObject.cancel;
      case 'dispose':
        return externObject.dispose;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DragScrollActivityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DragScrollActivity':
        return (delegate, controller) => DragScrollActivityObjectBinding(DragScrollActivity(delegate, controller));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DragScrollActivityObjectBinding extends HT_ExternObject<DragScrollActivity> {
  DragScrollActivityObjectBinding(DragScrollActivity value) : super(value);

  @override
  final typeid = HT_TypeId('DragScrollActivity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'shouldIgnorePointer':
        return externObject.shouldIgnorePointer;
      case 'isScrolling':
        return externObject.isScrolling;
      case 'velocity':
        return externObject.velocity;
      case 'dispatchScrollStartNotification':
        return externObject.dispatchScrollStartNotification;
      case 'dispatchScrollUpdateNotification':
        return externObject.dispatchScrollUpdateNotification;
      case 'dispatchOverscrollNotification':
        return externObject.dispatchOverscrollNotification;
      case 'dispatchScrollEndNotification':
        return externObject.dispatchScrollEndNotification;
      case 'dispose':
        return externObject.dispose;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BallisticScrollActivityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BallisticScrollActivity':
        return (delegate, simulation, vsync) => BallisticScrollActivityObjectBinding(BallisticScrollActivity(delegate, simulation, vsync));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BallisticScrollActivityObjectBinding extends HT_ExternObject<BallisticScrollActivity> {
  BallisticScrollActivityObjectBinding(BallisticScrollActivity value) : super(value);

  @override
  final typeid = HT_TypeId('BallisticScrollActivity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'shouldIgnorePointer':
        return externObject.shouldIgnorePointer;
      case 'isScrolling':
        return externObject.isScrolling;
      case 'velocity':
        return externObject.velocity;
      case 'resetActivity':
        return externObject.resetActivity;
      case 'applyNewDimensions':
        return externObject.applyNewDimensions;
      case 'applyMoveTo':
        return externObject.applyMoveTo;
      case 'dispatchOverscrollNotification':
        return externObject.dispatchOverscrollNotification;
      case 'dispose':
        return externObject.dispose;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DrivenScrollActivityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DrivenScrollActivity':
        return (delegate, {from, to, duration, curve, vsync}) => DrivenScrollActivityObjectBinding(DrivenScrollActivity(delegate, from : from, to : to, duration : duration, curve : curve, vsync : vsync));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DrivenScrollActivityObjectBinding extends HT_ExternObject<DrivenScrollActivity> {
  DrivenScrollActivityObjectBinding(DrivenScrollActivity value) : super(value);

  @override
  final typeid = HT_TypeId('DrivenScrollActivity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'done':
        return externObject.done;
      case 'shouldIgnorePointer':
        return externObject.shouldIgnorePointer;
      case 'isScrolling':
        return externObject.isScrolling;
      case 'velocity':
        return externObject.velocity;
      case 'dispatchOverscrollNotification':
        return externObject.dispatchOverscrollNotification;
      case 'dispose':
        return externObject.dispose;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

