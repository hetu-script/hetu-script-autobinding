import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';


class OrientationBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OrientationBuilder':
        return ({key, builder}) => OrientationBuilderObjectBinding(OrientationBuilder(key : key, builder : builder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OrientationBuilderObjectBinding extends HT_ExternObject<OrientationBuilder> {
  OrientationBuilderObjectBinding(OrientationBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('OrientationBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

