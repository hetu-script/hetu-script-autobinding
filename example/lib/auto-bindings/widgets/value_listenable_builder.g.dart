import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class ValueListenableBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ValueListenableBuilder':
        return ({key, valueListenable, builder, child}) => ValueListenableBuilderObjectBinding(ValueListenableBuilder(key : key, valueListenable : valueListenable, builder : builder, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ValueListenableBuilderObjectBinding extends HT_ExternObject<ValueListenableBuilder> {
  ValueListenableBuilderObjectBinding(ValueListenableBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('ValueListenableBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'valueListenable':
        return externObject.valueListenable;
      case 'builder':
        return externObject.builder;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

