import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class CalendarDatePickerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CalendarDatePicker':
        return ({key, initialDate, firstDate, lastDate, currentDate, onDateChanged, onDisplayedMonthChanged, initialCalendarMode = DatePickerMode.day, selectableDayPredicate}) => CalendarDatePickerObjectBinding(CalendarDatePicker(key : key, initialDate : initialDate, firstDate : firstDate, lastDate : lastDate, currentDate : currentDate, onDateChanged : onDateChanged, onDisplayedMonthChanged : onDisplayedMonthChanged, initialCalendarMode : initialCalendarMode, selectableDayPredicate : selectableDayPredicate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CalendarDatePickerObjectBinding extends HT_ExternObject<CalendarDatePicker> {
  CalendarDatePickerObjectBinding(CalendarDatePicker value) : super(value);

  @override
  final typeid = HT_TypeId('CalendarDatePicker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initialDate':
        return externObject.initialDate;
      case 'firstDate':
        return externObject.firstDate;
      case 'lastDate':
        return externObject.lastDate;
      case 'currentDate':
        return externObject.currentDate;
      case 'onDateChanged':
        return externObject.onDateChanged;
      case 'onDisplayedMonthChanged':
        return externObject.onDisplayedMonthChanged;
      case 'initialCalendarMode':
        return externObject.initialCalendarMode;
      case 'selectableDayPredicate':
        return externObject.selectableDayPredicate;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class YearPickerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'YearPicker':
        return ({key, currentDate, firstDate, lastDate, initialDate, selectedDate, onChanged, dragStartBehavior = DragStartBehavior.start}) => YearPickerObjectBinding(YearPicker(key : key, currentDate : currentDate, firstDate : firstDate, lastDate : lastDate, initialDate : initialDate, selectedDate : selectedDate, onChanged : onChanged, dragStartBehavior : dragStartBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class YearPickerObjectBinding extends HT_ExternObject<YearPicker> {
  YearPickerObjectBinding(YearPicker value) : super(value);

  @override
  final typeid = HT_TypeId('YearPicker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'currentDate':
        return externObject.currentDate;
      case 'firstDate':
        return externObject.firstDate;
      case 'lastDate':
        return externObject.lastDate;
      case 'initialDate':
        return externObject.initialDate;
      case 'selectedDate':
        return externObject.selectedDate;
      case 'onChanged':
        return externObject.onChanged;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

