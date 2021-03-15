import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';


class GlowingOverscrollIndicatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GlowingOverscrollIndicator':
        return ({key, showLeading = true, showTrailing = true, axisDirection, color, notificationPredicate = defaultScrollNotificationPredicate, child}) => GlowingOverscrollIndicatorObjectBinding(GlowingOverscrollIndicator(key : key, showLeading : showLeading, showTrailing : showTrailing, axisDirection : axisDirection, color : color, notificationPredicate : notificationPredicate, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GlowingOverscrollIndicatorObjectBinding extends HT_ExternObject<GlowingOverscrollIndicator> {
  GlowingOverscrollIndicatorObjectBinding(GlowingOverscrollIndicator value) : super(value);

  @override
  final typeid = HT_TypeId('GlowingOverscrollIndicator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'showLeading':
        return externObject.showLeading;
      case 'showTrailing':
        return externObject.showTrailing;
      case 'axisDirection':
        return externObject.axisDirection;
      case 'color':
        return externObject.color;
      case 'notificationPredicate':
        return externObject.notificationPredicate;
      case 'child':
        return externObject.child;
      case 'axis':
        return externObject.axis;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class OverscrollIndicatorNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OverscrollIndicatorNotification':
        return ({leading}) => OverscrollIndicatorNotificationObjectBinding(OverscrollIndicatorNotification(leading : leading));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverscrollIndicatorNotificationObjectBinding extends HT_ExternObject<OverscrollIndicatorNotification> {
  OverscrollIndicatorNotificationObjectBinding(OverscrollIndicatorNotification value) : super(value);

  @override
  final typeid = HT_TypeId('OverscrollIndicatorNotification');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leading':
        return externObject.leading;
      case 'paintOffset':
        return externObject.paintOffset;
      case 'disallowGlow':
        return externObject.disallowGlow;
      case 'debugFillDescription':
        return externObject.debugFillDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'paintOffset':
        externObject.paintOffset = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

