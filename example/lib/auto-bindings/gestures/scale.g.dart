import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:math'as math;


class ScaleStartDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaleStartDetails':
        return ({focalPoint = Offset.zero, localFocalPoint, pointerCount = 0}) => ScaleStartDetailsObjectBinding(ScaleStartDetails(focalPoint : focalPoint, localFocalPoint : localFocalPoint, pointerCount : pointerCount));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaleStartDetailsObjectBinding extends HT_ExternObject<ScaleStartDetails> {
  ScaleStartDetailsObjectBinding(ScaleStartDetails value) : super(value);

  @override
  final typeid = HT_TypeId('ScaleStartDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'focalPoint':
        return externObject.focalPoint;
      case 'localFocalPoint':
        return externObject.localFocalPoint;
      case 'pointerCount':
        return externObject.pointerCount;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScaleUpdateDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaleUpdateDetails':
        return ({focalPoint = Offset.zero, localFocalPoint, scale = 1.0, horizontalScale = 1.0, verticalScale = 1.0, rotation = 0.0, pointerCount = 0}) => ScaleUpdateDetailsObjectBinding(ScaleUpdateDetails(focalPoint : focalPoint, localFocalPoint : localFocalPoint, scale : scale, horizontalScale : horizontalScale, verticalScale : verticalScale, rotation : rotation, pointerCount : pointerCount));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaleUpdateDetailsObjectBinding extends HT_ExternObject<ScaleUpdateDetails> {
  ScaleUpdateDetailsObjectBinding(ScaleUpdateDetails value) : super(value);

  @override
  final typeid = HT_TypeId('ScaleUpdateDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'focalPoint':
        return externObject.focalPoint;
      case 'localFocalPoint':
        return externObject.localFocalPoint;
      case 'scale':
        return externObject.scale;
      case 'horizontalScale':
        return externObject.horizontalScale;
      case 'verticalScale':
        return externObject.verticalScale;
      case 'rotation':
        return externObject.rotation;
      case 'pointerCount':
        return externObject.pointerCount;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScaleEndDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaleEndDetails':
        return ({velocity = Velocity.zero, pointerCount = 0}) => ScaleEndDetailsObjectBinding(ScaleEndDetails(velocity : velocity, pointerCount : pointerCount));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaleEndDetailsObjectBinding extends HT_ExternObject<ScaleEndDetails> {
  ScaleEndDetailsObjectBinding(ScaleEndDetails value) : super(value);

  @override
  final typeid = HT_TypeId('ScaleEndDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'velocity':
        return externObject.velocity;
      case 'pointerCount':
        return externObject.pointerCount;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScaleGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaleGestureRecognizer':
        return ({debugOwner, kind, dragStartBehavior = DragStartBehavior.down}) => ScaleGestureRecognizerObjectBinding(ScaleGestureRecognizer(debugOwner : debugOwner, kind : kind, dragStartBehavior : dragStartBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaleGestureRecognizerObjectBinding extends HT_ExternObject<ScaleGestureRecognizer> {
  ScaleGestureRecognizerObjectBinding(ScaleGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('ScaleGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'onStart':
        return externObject.onStart;
      case 'onUpdate':
        return externObject.onUpdate;
      case 'onEnd':
        return externObject.onEnd;
      case 'debugDescription':
        return externObject.debugDescription;
      case 'addAllowedPointer':
        return externObject.addAllowedPointer;
      case 'handleEvent':
        return externObject.handleEvent;
      case 'acceptGesture':
        return externObject.acceptGesture;
      case 'rejectGesture':
        return externObject.rejectGesture;
      case 'didStopTrackingLastPointer':
        return externObject.didStopTrackingLastPointer;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'dragStartBehavior':
        externObject.dragStartBehavior = value;
        break;
      case 'onStart':
        externObject.onStart = value;
        break;
      case 'onUpdate':
        externObject.onUpdate = value;
        break;
      case 'onEnd':
        externObject.onEnd = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

