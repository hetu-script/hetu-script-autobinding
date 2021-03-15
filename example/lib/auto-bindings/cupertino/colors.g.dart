import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';


class CupertinoColorsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoColors.activeBlue':
        return CupertinoColors.activeBlue;
      case 'CupertinoColors.activeGreen':
        return CupertinoColors.activeGreen;
      case 'CupertinoColors.activeOrange':
        return CupertinoColors.activeOrange;
      case 'CupertinoColors.white':
        return CupertinoColors.white;
      case 'CupertinoColors.black':
        return CupertinoColors.black;
      case 'CupertinoColors.lightBackgroundGray':
        return CupertinoColors.lightBackgroundGray;
      case 'CupertinoColors.extraLightBackgroundGray':
        return CupertinoColors.extraLightBackgroundGray;
      case 'CupertinoColors.darkBackgroundGray':
        return CupertinoColors.darkBackgroundGray;
      case 'CupertinoColors.inactiveGray':
        return CupertinoColors.inactiveGray;
      case 'CupertinoColors.destructiveRed':
        return CupertinoColors.destructiveRed;
      case 'CupertinoColors.systemBlue':
        return CupertinoColors.systemBlue;
      case 'CupertinoColors.systemGreen':
        return CupertinoColors.systemGreen;
      case 'CupertinoColors.systemIndigo':
        return CupertinoColors.systemIndigo;
      case 'CupertinoColors.systemOrange':
        return CupertinoColors.systemOrange;
      case 'CupertinoColors.systemPink':
        return CupertinoColors.systemPink;
      case 'CupertinoColors.systemPurple':
        return CupertinoColors.systemPurple;
      case 'CupertinoColors.systemRed':
        return CupertinoColors.systemRed;
      case 'CupertinoColors.systemTeal':
        return CupertinoColors.systemTeal;
      case 'CupertinoColors.systemYellow':
        return CupertinoColors.systemYellow;
      case 'CupertinoColors.systemGrey':
        return CupertinoColors.systemGrey;
      case 'CupertinoColors.systemGrey2':
        return CupertinoColors.systemGrey2;
      case 'CupertinoColors.systemGrey3':
        return CupertinoColors.systemGrey3;
      case 'CupertinoColors.systemGrey4':
        return CupertinoColors.systemGrey4;
      case 'CupertinoColors.systemGrey5':
        return CupertinoColors.systemGrey5;
      case 'CupertinoColors.systemGrey6':
        return CupertinoColors.systemGrey6;
      case 'CupertinoColors.label':
        return CupertinoColors.label;
      case 'CupertinoColors.secondaryLabel':
        return CupertinoColors.secondaryLabel;
      case 'CupertinoColors.tertiaryLabel':
        return CupertinoColors.tertiaryLabel;
      case 'CupertinoColors.quaternaryLabel':
        return CupertinoColors.quaternaryLabel;
      case 'CupertinoColors.systemFill':
        return CupertinoColors.systemFill;
      case 'CupertinoColors.secondarySystemFill':
        return CupertinoColors.secondarySystemFill;
      case 'CupertinoColors.tertiarySystemFill':
        return CupertinoColors.tertiarySystemFill;
      case 'CupertinoColors.quaternarySystemFill':
        return CupertinoColors.quaternarySystemFill;
      case 'CupertinoColors.placeholderText':
        return CupertinoColors.placeholderText;
      case 'CupertinoColors.systemBackground':
        return CupertinoColors.systemBackground;
      case 'CupertinoColors.secondarySystemBackground':
        return CupertinoColors.secondarySystemBackground;
      case 'CupertinoColors.tertiarySystemBackground':
        return CupertinoColors.tertiarySystemBackground;
      case 'CupertinoColors.systemGroupedBackground':
        return CupertinoColors.systemGroupedBackground;
      case 'CupertinoColors.secondarySystemGroupedBackground':
        return CupertinoColors.secondarySystemGroupedBackground;
      case 'CupertinoColors.tertiarySystemGroupedBackground':
        return CupertinoColors.tertiarySystemGroupedBackground;
      case 'CupertinoColors.separator':
        return CupertinoColors.separator;
      case 'CupertinoColors.opaqueSeparator':
        return CupertinoColors.opaqueSeparator;
      case 'CupertinoColors.link':
        return CupertinoColors.link;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class CupertinoDynamicColorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoDynamicColor':
        return ({debugLabel, color, darkColor, highContrastColor, darkHighContrastColor, elevatedColor, darkElevatedColor, highContrastElevatedColor, darkHighContrastElevatedColor}) => CupertinoDynamicColorObjectBinding(CupertinoDynamicColor(debugLabel : debugLabel, color : color, darkColor : darkColor, highContrastColor : highContrastColor, darkHighContrastColor : darkHighContrastColor, elevatedColor : elevatedColor, darkElevatedColor : darkElevatedColor, highContrastElevatedColor : highContrastElevatedColor, darkHighContrastElevatedColor : darkHighContrastElevatedColor));
      case 'CupertinoDynamicColor.withBrightnessAndContrast':
        return ({debugLabel, color, darkColor, highContrastColor, darkHighContrastColor}) => CupertinoDynamicColorObjectBinding(CupertinoDynamicColor.withBrightnessAndContrast(debugLabel : debugLabel, color : color, darkColor : darkColor, highContrastColor : highContrastColor, darkHighContrastColor : darkHighContrastColor));
      case 'CupertinoDynamicColor.withBrightness':
        return ({debugLabel, color, darkColor}) => CupertinoDynamicColorObjectBinding(CupertinoDynamicColor.withBrightness(debugLabel : debugLabel, color : color, darkColor : darkColor));
      case 'resolve':
        return (resolvable, context) => CupertinoDynamicColor.resolve(resolvable, context);
      case 'maybeResolve':
        return (resolvable, context) => CupertinoDynamicColor.maybeResolve(resolvable, context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoDynamicColorObjectBinding extends HT_ExternObject<CupertinoDynamicColor> {
  CupertinoDynamicColorObjectBinding(CupertinoDynamicColor value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoDynamicColor');


}

