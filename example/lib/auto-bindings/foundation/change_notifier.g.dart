import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';


class ChangeNotifierClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ChangeNotifier':
        return () => ChangeNotifierObjectBinding(ChangeNotifier());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ChangeNotifierObjectBinding extends HT_ExternObject<ChangeNotifier> {
  ChangeNotifierObjectBinding(ChangeNotifier value) : super(value);

  @override
  final typeid = HT_TypeId('ChangeNotifier');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hasListeners':
        return externObject.hasListeners;
      case 'addListener':
        return externObject.addListener;
      case 'removeListener':
        return externObject.removeListener;
      case 'dispose':
        return externObject.dispose;
      case 'notifyListeners':
        return externObject.notifyListeners;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ValueNotifierClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ValueNotifier':
        return (_value) => ValueNotifierObjectBinding(ValueNotifier(_value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ValueNotifierObjectBinding extends HT_ExternObject<ValueNotifier> {
  ValueNotifierObjectBinding(ValueNotifier value) : super(value);

  @override
  final typeid = HT_TypeId('ValueNotifier');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'value':
        externObject.value = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

