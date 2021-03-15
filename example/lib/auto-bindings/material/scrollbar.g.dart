import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';


class ScrollbarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Scrollbar':
        return ({key, child, controller, isAlwaysShown, showTrackOnHover, hoverThickness, thickness, radius, notificationPredicate}) => ScrollbarObjectBinding(Scrollbar(key : key, child : child, controller : controller, isAlwaysShown : isAlwaysShown, showTrackOnHover : showTrackOnHover, hoverThickness : hoverThickness, thickness : thickness, radius : radius, notificationPredicate : notificationPredicate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollbarObjectBinding extends HT_ExternObject<Scrollbar> {
  ScrollbarObjectBinding(Scrollbar value) : super(value);

  @override
  final typeid = HT_TypeId('Scrollbar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'controller':
        return externObject.controller;
      case 'isAlwaysShown':
        return externObject.isAlwaysShown;
      case 'showTrackOnHover':
        return externObject.showTrackOnHover;
      case 'hoverThickness':
        return externObject.hoverThickness;
      case 'thickness':
        return externObject.thickness;
      case 'radius':
        return externObject.radius;
      case 'notificationPredicate':
        return externObject.notificationPredicate;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

