import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

class ScrollPositionAlignmentPolicyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'explicit':
        return ScrollPositionAlignmentPolicy.explicit;
      case 'keepVisibleAtEnd':
        return ScrollPositionAlignmentPolicy.keepVisibleAtEnd;
      case 'keepVisibleAtStart':
        return ScrollPositionAlignmentPolicy.keepVisibleAtStart;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

