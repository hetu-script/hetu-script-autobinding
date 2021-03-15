import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';


class ForcePressDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ForcePressDetails':
        return ({globalPosition, localPosition, pressure}) => ForcePressDetailsObjectBinding(ForcePressDetails(globalPosition : globalPosition, localPosition : localPosition, pressure : pressure));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ForcePressDetailsObjectBinding extends HT_ExternObject<ForcePressDetails> {
  ForcePressDetailsObjectBinding(ForcePressDetails value) : super(value);

  @override
  final typeid = HT_TypeId('ForcePressDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'globalPosition':
        return externObject.globalPosition;
      case 'localPosition':
        return externObject.localPosition;
      case 'pressure':
        return externObject.pressure;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ForcePressGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ForcePressGestureRecognizer':
        return ({startPressure = 0.4, peakPressure = 0.85, interpolation = _inverseLerp, debugOwner, kind}) => ForcePressGestureRecognizerObjectBinding(ForcePressGestureRecognizer(startPressure : startPressure, peakPressure : peakPressure, interpolation : interpolation, debugOwner : debugOwner, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
  static double _inverseLerp(double min, double max, double t) {assert (min <= max); double value = (t - min) / (max - min); if (!value.isNaN) value = value.clamp(0.0, 1.0); return value;}
}

class ForcePressGestureRecognizerObjectBinding extends HT_ExternObject<ForcePressGestureRecognizer> {
  ForcePressGestureRecognizerObjectBinding(ForcePressGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('ForcePressGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onStart':
        return externObject.onStart;
      case 'onUpdate':
        return externObject.onUpdate;
      case 'onPeak':
        return externObject.onPeak;
      case 'onEnd':
        return externObject.onEnd;
      case 'startPressure':
        return externObject.startPressure;
      case 'peakPressure':
        return externObject.peakPressure;
      case 'interpolation':
        return externObject.interpolation;
      case 'debugDescription':
        return externObject.debugDescription;
      case 'addAllowedPointer':
        return externObject.addAllowedPointer;
      case 'handleEvent':
        return externObject.handleEvent;
      case 'acceptGesture':
        return externObject.acceptGesture;
      case 'didStopTrackingLastPointer':
        return externObject.didStopTrackingLastPointer;
      case 'rejectGesture':
        return externObject.rejectGesture;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'onStart':
        externObject.onStart = value;
        break;
      case 'onUpdate':
        externObject.onUpdate = value;
        break;
      case 'onPeak':
        externObject.onPeak = value;
        break;
      case 'onEnd':
        externObject.onEnd = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

