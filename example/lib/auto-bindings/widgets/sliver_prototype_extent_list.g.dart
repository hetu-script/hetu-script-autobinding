import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class SliverPrototypeExtentListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverPrototypeExtentList':
        return ({key, delegate, prototypeItem}) => SliverPrototypeExtentListObjectBinding(SliverPrototypeExtentList(key : key, delegate : delegate, prototypeItem : prototypeItem));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverPrototypeExtentListObjectBinding extends HT_ExternObject<SliverPrototypeExtentList> {
  SliverPrototypeExtentListObjectBinding(SliverPrototypeExtentList value) : super(value);

  @override
  final typeid = HT_TypeId('SliverPrototypeExtentList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'prototypeItem':
        return externObject.prototypeItem;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'createElement':
        return externObject.createElement;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

