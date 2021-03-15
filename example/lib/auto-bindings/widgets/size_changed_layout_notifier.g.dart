import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class SizeChangedLayoutNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SizeChangedLayoutNotification':
        return () => SizeChangedLayoutNotificationObjectBinding(SizeChangedLayoutNotification());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SizeChangedLayoutNotificationObjectBinding extends HT_ExternObject<SizeChangedLayoutNotification> {
  SizeChangedLayoutNotificationObjectBinding(SizeChangedLayoutNotification value) : super(value);

  @override
  final typeid = HT_TypeId('SizeChangedLayoutNotification');


}

class SizeChangedLayoutNotifierClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SizeChangedLayoutNotifier':
        return ({key, child}) => SizeChangedLayoutNotifierObjectBinding(SizeChangedLayoutNotifier(key : key, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SizeChangedLayoutNotifierObjectBinding extends HT_ExternObject<SizeChangedLayoutNotifier> {
  SizeChangedLayoutNotifierObjectBinding(SizeChangedLayoutNotifier value) : super(value);

  @override
  final typeid = HT_TypeId('SizeChangedLayoutNotifier');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createRenderObject':
        return externObject.createRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

