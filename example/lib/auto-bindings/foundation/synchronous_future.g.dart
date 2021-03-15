import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';


class SynchronousFutureClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SynchronousFuture':
        return (_value) => SynchronousFutureObjectBinding(SynchronousFuture(_value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SynchronousFutureObjectBinding extends HT_ExternObject<SynchronousFuture> {
  SynchronousFutureObjectBinding(SynchronousFuture value) : super(value);

  @override
  final typeid = HT_TypeId('SynchronousFuture');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'asStream':
        return externObject.asStream;
      case 'catchError':
        return externObject.catchError;
      case 'then':
        return externObject.then;
      case 'timeout':
        return externObject.timeout;
      case 'whenComplete':
        return externObject.whenComplete;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

