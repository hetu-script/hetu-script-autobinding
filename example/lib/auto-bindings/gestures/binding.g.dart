import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';


class FlutterErrorDetailsForPointerEventDispatcherClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlutterErrorDetailsForPointerEventDispatcher':
        return ({exception, stack, library, context, event, hitTestEntry, informationCollector, silent = false}) => FlutterErrorDetailsForPointerEventDispatcherObjectBinding(FlutterErrorDetailsForPointerEventDispatcher(exception : exception, stack : stack, library : library, context : context, event : event, hitTestEntry : hitTestEntry, informationCollector : informationCollector, silent : silent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlutterErrorDetailsForPointerEventDispatcherObjectBinding extends HT_ExternObject<FlutterErrorDetailsForPointerEventDispatcher> {
  FlutterErrorDetailsForPointerEventDispatcherObjectBinding(FlutterErrorDetailsForPointerEventDispatcher value) : super(value);

  @override
  final typeid = HT_TypeId('FlutterErrorDetailsForPointerEventDispatcher');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'event':
        return externObject.event;
      case 'hitTestEntry':
        return externObject.hitTestEntry;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

