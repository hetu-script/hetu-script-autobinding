import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';


class CallbackHandleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CallbackHandle.fromRawHandle':
        return (_handle) => CallbackHandleObjectBinding(CallbackHandle.fromRawHandle(_handle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CallbackHandleObjectBinding extends HT_ExternObject<CallbackHandle> {
  CallbackHandleObjectBinding(CallbackHandle value) : super(value);

  @override
  final typeid = HT_TypeId('CallbackHandle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hashCode':
        return externObject.hashCode;
      case 'toRawHandle':
        return externObject.toRawHandle;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

