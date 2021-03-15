import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';
const _kDefaultTabBarInactiveColor = CupertinoColors.inactiveGray;
const _kDefaultTabBarBorderColor = CupertinoDynamicColor.withBrightness(color: Color(0x4C000000), darkColor: Color(0x29000000));


class CupertinoTabBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTabBar':
        return ({key, items, onTap, currentIndex = 0, backgroundColor, activeColor, inactiveColor = _kDefaultTabBarInactiveColor, iconSize = 30.0, border = const Border(top: BorderSide(color: _kDefaultTabBarBorderColor, width: 0.0, style: BorderStyle.solid))}) => CupertinoTabBarObjectBinding(CupertinoTabBar(key : key, items : items, onTap : onTap, currentIndex : currentIndex, backgroundColor : backgroundColor, activeColor : activeColor, inactiveColor : inactiveColor, iconSize : iconSize, border : border));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTabBarObjectBinding extends HT_ExternObject<CupertinoTabBar> {
  CupertinoTabBarObjectBinding(CupertinoTabBar value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTabBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'items':
        return externObject.items;
      case 'onTap':
        return externObject.onTap;
      case 'currentIndex':
        return externObject.currentIndex;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'activeColor':
        return externObject.activeColor;
      case 'inactiveColor':
        return externObject.inactiveColor;
      case 'iconSize':
        return externObject.iconSize;
      case 'border':
        return externObject.border;
      case 'preferredSize':
        return externObject.preferredSize;
      case 'opaque':
        return externObject.opaque;
      case 'build':
        return externObject.build;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

