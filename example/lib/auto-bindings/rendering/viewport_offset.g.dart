import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';

class ScrollDirectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'idle':
        return ScrollDirection.idle;
      case 'forward':
        return ScrollDirection.forward;
      case 'reverse':
        return ScrollDirection.reverse;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

