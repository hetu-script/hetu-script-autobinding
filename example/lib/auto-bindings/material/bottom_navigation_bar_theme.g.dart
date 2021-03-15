import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class BottomNavigationBarThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BottomNavigationBarThemeData':
        return ({backgroundColor, elevation, selectedIconTheme, unselectedIconTheme, selectedItemColor, unselectedItemColor, selectedLabelStyle, unselectedLabelStyle, showSelectedLabels, showUnselectedLabels, type}) => BottomNavigationBarThemeDataObjectBinding(BottomNavigationBarThemeData(backgroundColor : backgroundColor, elevation : elevation, selectedIconTheme : selectedIconTheme, unselectedIconTheme : unselectedIconTheme, selectedItemColor : selectedItemColor, unselectedItemColor : unselectedItemColor, selectedLabelStyle : selectedLabelStyle, unselectedLabelStyle : unselectedLabelStyle, showSelectedLabels : showSelectedLabels, showUnselectedLabels : showUnselectedLabels, type : type));
      case 'lerp':
        return (a, b, t) => BottomNavigationBarThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BottomNavigationBarThemeDataObjectBinding extends HT_ExternObject<BottomNavigationBarThemeData> {
  BottomNavigationBarThemeDataObjectBinding(BottomNavigationBarThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('BottomNavigationBarThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'selectedIconTheme':
        return externObject.selectedIconTheme;
      case 'unselectedIconTheme':
        return externObject.unselectedIconTheme;
      case 'selectedItemColor':
        return externObject.selectedItemColor;
      case 'unselectedItemColor':
        return externObject.unselectedItemColor;
      case 'selectedLabelStyle':
        return externObject.selectedLabelStyle;
      case 'unselectedLabelStyle':
        return externObject.unselectedLabelStyle;
      case 'showSelectedLabels':
        return externObject.showSelectedLabels;
      case 'showUnselectedLabels':
        return externObject.showUnselectedLabels;
      case 'type':
        return externObject.type;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BottomNavigationBarThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BottomNavigationBarTheme':
        return ({key, data, child}) => BottomNavigationBarThemeObjectBinding(BottomNavigationBarTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => BottomNavigationBarTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BottomNavigationBarThemeObjectBinding extends HT_ExternObject<BottomNavigationBarTheme> {
  BottomNavigationBarThemeObjectBinding(BottomNavigationBarTheme value) : super(value);

  @override
  final typeid = HT_TypeId('BottomNavigationBarTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

