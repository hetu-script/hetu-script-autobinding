import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class NavigationRailThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NavigationRailThemeData':
        return ({backgroundColor, elevation, unselectedLabelTextStyle, selectedLabelTextStyle, unselectedIconTheme, selectedIconTheme, groupAlignment, labelType}) => NavigationRailThemeDataObjectBinding(NavigationRailThemeData(backgroundColor : backgroundColor, elevation : elevation, unselectedLabelTextStyle : unselectedLabelTextStyle, selectedLabelTextStyle : selectedLabelTextStyle, unselectedIconTheme : unselectedIconTheme, selectedIconTheme : selectedIconTheme, groupAlignment : groupAlignment, labelType : labelType));
      case 'lerp':
        return (a, b, t) => NavigationRailThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NavigationRailThemeDataObjectBinding extends HT_ExternObject<NavigationRailThemeData> {
  NavigationRailThemeDataObjectBinding(NavigationRailThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('NavigationRailThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'unselectedLabelTextStyle':
        return externObject.unselectedLabelTextStyle;
      case 'selectedLabelTextStyle':
        return externObject.selectedLabelTextStyle;
      case 'unselectedIconTheme':
        return externObject.unselectedIconTheme;
      case 'selectedIconTheme':
        return externObject.selectedIconTheme;
      case 'groupAlignment':
        return externObject.groupAlignment;
      case 'labelType':
        return externObject.labelType;
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

class NavigationRailThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NavigationRailTheme':
        return ({key, data, child}) => NavigationRailThemeObjectBinding(NavigationRailTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => NavigationRailTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NavigationRailThemeObjectBinding extends HT_ExternObject<NavigationRailTheme> {
  NavigationRailThemeObjectBinding(NavigationRailTheme value) : super(value);

  @override
  final typeid = HT_TypeId('NavigationRailTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'wrap':
        return externObject.wrap;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

