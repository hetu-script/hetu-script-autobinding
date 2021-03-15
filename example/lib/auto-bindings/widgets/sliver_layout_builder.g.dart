import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class SliverLayoutBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverLayoutBuilder':
        return ({key, builder}) => SliverLayoutBuilderObjectBinding(SliverLayoutBuilder(key : key, builder : builder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverLayoutBuilderObjectBinding extends HT_ExternObject<SliverLayoutBuilder> {
  SliverLayoutBuilderObjectBinding(SliverLayoutBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('SliverLayoutBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'createRenderObject':
        return externObject.createRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

