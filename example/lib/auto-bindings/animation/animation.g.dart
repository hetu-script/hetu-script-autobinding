import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';

class AnimationStatusClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dismissed':
        return AnimationStatus.dismissed;
      case 'forward':
        return AnimationStatus.forward;
      case 'reverse':
        return AnimationStatus.reverse;
      case 'completed':
        return AnimationStatus.completed;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

