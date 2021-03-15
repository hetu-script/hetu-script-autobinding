import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';

class RefreshIndicatorTriggerModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'anywhere':
        return RefreshIndicatorTriggerMode.anywhere;
      case 'onEdge':
        return RefreshIndicatorTriggerMode.onEdge;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RefreshIndicatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RefreshIndicator':
        return ({key, child, displacement = 40.0, onRefresh, color, backgroundColor, notificationPredicate = defaultScrollNotificationPredicate, semanticsLabel, semanticsValue, strokeWidth = 2.0, triggerMode = RefreshIndicatorTriggerMode.onEdge}) => RefreshIndicatorObjectBinding(RefreshIndicator(key : key, child : child, displacement : displacement, onRefresh : onRefresh, color : color, backgroundColor : backgroundColor, notificationPredicate : notificationPredicate, semanticsLabel : semanticsLabel, semanticsValue : semanticsValue, strokeWidth : strokeWidth, triggerMode : triggerMode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RefreshIndicatorObjectBinding extends HT_ExternObject<RefreshIndicator> {
  RefreshIndicatorObjectBinding(RefreshIndicator value) : super(value);

  @override
  final typeid = HT_TypeId('RefreshIndicator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'displacement':
        return externObject.displacement;
      case 'onRefresh':
        return externObject.onRefresh;
      case 'color':
        return externObject.color;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'notificationPredicate':
        return externObject.notificationPredicate;
      case 'semanticsLabel':
        return externObject.semanticsLabel;
      case 'semanticsValue':
        return externObject.semanticsValue;
      case 'strokeWidth':
        return externObject.strokeWidth;
      case 'triggerMode':
        return externObject.triggerMode;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RefreshIndicatorStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RefreshIndicatorState':
        return () => RefreshIndicatorStateObjectBinding(RefreshIndicatorState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RefreshIndicatorStateObjectBinding extends HT_ExternObject<RefreshIndicatorState> {
  RefreshIndicatorStateObjectBinding(RefreshIndicatorState value) : super(value);

  @override
  final typeid = HT_TypeId('RefreshIndicatorState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initState':
        return externObject.initState;
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'dispose':
        return externObject.dispose;
      case 'show':
        return externObject.show;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

