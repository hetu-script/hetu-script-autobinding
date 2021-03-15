import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';


class ImmediateMultiDragGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImmediateMultiDragGestureRecognizer':
        return ({debugOwner, kind}) => ImmediateMultiDragGestureRecognizerObjectBinding(ImmediateMultiDragGestureRecognizer(debugOwner : debugOwner, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImmediateMultiDragGestureRecognizerObjectBinding extends HT_ExternObject<ImmediateMultiDragGestureRecognizer> {
  ImmediateMultiDragGestureRecognizerObjectBinding(ImmediateMultiDragGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('ImmediateMultiDragGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugDescription':
        return externObject.debugDescription;
      case 'createNewPointerState':
        return externObject.createNewPointerState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HorizontalMultiDragGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HorizontalMultiDragGestureRecognizer':
        return ({debugOwner, kind}) => HorizontalMultiDragGestureRecognizerObjectBinding(HorizontalMultiDragGestureRecognizer(debugOwner : debugOwner, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HorizontalMultiDragGestureRecognizerObjectBinding extends HT_ExternObject<HorizontalMultiDragGestureRecognizer> {
  HorizontalMultiDragGestureRecognizerObjectBinding(HorizontalMultiDragGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('HorizontalMultiDragGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugDescription':
        return externObject.debugDescription;
      case 'createNewPointerState':
        return externObject.createNewPointerState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class VerticalMultiDragGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'VerticalMultiDragGestureRecognizer':
        return ({debugOwner, kind}) => VerticalMultiDragGestureRecognizerObjectBinding(VerticalMultiDragGestureRecognizer(debugOwner : debugOwner, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class VerticalMultiDragGestureRecognizerObjectBinding extends HT_ExternObject<VerticalMultiDragGestureRecognizer> {
  VerticalMultiDragGestureRecognizerObjectBinding(VerticalMultiDragGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('VerticalMultiDragGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugDescription':
        return externObject.debugDescription;
      case 'createNewPointerState':
        return externObject.createNewPointerState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DelayedMultiDragGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DelayedMultiDragGestureRecognizer':
        return ({delay = kLongPressTimeout, debugOwner, kind}) => DelayedMultiDragGestureRecognizerObjectBinding(DelayedMultiDragGestureRecognizer(delay : delay, debugOwner : debugOwner, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DelayedMultiDragGestureRecognizerObjectBinding extends HT_ExternObject<DelayedMultiDragGestureRecognizer> {
  DelayedMultiDragGestureRecognizerObjectBinding(DelayedMultiDragGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('DelayedMultiDragGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'delay':
        return externObject.delay;
      case 'debugDescription':
        return externObject.debugDescription;
      case 'createNewPointerState':
        return externObject.createNewPointerState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

