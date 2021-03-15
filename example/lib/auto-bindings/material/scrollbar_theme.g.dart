import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class ScrollbarThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollbarThemeData':
        return ({thickness, showTrackOnHover, isAlwaysShown, radius, thumbColor, trackColor, trackBorderColor, crossAxisMargin, mainAxisMargin, minThumbLength}) => ScrollbarThemeDataObjectBinding(ScrollbarThemeData(thickness : thickness, showTrackOnHover : showTrackOnHover, isAlwaysShown : isAlwaysShown, radius : radius, thumbColor : thumbColor, trackColor : trackColor, trackBorderColor : trackBorderColor, crossAxisMargin : crossAxisMargin, mainAxisMargin : mainAxisMargin, minThumbLength : minThumbLength));
      case 'lerp':
        return (a, b, t) => ScrollbarThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollbarThemeDataObjectBinding extends HT_ExternObject<ScrollbarThemeData> {
  ScrollbarThemeDataObjectBinding(ScrollbarThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollbarThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'thickness':
        return externObject.thickness;
      case 'showTrackOnHover':
        return externObject.showTrackOnHover;
      case 'isAlwaysShown':
        return externObject.isAlwaysShown;
      case 'radius':
        return externObject.radius;
      case 'thumbColor':
        return externObject.thumbColor;
      case 'trackColor':
        return externObject.trackColor;
      case 'trackBorderColor':
        return externObject.trackBorderColor;
      case 'crossAxisMargin':
        return externObject.crossAxisMargin;
      case 'mainAxisMargin':
        return externObject.mainAxisMargin;
      case 'minThumbLength':
        return externObject.minThumbLength;
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

class ScrollbarThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollbarTheme':
        return ({key, data, child}) => ScrollbarThemeObjectBinding(ScrollbarTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => ScrollbarTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollbarThemeObjectBinding extends HT_ExternObject<ScrollbarTheme> {
  ScrollbarThemeObjectBinding(ScrollbarTheme value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollbarTheme');

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

