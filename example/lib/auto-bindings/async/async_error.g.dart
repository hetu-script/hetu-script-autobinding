import 'package:hetu_script/hetu_script.dart';
import 'dart:async';


class AsyncErrorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AsyncError':
        return (error, stackTrace) => AsyncErrorObjectBinding(AsyncError(error, stackTrace));
      case 'defaultStackTrace':
        return (error) => AsyncError.defaultStackTrace(error);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AsyncErrorObjectBinding extends HT_ExternObject<AsyncError> {
  AsyncErrorObjectBinding(AsyncError value) : super(value);

  @override
  final typeid = HT_TypeId('AsyncError');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'error':
        return externObject.error;
      case 'stackTrace':
        return externObject.stackTrace;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

