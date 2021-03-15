import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';


class PointerSignalResolverClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerSignalResolver':
        return () => PointerSignalResolverObjectBinding(PointerSignalResolver());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerSignalResolverObjectBinding extends HT_ExternObject<PointerSignalResolver> {
  PointerSignalResolverObjectBinding(PointerSignalResolver value) : super(value);

  @override
  final typeid = HT_TypeId('PointerSignalResolver');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'register':
        return externObject.register;
      case 'resolve':
        return externObject.resolve;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

