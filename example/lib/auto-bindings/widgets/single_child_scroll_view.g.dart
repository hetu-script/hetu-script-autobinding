import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';


class SingleChildScrollViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SingleChildScrollView':
        return ({key, scrollDirection = Axis.vertical, reverse = false, padding, primary, physics, controller, child, dragStartBehavior = DragStartBehavior.start, clipBehavior = Clip.hardEdge, restorationId}) => SingleChildScrollViewObjectBinding(SingleChildScrollView(key : key, scrollDirection : scrollDirection, reverse : reverse, padding : padding, primary : primary, physics : physics, controller : controller, child : child, dragStartBehavior : dragStartBehavior, clipBehavior : clipBehavior, restorationId : restorationId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SingleChildScrollViewObjectBinding extends HT_ExternObject<SingleChildScrollView> {
  SingleChildScrollViewObjectBinding(SingleChildScrollView value) : super(value);

  @override
  final typeid = HT_TypeId('SingleChildScrollView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scrollDirection':
        return externObject.scrollDirection;
      case 'reverse':
        return externObject.reverse;
      case 'padding':
        return externObject.padding;
      case 'controller':
        return externObject.controller;
      case 'primary':
        return externObject.primary;
      case 'physics':
        return externObject.physics;
      case 'child':
        return externObject.child;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'restorationId':
        return externObject.restorationId;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

