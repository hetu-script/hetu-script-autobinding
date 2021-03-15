import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';


class RenderSliverListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverList':
        return ({childManager}) => RenderSliverListObjectBinding(RenderSliverList(childManager : childManager));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverListObjectBinding extends HT_ExternObject<RenderSliverList> {
  RenderSliverListObjectBinding(RenderSliverList value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'performLayout':
        return externObject.performLayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

