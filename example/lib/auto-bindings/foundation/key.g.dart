import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';
import 'dart:ui';


class ValueKeyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ValueKey':
        return (value) => ValueKeyObjectBinding(ValueKey(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ValueKeyObjectBinding extends HT_ExternObject<ValueKey> {
  ValueKeyObjectBinding(ValueKey value) : super(value);

  @override
  final typeid = HT_TypeId('ValueKey');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

