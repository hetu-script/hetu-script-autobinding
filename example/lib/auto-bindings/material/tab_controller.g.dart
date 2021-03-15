import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';


class TabControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TabController':
        return ({initialIndex = 0, length, vsync}) => TabControllerObjectBinding(TabController(initialIndex : initialIndex, length : length, vsync : vsync));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TabControllerObjectBinding extends HT_ExternObject<TabController> {
  TabControllerObjectBinding(TabController value) : super(value);

  @override
  final typeid = HT_TypeId('TabController');


}

class DefaultTabControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultTabController':
        return ({key, length, initialIndex = 0, child}) => DefaultTabControllerObjectBinding(DefaultTabController(key : key, length : length, initialIndex : initialIndex, child : child));
      case 'of':
        return (context) => DefaultTabController.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultTabControllerObjectBinding extends HT_ExternObject<DefaultTabController> {
  DefaultTabControllerObjectBinding(DefaultTabController value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultTabController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'length':
        return externObject.length;
      case 'initialIndex':
        return externObject.initialIndex;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

