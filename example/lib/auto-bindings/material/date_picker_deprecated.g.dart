import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math'as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class DayPickerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DayPicker':
        return ({key, selectedDate, currentDate, onChanged, firstDate, lastDate, displayedMonth, selectableDayPredicate, dragStartBehavior = DragStartBehavior.start}) => DayPickerObjectBinding(DayPicker(key : key, selectedDate : selectedDate, currentDate : currentDate, onChanged : onChanged, firstDate : firstDate, lastDate : lastDate, displayedMonth : displayedMonth, selectableDayPredicate : selectableDayPredicate, dragStartBehavior : dragStartBehavior));
      case 'getDaysInMonth':
        return (year, month) => DayPicker.getDaysInMonth(year, month);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DayPickerObjectBinding extends HT_ExternObject<DayPicker> {
  DayPickerObjectBinding(DayPicker value) : super(value);

  @override
  final typeid = HT_TypeId('DayPicker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'selectedDate':
        return externObject.selectedDate;
      case 'currentDate':
        return externObject.currentDate;
      case 'onChanged':
        return externObject.onChanged;
      case 'firstDate':
        return externObject.firstDate;
      case 'lastDate':
        return externObject.lastDate;
      case 'displayedMonth':
        return externObject.displayedMonth;
      case 'selectableDayPredicate':
        return externObject.selectableDayPredicate;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MonthPickerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MonthPicker':
        return ({key, selectedDate, onChanged, firstDate, lastDate, selectableDayPredicate, dragStartBehavior = DragStartBehavior.start}) => MonthPickerObjectBinding(MonthPicker(key : key, selectedDate : selectedDate, onChanged : onChanged, firstDate : firstDate, lastDate : lastDate, selectableDayPredicate : selectableDayPredicate, dragStartBehavior : dragStartBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MonthPickerObjectBinding extends HT_ExternObject<MonthPicker> {
  MonthPickerObjectBinding(MonthPicker value) : super(value);

  @override
  final typeid = HT_TypeId('MonthPicker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'selectedDate':
        return externObject.selectedDate;
      case 'onChanged':
        return externObject.onChanged;
      case 'firstDate':
        return externObject.firstDate;
      case 'lastDate':
        return externObject.lastDate;
      case 'selectableDayPredicate':
        return externObject.selectableDayPredicate;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

