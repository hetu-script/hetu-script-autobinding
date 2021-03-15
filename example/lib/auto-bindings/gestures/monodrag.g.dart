import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';


class VerticalDragGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'VerticalDragGestureRecognizer':
        return ({debugOwner, kind}) => VerticalDragGestureRecognizerObjectBinding(VerticalDragGestureRecognizer(debugOwner : debugOwner, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class VerticalDragGestureRecognizerObjectBinding extends HT_ExternObject<VerticalDragGestureRecognizer> {
  VerticalDragGestureRecognizerObjectBinding(VerticalDragGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('VerticalDragGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugDescription':
        return externObject.debugDescription;
      case 'isFlingGesture':
        return externObject.isFlingGesture;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HorizontalDragGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HorizontalDragGestureRecognizer':
        return ({debugOwner, kind}) => HorizontalDragGestureRecognizerObjectBinding(HorizontalDragGestureRecognizer(debugOwner : debugOwner, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HorizontalDragGestureRecognizerObjectBinding extends HT_ExternObject<HorizontalDragGestureRecognizer> {
  HorizontalDragGestureRecognizerObjectBinding(HorizontalDragGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('HorizontalDragGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugDescription':
        return externObject.debugDescription;
      case 'isFlingGesture':
        return externObject.isFlingGesture;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PanGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PanGestureRecognizer':
        return ({debugOwner}) => PanGestureRecognizerObjectBinding(PanGestureRecognizer(debugOwner : debugOwner));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PanGestureRecognizerObjectBinding extends HT_ExternObject<PanGestureRecognizer> {
  PanGestureRecognizerObjectBinding(PanGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('PanGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugDescription':
        return externObject.debugDescription;
      case 'isFlingGesture':
        return externObject.isFlingGesture;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

