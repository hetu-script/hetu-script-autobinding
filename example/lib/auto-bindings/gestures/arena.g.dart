import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';

class GestureDispositionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'accepted':
        return GestureDisposition.accepted;
      case 'rejected':
        return GestureDisposition.rejected;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GestureArenaManagerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GestureArenaManager':
        return () => GestureArenaManagerObjectBinding(GestureArenaManager());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GestureArenaManagerObjectBinding extends HT_ExternObject<GestureArenaManager> {
  GestureArenaManagerObjectBinding(GestureArenaManager value) : super(value);

  @override
  final typeid = HT_TypeId('GestureArenaManager');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'add':
        return externObject.add;
      case 'close':
        return externObject.close;
      case 'sweep':
        return externObject.sweep;
      case 'hold':
        return externObject.hold;
      case 'release':
        return externObject.release;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

