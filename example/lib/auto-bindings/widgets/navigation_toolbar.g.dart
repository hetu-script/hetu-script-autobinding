import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;


class NavigationToolbarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NavigationToolbar':
        return ({key, leading, middle, trailing, centerMiddle = true, middleSpacing = kMiddleSpacing}) => NavigationToolbarObjectBinding(NavigationToolbar(key : key, leading : leading, middle : middle, trailing : trailing, centerMiddle : centerMiddle, middleSpacing : middleSpacing));
      case 'NavigationToolbar.kMiddleSpacing':
        return NavigationToolbar.kMiddleSpacing;
      default:
        throw HTErr_Undefined(id);
    }
  }
  static const kMiddleSpacing = 16.0;
}

class NavigationToolbarObjectBinding extends HT_ExternObject<NavigationToolbar> {
  NavigationToolbarObjectBinding(NavigationToolbar value) : super(value);

  @override
  final typeid = HT_TypeId('NavigationToolbar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leading':
        return externObject.leading;
      case 'middle':
        return externObject.middle;
      case 'trailing':
        return externObject.trailing;
      case 'centerMiddle':
        return externObject.centerMiddle;
      case 'middleSpacing':
        return externObject.middleSpacing;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

