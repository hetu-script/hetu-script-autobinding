import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class AnnotatedRegionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnnotatedRegion':
        return ({key, child, value, sized = true}) => AnnotatedRegionObjectBinding(AnnotatedRegion<Object>(key : key, child : child, value : value, sized : sized));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnnotatedRegionObjectBinding extends HT_ExternObject<AnnotatedRegion> {
  AnnotatedRegionObjectBinding(AnnotatedRegion value) : super(value);

  @override
  final typeid = HT_TypeId('AnnotatedRegion');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'sized':
        return externObject.sized;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

