import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/foundation.dart';


class PriorityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Priority.idle':
        return Priority.idle;
      case 'Priority.animation':
        return Priority.animation;
      case 'Priority.touch':
        return Priority.touch;
      case 'Priority.kMaxOffset':
        return Priority.kMaxOffset;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


