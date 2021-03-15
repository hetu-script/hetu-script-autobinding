import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';
import 'dart:collection';
import 'package:flutter/foundation.dart';

class DragStartBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'down':
        return DragStartBehavior.down;
      case 'start':
        return DragStartBehavior.start;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class GestureRecognizerStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ready':
        return GestureRecognizerState.ready;
      case 'possible':
        return GestureRecognizerState.possible;
      case 'defunct':
        return GestureRecognizerState.defunct;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OffsetPairClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OffsetPair':
        return ({local, global}) => OffsetPairObjectBinding(OffsetPair(local : local, global : global));
      case 'OffsetPair.zero':
        return OffsetPair.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OffsetPairObjectBinding extends HT_ExternObject<OffsetPair> {
  OffsetPairObjectBinding(OffsetPair value) : super(value);

  @override
  final typeid = HT_TypeId('OffsetPair');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'local':
        return externObject.local;
      case 'global':
        return externObject.global;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

