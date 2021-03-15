import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';


class BottomNavigationBarItemClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BottomNavigationBarItem':
        return ({icon, title, label, activeIcon, backgroundColor, tooltip}) => BottomNavigationBarItemObjectBinding(BottomNavigationBarItem(icon : icon, title : title, label : label, activeIcon : activeIcon, backgroundColor : backgroundColor, tooltip : tooltip));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BottomNavigationBarItemObjectBinding extends HT_ExternObject<BottomNavigationBarItem> {
  BottomNavigationBarItemObjectBinding(BottomNavigationBarItem value) : super(value);

  @override
  final typeid = HT_TypeId('BottomNavigationBarItem');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'icon':
        return externObject.icon;
      case 'activeIcon':
        return externObject.activeIcon;
      case 'title':
        return externObject.title;
      case 'label':
        return externObject.label;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'tooltip':
        return externObject.tooltip;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

