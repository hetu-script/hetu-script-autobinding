import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:collection';


class InheritedModelElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InheritedModelElement':
        return (widget) => InheritedModelElementObjectBinding(InheritedModelElement(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InheritedModelElementObjectBinding extends HT_ExternObject<InheritedModelElement> {
  InheritedModelElementObjectBinding(InheritedModelElement value) : super(value);

  @override
  final typeid = HT_TypeId('InheritedModelElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widget':
        return externObject.widget;
      case 'updateDependencies':
        return externObject.updateDependencies;
      case 'notifyDependent':
        return externObject.notifyDependent;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

