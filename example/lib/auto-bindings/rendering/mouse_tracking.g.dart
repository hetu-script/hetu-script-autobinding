import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:collection';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';


class MouseTrackerAnnotationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MouseTrackerAnnotation':
        return ({onEnter, onExit, cursor = MouseCursor.defer, validForMouseTracker = true}) => MouseTrackerAnnotationObjectBinding(MouseTrackerAnnotation(onEnter : onEnter, onExit : onExit, cursor : cursor, validForMouseTracker : validForMouseTracker));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MouseTrackerAnnotationObjectBinding extends HT_ExternObject<MouseTrackerAnnotation> {
  MouseTrackerAnnotationObjectBinding(MouseTrackerAnnotation value) : super(value);

  @override
  final typeid = HT_TypeId('MouseTrackerAnnotation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onEnter':
        return externObject.onEnter;
      case 'onExit':
        return externObject.onExit;
      case 'cursor':
        return externObject.cursor;
      case 'validForMouseTracker':
        return externObject.validForMouseTracker;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MouseTrackerUpdateDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MouseTrackerUpdateDetails.byNewFrame':
        return ({lastAnnotations, nextAnnotations, previousEvent}) => MouseTrackerUpdateDetailsObjectBinding(MouseTrackerUpdateDetails.byNewFrame(lastAnnotations : lastAnnotations, nextAnnotations : nextAnnotations, previousEvent : previousEvent));
      case 'MouseTrackerUpdateDetails.byPointerEvent':
        return ({lastAnnotations, nextAnnotations, previousEvent, triggeringEvent}) => MouseTrackerUpdateDetailsObjectBinding(MouseTrackerUpdateDetails.byPointerEvent(lastAnnotations : lastAnnotations, nextAnnotations : nextAnnotations, previousEvent : previousEvent, triggeringEvent : triggeringEvent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MouseTrackerUpdateDetailsObjectBinding extends HT_ExternObject<MouseTrackerUpdateDetails> {
  MouseTrackerUpdateDetailsObjectBinding(MouseTrackerUpdateDetails value) : super(value);

  @override
  final typeid = HT_TypeId('MouseTrackerUpdateDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lastAnnotations':
        return externObject.lastAnnotations;
      case 'nextAnnotations':
        return externObject.nextAnnotations;
      case 'previousEvent':
        return externObject.previousEvent;
      case 'triggeringEvent':
        return externObject.triggeringEvent;
      case 'device':
        return externObject.device;
      case 'latestEvent':
        return externObject.latestEvent;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MouseTrackerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MouseTracker':
        return () => MouseTrackerObjectBinding(MouseTracker());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MouseTrackerObjectBinding extends HT_ExternObject<MouseTracker> {
  MouseTrackerObjectBinding(MouseTracker value) : super(value);

  @override
  final typeid = HT_TypeId('MouseTracker');


}

