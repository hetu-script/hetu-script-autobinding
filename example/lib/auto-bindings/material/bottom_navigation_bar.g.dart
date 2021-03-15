import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:collection';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class BottomNavigationBarTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'fixed':
        return BottomNavigationBarType.fixed;
      case 'shifting':
        return BottomNavigationBarType.shifting;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BottomNavigationBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BottomNavigationBar':
        return ({key, items, onTap, currentIndex = 0, elevation, type, fixedColor, backgroundColor, iconSize = 24.0, selectedItemColor, unselectedItemColor, selectedIconTheme, unselectedIconTheme, selectedFontSize = 14.0, unselectedFontSize = 12.0, selectedLabelStyle, unselectedLabelStyle, showSelectedLabels, showUnselectedLabels, mouseCursor}) => BottomNavigationBarObjectBinding(BottomNavigationBar(key : key, items : items, onTap : onTap, currentIndex : currentIndex, elevation : elevation, type : type, fixedColor : fixedColor, backgroundColor : backgroundColor, iconSize : iconSize, selectedItemColor : selectedItemColor, unselectedItemColor : unselectedItemColor, selectedIconTheme : selectedIconTheme, unselectedIconTheme : unselectedIconTheme, selectedFontSize : selectedFontSize, unselectedFontSize : unselectedFontSize, selectedLabelStyle : selectedLabelStyle, unselectedLabelStyle : unselectedLabelStyle, showSelectedLabels : showSelectedLabels, showUnselectedLabels : showUnselectedLabels, mouseCursor : mouseCursor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BottomNavigationBarObjectBinding extends HT_ExternObject<BottomNavigationBar> {
  BottomNavigationBarObjectBinding(BottomNavigationBar value) : super(value);

  @override
  final typeid = HT_TypeId('BottomNavigationBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'items':
        return externObject.items;
      case 'onTap':
        return externObject.onTap;
      case 'currentIndex':
        return externObject.currentIndex;
      case 'elevation':
        return externObject.elevation;
      case 'type':
        return externObject.type;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'iconSize':
        return externObject.iconSize;
      case 'selectedItemColor':
        return externObject.selectedItemColor;
      case 'unselectedItemColor':
        return externObject.unselectedItemColor;
      case 'selectedIconTheme':
        return externObject.selectedIconTheme;
      case 'unselectedIconTheme':
        return externObject.unselectedIconTheme;
      case 'selectedLabelStyle':
        return externObject.selectedLabelStyle;
      case 'unselectedLabelStyle':
        return externObject.unselectedLabelStyle;
      case 'selectedFontSize':
        return externObject.selectedFontSize;
      case 'unselectedFontSize':
        return externObject.unselectedFontSize;
      case 'showUnselectedLabels':
        return externObject.showUnselectedLabels;
      case 'showSelectedLabels':
        return externObject.showSelectedLabels;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'fixedColor':
        return externObject.fixedColor;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

