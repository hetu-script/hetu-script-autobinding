import 'package:hetu_script/hetu_script.dart';
import 'dart:async';


class TimeoutExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TimeoutException':
        return (message, [duration]) => TimeoutExceptionObjectBinding(TimeoutException(message, duration));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TimeoutExceptionObjectBinding extends HT_ExternObject<TimeoutException> {
  TimeoutExceptionObjectBinding(TimeoutException value) : super(value);

  @override
  final typeid = HT_TypeId('TimeoutException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'duration':
        return externObject.duration;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

