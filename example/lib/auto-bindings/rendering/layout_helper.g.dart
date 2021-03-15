import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';


class ChildLayoutHelperClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dryLayoutChild':
        return (child, constrains) => ChildLayoutHelper.dryLayoutChild(child, constrains);
      case 'layoutChild':
        return (child, constraints) => ChildLayoutHelper.layoutChild(child, constraints);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


