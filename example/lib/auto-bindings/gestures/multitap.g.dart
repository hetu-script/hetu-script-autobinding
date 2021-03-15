import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';


class DoubleTapGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DoubleTapGestureRecognizer':
        return ({debugOwner, kind}) => DoubleTapGestureRecognizerObjectBinding(DoubleTapGestureRecognizer(debugOwner : debugOwner, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DoubleTapGestureRecognizerObjectBinding extends HT_ExternObject<DoubleTapGestureRecognizer> {
  DoubleTapGestureRecognizerObjectBinding(DoubleTapGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('DoubleTapGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onDoubleTapDown':
        return externObject.onDoubleTapDown;
      case 'onDoubleTap':
        return externObject.onDoubleTap;
      case 'onDoubleTapCancel':
        return externObject.onDoubleTapCancel;
      case 'debugDescription':
        return externObject.debugDescription;
      case 'isPointerAllowed':
        return externObject.isPointerAllowed;
      case 'addAllowedPointer':
        return externObject.addAllowedPointer;
      case 'acceptGesture':
        return externObject.acceptGesture;
      case 'rejectGesture':
        return externObject.rejectGesture;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'onDoubleTapDown':
        externObject.onDoubleTapDown = value;
        break;
      case 'onDoubleTap':
        externObject.onDoubleTap = value;
        break;
      case 'onDoubleTapCancel':
        externObject.onDoubleTapCancel = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MultiTapGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MultiTapGestureRecognizer':
        return ({longTapDelay = Duration.zero, debugOwner, kind}) => MultiTapGestureRecognizerObjectBinding(MultiTapGestureRecognizer(longTapDelay : longTapDelay, debugOwner : debugOwner, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MultiTapGestureRecognizerObjectBinding extends HT_ExternObject<MultiTapGestureRecognizer> {
  MultiTapGestureRecognizerObjectBinding(MultiTapGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('MultiTapGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onTapDown':
        return externObject.onTapDown;
      case 'onTapUp':
        return externObject.onTapUp;
      case 'onTap':
        return externObject.onTap;
      case 'onTapCancel':
        return externObject.onTapCancel;
      case 'longTapDelay':
        return externObject.longTapDelay;
      case 'onLongTapDown':
        return externObject.onLongTapDown;
      case 'debugDescription':
        return externObject.debugDescription;
      case 'addAllowedPointer':
        return externObject.addAllowedPointer;
      case 'acceptGesture':
        return externObject.acceptGesture;
      case 'rejectGesture':
        return externObject.rejectGesture;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'onTapDown':
        externObject.onTapDown = value;
        break;
      case 'onTapUp':
        externObject.onTapUp = value;
        break;
      case 'onTap':
        externObject.onTap = value;
        break;
      case 'onTapCancel':
        externObject.onTapCancel = value;
        break;
      case 'longTapDelay':
        externObject.longTapDelay = value;
        break;
      case 'onLongTapDown':
        externObject.onLongTapDown = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

