import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';


class LongPressStartDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LongPressStartDetails':
        return ({globalPosition = Offset.zero, localPosition}) => LongPressStartDetailsObjectBinding(LongPressStartDetails(globalPosition : globalPosition, localPosition : localPosition));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LongPressStartDetailsObjectBinding extends HT_ExternObject<LongPressStartDetails> {
  LongPressStartDetailsObjectBinding(LongPressStartDetails value) : super(value);

  @override
  final typeid = HT_TypeId('LongPressStartDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'globalPosition':
        return externObject.globalPosition;
      case 'localPosition':
        return externObject.localPosition;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LongPressMoveUpdateDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LongPressMoveUpdateDetails':
        return ({globalPosition = Offset.zero, localPosition, offsetFromOrigin = Offset.zero, localOffsetFromOrigin}) => LongPressMoveUpdateDetailsObjectBinding(LongPressMoveUpdateDetails(globalPosition : globalPosition, localPosition : localPosition, offsetFromOrigin : offsetFromOrigin, localOffsetFromOrigin : localOffsetFromOrigin));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LongPressMoveUpdateDetailsObjectBinding extends HT_ExternObject<LongPressMoveUpdateDetails> {
  LongPressMoveUpdateDetailsObjectBinding(LongPressMoveUpdateDetails value) : super(value);

  @override
  final typeid = HT_TypeId('LongPressMoveUpdateDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'globalPosition':
        return externObject.globalPosition;
      case 'localPosition':
        return externObject.localPosition;
      case 'offsetFromOrigin':
        return externObject.offsetFromOrigin;
      case 'localOffsetFromOrigin':
        return externObject.localOffsetFromOrigin;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LongPressEndDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LongPressEndDetails':
        return ({globalPosition = Offset.zero, localPosition, velocity = Velocity.zero}) => LongPressEndDetailsObjectBinding(LongPressEndDetails(globalPosition : globalPosition, localPosition : localPosition, velocity : velocity));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LongPressEndDetailsObjectBinding extends HT_ExternObject<LongPressEndDetails> {
  LongPressEndDetailsObjectBinding(LongPressEndDetails value) : super(value);

  @override
  final typeid = HT_TypeId('LongPressEndDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'globalPosition':
        return externObject.globalPosition;
      case 'localPosition':
        return externObject.localPosition;
      case 'velocity':
        return externObject.velocity;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LongPressGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LongPressGestureRecognizer':
        return ({duration, postAcceptSlopTolerance, kind, debugOwner}) => LongPressGestureRecognizerObjectBinding(LongPressGestureRecognizer(duration : duration, postAcceptSlopTolerance : postAcceptSlopTolerance, kind : kind, debugOwner : debugOwner));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LongPressGestureRecognizerObjectBinding extends HT_ExternObject<LongPressGestureRecognizer> {
  LongPressGestureRecognizerObjectBinding(LongPressGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('LongPressGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onLongPress':
        return externObject.onLongPress;
      case 'onLongPressStart':
        return externObject.onLongPressStart;
      case 'onLongPressMoveUpdate':
        return externObject.onLongPressMoveUpdate;
      case 'onLongPressUp':
        return externObject.onLongPressUp;
      case 'onLongPressEnd':
        return externObject.onLongPressEnd;
      case 'onSecondaryLongPress':
        return externObject.onSecondaryLongPress;
      case 'onSecondaryLongPressStart':
        return externObject.onSecondaryLongPressStart;
      case 'onSecondaryLongPressMoveUpdate':
        return externObject.onSecondaryLongPressMoveUpdate;
      case 'onSecondaryLongPressUp':
        return externObject.onSecondaryLongPressUp;
      case 'onSecondaryLongPressEnd':
        return externObject.onSecondaryLongPressEnd;
      case 'onTertiaryLongPress':
        return externObject.onTertiaryLongPress;
      case 'onTertiaryLongPressStart':
        return externObject.onTertiaryLongPressStart;
      case 'onTertiaryLongPressMoveUpdate':
        return externObject.onTertiaryLongPressMoveUpdate;
      case 'onTertiaryLongPressUp':
        return externObject.onTertiaryLongPressUp;
      case 'onTertiaryLongPressEnd':
        return externObject.onTertiaryLongPressEnd;
      case 'debugDescription':
        return externObject.debugDescription;
      case 'isPointerAllowed':
        return externObject.isPointerAllowed;
      case 'didExceedDeadline':
        return externObject.didExceedDeadline;
      case 'handlePrimaryPointer':
        return externObject.handlePrimaryPointer;
      case 'resolve':
        return externObject.resolve;
      case 'acceptGesture':
        return externObject.acceptGesture;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'onLongPress':
        externObject.onLongPress = value;
        break;
      case 'onLongPressStart':
        externObject.onLongPressStart = value;
        break;
      case 'onLongPressMoveUpdate':
        externObject.onLongPressMoveUpdate = value;
        break;
      case 'onLongPressUp':
        externObject.onLongPressUp = value;
        break;
      case 'onLongPressEnd':
        externObject.onLongPressEnd = value;
        break;
      case 'onSecondaryLongPress':
        externObject.onSecondaryLongPress = value;
        break;
      case 'onSecondaryLongPressStart':
        externObject.onSecondaryLongPressStart = value;
        break;
      case 'onSecondaryLongPressMoveUpdate':
        externObject.onSecondaryLongPressMoveUpdate = value;
        break;
      case 'onSecondaryLongPressUp':
        externObject.onSecondaryLongPressUp = value;
        break;
      case 'onSecondaryLongPressEnd':
        externObject.onSecondaryLongPressEnd = value;
        break;
      case 'onTertiaryLongPress':
        externObject.onTertiaryLongPress = value;
        break;
      case 'onTertiaryLongPressStart':
        externObject.onTertiaryLongPressStart = value;
        break;
      case 'onTertiaryLongPressMoveUpdate':
        externObject.onTertiaryLongPressMoveUpdate = value;
        break;
      case 'onTertiaryLongPressUp':
        externObject.onTertiaryLongPressUp = value;
        break;
      case 'onTertiaryLongPressEnd':
        externObject.onTertiaryLongPressEnd = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

