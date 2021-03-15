import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class AppBarThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AppBarTheme':
        return ({brightness, color, backgroundColor, foregroundColor, elevation, shadowColor, iconTheme, actionsIconTheme, textTheme, centerTitle, titleSpacing, toolbarTextStyle, titleTextStyle, systemOverlayStyle, backwardsCompatibility}) => AppBarThemeObjectBinding(AppBarTheme(brightness : brightness, color : color, backgroundColor : backgroundColor, foregroundColor : foregroundColor, elevation : elevation, shadowColor : shadowColor, iconTheme : iconTheme, actionsIconTheme : actionsIconTheme, textTheme : textTheme, centerTitle : centerTitle, titleSpacing : titleSpacing, toolbarTextStyle : toolbarTextStyle, titleTextStyle : titleTextStyle, systemOverlayStyle : systemOverlayStyle, backwardsCompatibility : backwardsCompatibility));
      case 'of':
        return (context) => AppBarTheme.of(context);
      case 'lerp':
        return (a, b, t) => AppBarTheme.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AppBarThemeObjectBinding extends HT_ExternObject<AppBarTheme> {
  AppBarThemeObjectBinding(AppBarTheme value) : super(value);

  @override
  final typeid = HT_TypeId('AppBarTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'brightness':
        return externObject.brightness;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'foregroundColor':
        return externObject.foregroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'iconTheme':
        return externObject.iconTheme;
      case 'actionsIconTheme':
        return externObject.actionsIconTheme;
      case 'textTheme':
        return externObject.textTheme;
      case 'centerTitle':
        return externObject.centerTitle;
      case 'titleSpacing':
        return externObject.titleSpacing;
      case 'toolbarTextStyle':
        return externObject.toolbarTextStyle;
      case 'titleTextStyle':
        return externObject.titleTextStyle;
      case 'systemOverlayStyle':
        return externObject.systemOverlayStyle;
      case 'backwardsCompatibility':
        return externObject.backwardsCompatibility;
      case 'color':
        return externObject.color;
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

