import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class BottomAppBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BottomAppBar':
        return ({key, color, elevation, shape, clipBehavior = Clip.none, notchMargin = 4.0, child}) => BottomAppBarObjectBinding(BottomAppBar(key : key, color : color, elevation : elevation, shape : shape, clipBehavior : clipBehavior, notchMargin : notchMargin, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BottomAppBarObjectBinding extends HT_ExternObject<BottomAppBar> {
  BottomAppBarObjectBinding(BottomAppBar value) : super(value);

  @override
  final typeid = HT_TypeId('BottomAppBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'color':
        return externObject.color;
      case 'elevation':
        return externObject.elevation;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'notchMargin':
        return externObject.notchMargin;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

