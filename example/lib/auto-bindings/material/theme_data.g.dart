import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class MaterialTapTargetSizeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'padded':
        return MaterialTapTargetSize.padded;
      case 'shrinkWrap':
        return MaterialTapTargetSize.shrinkWrap;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ThemeData.raw':
        return ({visualDensity, primaryColor, primaryColorBrightness, primaryColorLight, primaryColorDark, canvasColor, shadowColor, accentColor, accentColorBrightness, scaffoldBackgroundColor, bottomAppBarColor, cardColor, dividerColor, focusColor, hoverColor, highlightColor, splashColor, splashFactory, selectedRowColor, unselectedWidgetColor, disabledColor, buttonTheme, buttonColor, toggleButtonsTheme, secondaryHeaderColor, textSelectionColor, cursorColor, textSelectionHandleColor, backgroundColor, dialogBackgroundColor, indicatorColor, hintColor, errorColor, toggleableActiveColor, textTheme, primaryTextTheme, accentTextTheme, inputDecorationTheme, iconTheme, primaryIconTheme, accentIconTheme, sliderTheme, tabBarTheme, tooltipTheme, cardTheme, chipTheme, platform, materialTapTargetSize, applyElevationOverlayColor, pageTransitionsTheme, appBarTheme, scrollbarTheme, bottomAppBarTheme, colorScheme, dialogTheme, floatingActionButtonTheme, navigationRailTheme, typography, cupertinoOverrideTheme, snackBarTheme, bottomSheetTheme, popupMenuTheme, bannerTheme, dividerTheme, buttonBarTheme, bottomNavigationBarTheme, timePickerTheme, textButtonTheme, elevatedButtonTheme, outlinedButtonTheme, textSelectionTheme, dataTableTheme, checkboxTheme, radioTheme, switchTheme, fixTextFieldOutlineLabel, useTextSelectionTheme}) => ThemeDataObjectBinding(ThemeData.raw(visualDensity : visualDensity, primaryColor : primaryColor, primaryColorBrightness : primaryColorBrightness, primaryColorLight : primaryColorLight, primaryColorDark : primaryColorDark, canvasColor : canvasColor, shadowColor : shadowColor, accentColor : accentColor, accentColorBrightness : accentColorBrightness, scaffoldBackgroundColor : scaffoldBackgroundColor, bottomAppBarColor : bottomAppBarColor, cardColor : cardColor, dividerColor : dividerColor, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, splashColor : splashColor, splashFactory : splashFactory, selectedRowColor : selectedRowColor, unselectedWidgetColor : unselectedWidgetColor, disabledColor : disabledColor, buttonTheme : buttonTheme, buttonColor : buttonColor, toggleButtonsTheme : toggleButtonsTheme, secondaryHeaderColor : secondaryHeaderColor, textSelectionColor : textSelectionColor, cursorColor : cursorColor, textSelectionHandleColor : textSelectionHandleColor, backgroundColor : backgroundColor, dialogBackgroundColor : dialogBackgroundColor, indicatorColor : indicatorColor, hintColor : hintColor, errorColor : errorColor, toggleableActiveColor : toggleableActiveColor, textTheme : textTheme, primaryTextTheme : primaryTextTheme, accentTextTheme : accentTextTheme, inputDecorationTheme : inputDecorationTheme, iconTheme : iconTheme, primaryIconTheme : primaryIconTheme, accentIconTheme : accentIconTheme, sliderTheme : sliderTheme, tabBarTheme : tabBarTheme, tooltipTheme : tooltipTheme, cardTheme : cardTheme, chipTheme : chipTheme, platform : platform, materialTapTargetSize : materialTapTargetSize, applyElevationOverlayColor : applyElevationOverlayColor, pageTransitionsTheme : pageTransitionsTheme, appBarTheme : appBarTheme, scrollbarTheme : scrollbarTheme, bottomAppBarTheme : bottomAppBarTheme, colorScheme : colorScheme, dialogTheme : dialogTheme, floatingActionButtonTheme : floatingActionButtonTheme, navigationRailTheme : navigationRailTheme, typography : typography, cupertinoOverrideTheme : cupertinoOverrideTheme, snackBarTheme : snackBarTheme, bottomSheetTheme : bottomSheetTheme, popupMenuTheme : popupMenuTheme, bannerTheme : bannerTheme, dividerTheme : dividerTheme, buttonBarTheme : buttonBarTheme, bottomNavigationBarTheme : bottomNavigationBarTheme, timePickerTheme : timePickerTheme, textButtonTheme : textButtonTheme, elevatedButtonTheme : elevatedButtonTheme, outlinedButtonTheme : outlinedButtonTheme, textSelectionTheme : textSelectionTheme, dataTableTheme : dataTableTheme, checkboxTheme : checkboxTheme, radioTheme : radioTheme, switchTheme : switchTheme, fixTextFieldOutlineLabel : fixTextFieldOutlineLabel, useTextSelectionTheme : useTextSelectionTheme));
      case 'localize':
        return (baseTheme, localTextGeometry) => ThemeData.localize(baseTheme, localTextGeometry);
      case 'estimateBrightnessForColor':
        return (color) => ThemeData.estimateBrightnessForColor(color);
      case 'lerp':
        return (a, b, t) => ThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ThemeDataObjectBinding extends HT_ExternObject<ThemeData> {
  ThemeDataObjectBinding(ThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('ThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'visualDensity':
        return externObject.visualDensity;
      case 'primaryColor':
        return externObject.primaryColor;
      case 'primaryColorBrightness':
        return externObject.primaryColorBrightness;
      case 'primaryColorLight':
        return externObject.primaryColorLight;
      case 'primaryColorDark':
        return externObject.primaryColorDark;
      case 'canvasColor':
        return externObject.canvasColor;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'accentColor':
        return externObject.accentColor;
      case 'accentColorBrightness':
        return externObject.accentColorBrightness;
      case 'scaffoldBackgroundColor':
        return externObject.scaffoldBackgroundColor;
      case 'bottomAppBarColor':
        return externObject.bottomAppBarColor;
      case 'cardColor':
        return externObject.cardColor;
      case 'dividerColor':
        return externObject.dividerColor;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'highlightColor':
        return externObject.highlightColor;
      case 'splashColor':
        return externObject.splashColor;
      case 'splashFactory':
        return externObject.splashFactory;
      case 'selectedRowColor':
        return externObject.selectedRowColor;
      case 'unselectedWidgetColor':
        return externObject.unselectedWidgetColor;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'buttonTheme':
        return externObject.buttonTheme;
      case 'toggleButtonsTheme':
        return externObject.toggleButtonsTheme;
      case 'buttonColor':
        return externObject.buttonColor;
      case 'secondaryHeaderColor':
        return externObject.secondaryHeaderColor;
      case 'textSelectionColor':
        return externObject.textSelectionColor;
      case 'cursorColor':
        return externObject.cursorColor;
      case 'textSelectionHandleColor':
        return externObject.textSelectionHandleColor;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'dialogBackgroundColor':
        return externObject.dialogBackgroundColor;
      case 'indicatorColor':
        return externObject.indicatorColor;
      case 'hintColor':
        return externObject.hintColor;
      case 'errorColor':
        return externObject.errorColor;
      case 'toggleableActiveColor':
        return externObject.toggleableActiveColor;
      case 'textTheme':
        return externObject.textTheme;
      case 'primaryTextTheme':
        return externObject.primaryTextTheme;
      case 'accentTextTheme':
        return externObject.accentTextTheme;
      case 'inputDecorationTheme':
        return externObject.inputDecorationTheme;
      case 'iconTheme':
        return externObject.iconTheme;
      case 'primaryIconTheme':
        return externObject.primaryIconTheme;
      case 'accentIconTheme':
        return externObject.accentIconTheme;
      case 'sliderTheme':
        return externObject.sliderTheme;
      case 'tabBarTheme':
        return externObject.tabBarTheme;
      case 'tooltipTheme':
        return externObject.tooltipTheme;
      case 'cardTheme':
        return externObject.cardTheme;
      case 'chipTheme':
        return externObject.chipTheme;
      case 'platform':
        return externObject.platform;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'applyElevationOverlayColor':
        return externObject.applyElevationOverlayColor;
      case 'pageTransitionsTheme':
        return externObject.pageTransitionsTheme;
      case 'appBarTheme':
        return externObject.appBarTheme;
      case 'scrollbarTheme':
        return externObject.scrollbarTheme;
      case 'bottomAppBarTheme':
        return externObject.bottomAppBarTheme;
      case 'colorScheme':
        return externObject.colorScheme;
      case 'snackBarTheme':
        return externObject.snackBarTheme;
      case 'dialogTheme':
        return externObject.dialogTheme;
      case 'floatingActionButtonTheme':
        return externObject.floatingActionButtonTheme;
      case 'navigationRailTheme':
        return externObject.navigationRailTheme;
      case 'typography':
        return externObject.typography;
      case 'cupertinoOverrideTheme':
        return externObject.cupertinoOverrideTheme;
      case 'bottomSheetTheme':
        return externObject.bottomSheetTheme;
      case 'popupMenuTheme':
        return externObject.popupMenuTheme;
      case 'bannerTheme':
        return externObject.bannerTheme;
      case 'dividerTheme':
        return externObject.dividerTheme;
      case 'buttonBarTheme':
        return externObject.buttonBarTheme;
      case 'bottomNavigationBarTheme':
        return externObject.bottomNavigationBarTheme;
      case 'timePickerTheme':
        return externObject.timePickerTheme;
      case 'textButtonTheme':
        return externObject.textButtonTheme;
      case 'elevatedButtonTheme':
        return externObject.elevatedButtonTheme;
      case 'outlinedButtonTheme':
        return externObject.outlinedButtonTheme;
      case 'textSelectionTheme':
        return externObject.textSelectionTheme;
      case 'dataTableTheme':
        return externObject.dataTableTheme;
      case 'checkboxTheme':
        return externObject.checkboxTheme;
      case 'radioTheme':
        return externObject.radioTheme;
      case 'switchTheme':
        return externObject.switchTheme;
      case 'fixTextFieldOutlineLabel':
        return externObject.fixTextFieldOutlineLabel;
      case 'useTextSelectionTheme':
        return externObject.useTextSelectionTheme;
      case 'brightness':
        return externObject.brightness;
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

class MaterialBasedCupertinoThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialBasedCupertinoThemeData':
        return ({materialTheme}) => MaterialBasedCupertinoThemeDataObjectBinding(MaterialBasedCupertinoThemeData(materialTheme : materialTheme));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialBasedCupertinoThemeDataObjectBinding extends HT_ExternObject<MaterialBasedCupertinoThemeData> {
  MaterialBasedCupertinoThemeDataObjectBinding(MaterialBasedCupertinoThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialBasedCupertinoThemeData');


}

class VisualDensityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'VisualDensity':
        return ({horizontal = 0.0, vertical = 0.0}) => VisualDensityObjectBinding(VisualDensity(horizontal : horizontal, vertical : vertical));
      case 'adaptivePlatformDensity':
        return () => VisualDensity.adaptivePlatformDensity;
      case 'lerp':
        return (a, b, t) => VisualDensity.lerp(a, b, t);
      case 'VisualDensity.minimumDensity':
        return VisualDensity.minimumDensity;
      case 'VisualDensity.maximumDensity':
        return VisualDensity.maximumDensity;
      case 'VisualDensity.standard':
        return VisualDensity.standard;
      case 'VisualDensity.comfortable':
        return VisualDensity.comfortable;
      case 'VisualDensity.compact':
        return VisualDensity.compact;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class VisualDensityObjectBinding extends HT_ExternObject<VisualDensity> {
  VisualDensityObjectBinding(VisualDensity value) : super(value);

  @override
  final typeid = HT_TypeId('VisualDensity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'horizontal':
        return externObject.horizontal;
      case 'vertical':
        return externObject.vertical;
      case 'baseSizeAdjustment':
        return externObject.baseSizeAdjustment;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'effectiveConstraints':
        return externObject.effectiveConstraints;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'toStringShort':
        return externObject.toStringShort;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

