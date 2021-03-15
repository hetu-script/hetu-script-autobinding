import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class NotificationListenerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NotificationListener':
        return ({key, child, onNotification}) => NotificationListenerObjectBinding(NotificationListener<Notification>(key : key, child : child, onNotification : onNotification));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NotificationListenerObjectBinding extends HT_ExternObject<NotificationListener> {
  NotificationListenerObjectBinding(NotificationListener value) : super(value);

  @override
  final typeid = HT_TypeId('NotificationListener');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'onNotification':
        return externObject.onNotification;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LayoutChangedNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LayoutChangedNotification':
        return () => LayoutChangedNotificationObjectBinding(LayoutChangedNotification());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LayoutChangedNotificationObjectBinding extends HT_ExternObject<LayoutChangedNotification> {
  LayoutChangedNotificationObjectBinding(LayoutChangedNotification value) : super(value);

  @override
  final typeid = HT_TypeId('LayoutChangedNotification');


}

