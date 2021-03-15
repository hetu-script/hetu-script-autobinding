import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';

class DayPeriodClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'am':
        return DayPeriod.am;
      case 'pm':
        return DayPeriod.pm;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class TimeOfDayFormatClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HH_colon_mm':
        return TimeOfDayFormat.HH_colon_mm;
      case 'HH_dot_mm':
        return TimeOfDayFormat.HH_dot_mm;
      case 'frenchCanadian':
        return TimeOfDayFormat.frenchCanadian;
      case 'H_colon_mm':
        return TimeOfDayFormat.H_colon_mm;
      case 'h_colon_mm_space_a':
        return TimeOfDayFormat.h_colon_mm_space_a;
      case 'a_space_h_colon_mm':
        return TimeOfDayFormat.a_space_h_colon_mm;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class HourFormatClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HH':
        return HourFormat.HH;
      case 'H':
        return HourFormat.H;
      case 'h':
        return HourFormat.h;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TimeOfDayClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TimeOfDay':
        return ({hour, minute}) => TimeOfDayObjectBinding(TimeOfDay(hour : hour, minute : minute));
      case 'TimeOfDay.fromDateTime':
        return (time) => TimeOfDayObjectBinding(TimeOfDay.fromDateTime(time));
      case 'TimeOfDay.hoursPerDay':
        return TimeOfDay.hoursPerDay;
      case 'TimeOfDay.hoursPerPeriod':
        return TimeOfDay.hoursPerPeriod;
      case 'TimeOfDay.minutesPerHour':
        return TimeOfDay.minutesPerHour;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TimeOfDayObjectBinding extends HT_ExternObject<TimeOfDay> {
  TimeOfDayObjectBinding(TimeOfDay value) : super(value);

  @override
  final typeid = HT_TypeId('TimeOfDay');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hour':
        return externObject.hour;
      case 'minute':
        return externObject.minute;
      case 'period':
        return externObject.period;
      case 'hourOfPeriod':
        return externObject.hourOfPeriod;
      case 'periodOffset':
        return externObject.periodOffset;
      case 'hashCode':
        return externObject.hashCode;
      case 'replacing':
        return externObject.replacing;
      case 'format':
        return externObject.format;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

