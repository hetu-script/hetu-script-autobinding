import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class TabBarThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TabBarTheme':
        return ({indicator, indicatorSize, labelColor, labelPadding, labelStyle, unselectedLabelColor, unselectedLabelStyle}) => TabBarThemeObjectBinding(TabBarTheme(indicator : indicator, indicatorSize : indicatorSize, labelColor : labelColor, labelPadding : labelPadding, labelStyle : labelStyle, unselectedLabelColor : unselectedLabelColor, unselectedLabelStyle : unselectedLabelStyle));
      case 'of':
        return (context) => TabBarTheme.of(context);
      case 'lerp':
        return (a, b, t) => TabBarTheme.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TabBarThemeObjectBinding extends HT_ExternObject<TabBarTheme> {
  TabBarThemeObjectBinding(TabBarTheme value) : super(value);

  @override
  final typeid = HT_TypeId('TabBarTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'indicator':
        return externObject.indicator;
      case 'indicatorSize':
        return externObject.indicatorSize;
      case 'labelColor':
        return externObject.labelColor;
      case 'labelPadding':
        return externObject.labelPadding;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'unselectedLabelColor':
        return externObject.unselectedLabelColor;
      case 'unselectedLabelStyle':
        return externObject.unselectedLabelStyle;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

