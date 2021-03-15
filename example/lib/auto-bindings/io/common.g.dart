import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class OSErrorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OSError':
        return ([message = "", errorCode = noErrorCode]) => OSErrorObjectBinding(OSError(message, errorCode));
      case 'OSError.noErrorCode':
        return OSError.noErrorCode;
      default:
        throw HTErr_Undefined(id);
    }
  }
  static const noErrorCode = -1;
}

class OSErrorObjectBinding extends HT_ExternObject<OSError> {
  OSErrorObjectBinding(OSError value) : super(value);

  @override
  final typeid = HT_TypeId('OSError');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'errorCode':
        return externObject.errorCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

