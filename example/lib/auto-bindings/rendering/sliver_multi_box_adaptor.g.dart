import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';


class SliverMultiBoxAdaptorParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverMultiBoxAdaptorParentData':
        return () => SliverMultiBoxAdaptorParentDataObjectBinding(SliverMultiBoxAdaptorParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverMultiBoxAdaptorParentDataObjectBinding extends HT_ExternObject<SliverMultiBoxAdaptorParentData> {
  SliverMultiBoxAdaptorParentDataObjectBinding(SliverMultiBoxAdaptorParentData value) : super(value);

  @override
  final typeid = HT_TypeId('SliverMultiBoxAdaptorParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'index':
        return externObject.index;
      case 'keptAlive':
        return externObject.keptAlive;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'index':
        externObject.index = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

