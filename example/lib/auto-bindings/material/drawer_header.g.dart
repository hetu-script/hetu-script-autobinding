import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class DrawerHeaderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DrawerHeader':
        return ({key, decoration, margin = const EdgeInsets.only(bottom: 8.0), padding = const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0), duration = const Duration(milliseconds: 250), curve = Curves.fastOutSlowIn, child}) => DrawerHeaderObjectBinding(DrawerHeader(key : key, decoration : decoration, margin : margin, padding : padding, duration : duration, curve : curve, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DrawerHeaderObjectBinding extends HT_ExternObject<DrawerHeader> {
  DrawerHeaderObjectBinding(DrawerHeader value) : super(value);

  @override
  final typeid = HT_TypeId('DrawerHeader');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decoration':
        return externObject.decoration;
      case 'padding':
        return externObject.padding;
      case 'margin':
        return externObject.margin;
      case 'duration':
        return externObject.duration;
      case 'curve':
        return externObject.curve;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

