import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/scheduler.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:developer';
import 'dart:ui';
import 'package:flutter/foundation.dart';

class SchedulerPhaseClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'idle':
        return SchedulerPhase.idle;
      case 'transientCallbacks':
        return SchedulerPhase.transientCallbacks;
      case 'midFrameMicrotasks':
        return SchedulerPhase.midFrameMicrotasks;
      case 'persistentCallbacks':
        return SchedulerPhase.persistentCallbacks;
      case 'postFrameCallbacks':
        return SchedulerPhase.postFrameCallbacks;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

