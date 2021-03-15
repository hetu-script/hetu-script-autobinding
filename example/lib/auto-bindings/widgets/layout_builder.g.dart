import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class LayoutBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LayoutBuilder':
        return ({key, builder}) => LayoutBuilderObjectBinding(LayoutBuilder(key : key, builder : builder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LayoutBuilderObjectBinding extends HT_ExternObject<LayoutBuilder> {
  LayoutBuilderObjectBinding(LayoutBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('LayoutBuilder');

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

