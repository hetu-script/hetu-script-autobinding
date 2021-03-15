import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';

class DatePickerEntryModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'calendar':
        return DatePickerEntryMode.calendar;
      case 'input':
        return DatePickerEntryMode.input;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class DatePickerModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'day':
        return DatePickerMode.day;
      case 'year':
        return DatePickerMode.year;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DateUtilsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dateOnly':
        return (date) => DateUtils.dateOnly(date);
      case 'datesOnly':
        return (range) => DateUtils.datesOnly(range);
      case 'isSameDay':
        return (dateA, dateB) => DateUtils.isSameDay(dateA, dateB);
      case 'isSameMonth':
        return (dateA, dateB) => DateUtils.isSameMonth(dateA, dateB);
      case 'monthDelta':
        return (startDate, endDate) => DateUtils.monthDelta(startDate, endDate);
      case 'addMonthsToMonthDate':
        return (monthDate, monthsToAdd) => DateUtils.addMonthsToMonthDate(monthDate, monthsToAdd);
      case 'addDaysToDate':
        return (date, days) => DateUtils.addDaysToDate(date, days);
      case 'firstDayOffset':
        return (year, month, localizations) => DateUtils.firstDayOffset(year, month, localizations);
      case 'getDaysInMonth':
        return (year, month) => DateUtils.getDaysInMonth(year, month);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class DateTimeRangeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DateTimeRange':
        return ({start, end}) => DateTimeRangeObjectBinding(DateTimeRange(start : start, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DateTimeRangeObjectBinding extends HT_ExternObject<DateTimeRange> {
  DateTimeRangeObjectBinding(DateTimeRange value) : super(value);

  @override
  final typeid = HT_TypeId('DateTimeRange');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return externObject.start;
      case 'end':
        return externObject.end;
      case 'duration':
        return externObject.duration;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

