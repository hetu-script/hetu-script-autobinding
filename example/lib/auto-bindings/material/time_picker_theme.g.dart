import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class TimePickerThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TimePickerThemeData':
        return ({backgroundColor, hourMinuteTextColor, hourMinuteColor, dayPeriodTextColor, dayPeriodColor, dialHandColor, dialBackgroundColor, dialTextColor, entryModeIconColor, hourMinuteTextStyle, dayPeriodTextStyle, helpTextStyle, shape, hourMinuteShape, dayPeriodShape, dayPeriodBorderSide, inputDecorationTheme}) => TimePickerThemeDataObjectBinding(TimePickerThemeData(backgroundColor : backgroundColor, hourMinuteTextColor : hourMinuteTextColor, hourMinuteColor : hourMinuteColor, dayPeriodTextColor : dayPeriodTextColor, dayPeriodColor : dayPeriodColor, dialHandColor : dialHandColor, dialBackgroundColor : dialBackgroundColor, dialTextColor : dialTextColor, entryModeIconColor : entryModeIconColor, hourMinuteTextStyle : hourMinuteTextStyle, dayPeriodTextStyle : dayPeriodTextStyle, helpTextStyle : helpTextStyle, shape : shape, hourMinuteShape : hourMinuteShape, dayPeriodShape : dayPeriodShape, dayPeriodBorderSide : dayPeriodBorderSide, inputDecorationTheme : inputDecorationTheme));
      case 'lerp':
        return (a, b, t) => TimePickerThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TimePickerThemeDataObjectBinding extends HT_ExternObject<TimePickerThemeData> {
  TimePickerThemeDataObjectBinding(TimePickerThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('TimePickerThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'hourMinuteTextColor':
        return externObject.hourMinuteTextColor;
      case 'hourMinuteColor':
        return externObject.hourMinuteColor;
      case 'dayPeriodTextColor':
        return externObject.dayPeriodTextColor;
      case 'dayPeriodColor':
        return externObject.dayPeriodColor;
      case 'dialHandColor':
        return externObject.dialHandColor;
      case 'dialBackgroundColor':
        return externObject.dialBackgroundColor;
      case 'dialTextColor':
        return externObject.dialTextColor;
      case 'entryModeIconColor':
        return externObject.entryModeIconColor;
      case 'hourMinuteTextStyle':
        return externObject.hourMinuteTextStyle;
      case 'dayPeriodTextStyle':
        return externObject.dayPeriodTextStyle;
      case 'helpTextStyle':
        return externObject.helpTextStyle;
      case 'shape':
        return externObject.shape;
      case 'hourMinuteShape':
        return externObject.hourMinuteShape;
      case 'dayPeriodShape':
        return externObject.dayPeriodShape;
      case 'dayPeriodBorderSide':
        return externObject.dayPeriodBorderSide;
      case 'inputDecorationTheme':
        return externObject.inputDecorationTheme;
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

class TimePickerThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TimePickerTheme':
        return ({key, data, child}) => TimePickerThemeObjectBinding(TimePickerTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => TimePickerTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TimePickerThemeObjectBinding extends HT_ExternObject<TimePickerTheme> {
  TimePickerThemeObjectBinding(TimePickerTheme value) : super(value);

  @override
  final typeid = HT_TypeId('TimePickerTheme');

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

