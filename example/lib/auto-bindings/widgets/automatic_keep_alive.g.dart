import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';


class AutomaticKeepAliveClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AutomaticKeepAlive':
        return ({key, child}) => AutomaticKeepAliveObjectBinding(AutomaticKeepAlive(key : key, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AutomaticKeepAliveObjectBinding extends HT_ExternObject<AutomaticKeepAlive> {
  AutomaticKeepAliveObjectBinding(AutomaticKeepAlive value) : super(value);

  @override
  final typeid = HT_TypeId('AutomaticKeepAlive');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class KeepAliveNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'KeepAliveNotification':
        return (handle) => KeepAliveNotificationObjectBinding(KeepAliveNotification(handle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class KeepAliveNotificationObjectBinding extends HT_ExternObject<KeepAliveNotification> {
  KeepAliveNotificationObjectBinding(KeepAliveNotification value) : super(value);

  @override
  final typeid = HT_TypeId('KeepAliveNotification');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'handle':
        return externObject.handle;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class KeepAliveHandleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'KeepAliveHandle':
        return () => KeepAliveHandleObjectBinding(KeepAliveHandle());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class KeepAliveHandleObjectBinding extends HT_ExternObject<KeepAliveHandle> {
  KeepAliveHandleObjectBinding(KeepAliveHandle value) : super(value);

  @override
  final typeid = HT_TypeId('KeepAliveHandle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'release':
        return externObject.release;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

