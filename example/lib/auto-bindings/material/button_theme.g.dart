import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ButtonTextThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'normal':
        return ButtonTextTheme.normal;
      case 'accent':
        return ButtonTextTheme.accent;
      case 'primary':
        return ButtonTextTheme.primary;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class ButtonBarLayoutBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'constrained':
        return ButtonBarLayoutBehavior.constrained;
      case 'padded':
        return ButtonBarLayoutBehavior.padded;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ButtonThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ButtonTheme':
        return ({key, textTheme = ButtonTextTheme.normal, layoutBehavior = ButtonBarLayoutBehavior.padded, minWidth = 88.0, height = 36.0, padding, shape, alignedDropdown = false, buttonColor, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorScheme, materialTapTargetSize, child}) => ButtonThemeObjectBinding(ButtonTheme(key : key, textTheme : textTheme, layoutBehavior : layoutBehavior, minWidth : minWidth, height : height, padding : padding, shape : shape, alignedDropdown : alignedDropdown, buttonColor : buttonColor, disabledColor : disabledColor, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, splashColor : splashColor, colorScheme : colorScheme, materialTapTargetSize : materialTapTargetSize, child : child));
      case 'ButtonTheme.fromButtonThemeData':
        return ({key, data, child}) => ButtonThemeObjectBinding(ButtonTheme.fromButtonThemeData(key : key, data : data, child : child));
      case 'of':
        return (context) => ButtonTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ButtonThemeObjectBinding extends HT_ExternObject<ButtonTheme> {
  ButtonThemeObjectBinding(ButtonTheme value) : super(value);

  @override
  final typeid = HT_TypeId('ButtonTheme');

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

class ButtonThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ButtonThemeData':
        return ({textTheme = ButtonTextTheme.normal, minWidth = 88.0, height = 36.0, padding, shape, layoutBehavior = ButtonBarLayoutBehavior.padded, alignedDropdown = false, buttonColor, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorScheme, materialTapTargetSize}) => ButtonThemeDataObjectBinding(ButtonThemeData(textTheme : textTheme, minWidth : minWidth, height : height, padding : padding, shape : shape, layoutBehavior : layoutBehavior, alignedDropdown : alignedDropdown, buttonColor : buttonColor, disabledColor : disabledColor, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, splashColor : splashColor, colorScheme : colorScheme, materialTapTargetSize : materialTapTargetSize));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ButtonThemeDataObjectBinding extends HT_ExternObject<ButtonThemeData> {
  ButtonThemeDataObjectBinding(ButtonThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('ButtonThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'minWidth':
        return externObject.minWidth;
      case 'height':
        return externObject.height;
      case 'textTheme':
        return externObject.textTheme;
      case 'layoutBehavior':
        return externObject.layoutBehavior;
      case 'alignedDropdown':
        return externObject.alignedDropdown;
      case 'colorScheme':
        return externObject.colorScheme;
      case 'constraints':
        return externObject.constraints;
      case 'padding':
        return externObject.padding;
      case 'shape':
        return externObject.shape;
      case 'hashCode':
        return externObject.hashCode;
      case 'getBrightness':
        return externObject.getBrightness;
      case 'getTextTheme':
        return externObject.getTextTheme;
      case 'getDisabledTextColor':
        return externObject.getDisabledTextColor;
      case 'getDisabledFillColor':
        return externObject.getDisabledFillColor;
      case 'getFillColor':
        return externObject.getFillColor;
      case 'getTextColor':
        return externObject.getTextColor;
      case 'getSplashColor':
        return externObject.getSplashColor;
      case 'getFocusColor':
        return externObject.getFocusColor;
      case 'getHoverColor':
        return externObject.getHoverColor;
      case 'getHighlightColor':
        return externObject.getHighlightColor;
      case 'getElevation':
        return externObject.getElevation;
      case 'getFocusElevation':
        return externObject.getFocusElevation;
      case 'getHoverElevation':
        return externObject.getHoverElevation;
      case 'getHighlightElevation':
        return externObject.getHighlightElevation;
      case 'getDisabledElevation':
        return externObject.getDisabledElevation;
      case 'getPadding':
        return externObject.getPadding;
      case 'getShape':
        return externObject.getShape;
      case 'getAnimationDuration':
        return externObject.getAnimationDuration;
      case 'getConstraints':
        return externObject.getConstraints;
      case 'getMaterialTapTargetSize':
        return externObject.getMaterialTapTargetSize;
      case 'copyWith':
        return externObject.copyWith;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

