import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';


class RenderSliverFixedExtentListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverFixedExtentList':
        return ({childManager, itemExtent}) => RenderSliverFixedExtentListObjectBinding(RenderSliverFixedExtentList(childManager : childManager, itemExtent : itemExtent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverFixedExtentListObjectBinding extends HT_ExternObject<RenderSliverFixedExtentList> {
  RenderSliverFixedExtentListObjectBinding(RenderSliverFixedExtentList value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverFixedExtentList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemExtent':
        return externObject.itemExtent;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'itemExtent':
        externObject.itemExtent = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

