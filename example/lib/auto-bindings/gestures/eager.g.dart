import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';


class EagerGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'EagerGestureRecognizer':
        return ({kind}) => EagerGestureRecognizerObjectBinding(EagerGestureRecognizer(kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class EagerGestureRecognizerObjectBinding extends HT_ExternObject<EagerGestureRecognizer> {
  EagerGestureRecognizerObjectBinding(EagerGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('EagerGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugDescription':
        return externObject.debugDescription;
      case 'addAllowedPointer':
        return externObject.addAllowedPointer;
      case 'didStopTrackingLastPointer':
        return externObject.didStopTrackingLastPointer;
      case 'handleEvent':
        return externObject.handleEvent;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

