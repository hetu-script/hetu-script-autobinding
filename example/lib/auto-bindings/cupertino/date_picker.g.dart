import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math'as math;
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

class CupertinoDatePickerModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'time':
        return CupertinoDatePickerMode.time;
      case 'date':
        return CupertinoDatePickerMode.date;
      case 'dateAndTime':
        return CupertinoDatePickerMode.dateAndTime;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class CupertinoTimerPickerModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hm':
        return CupertinoTimerPickerMode.hm;
      case 'ms':
        return CupertinoTimerPickerMode.ms;
      case 'hms':
        return CupertinoTimerPickerMode.hms;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoDatePickerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoDatePicker':
        return ({key, mode = CupertinoDatePickerMode.dateAndTime, onDateTimeChanged, initialDateTime, minimumDate, maximumDate, minimumYear = 1, maximumYear, minuteInterval = 1, use24hFormat = false, backgroundColor}) => CupertinoDatePickerObjectBinding(CupertinoDatePicker(key : key, mode : mode, onDateTimeChanged : onDateTimeChanged, initialDateTime : initialDateTime, minimumDate : minimumDate, maximumDate : maximumDate, minimumYear : minimumYear, maximumYear : maximumYear, minuteInterval : minuteInterval, use24hFormat : use24hFormat, backgroundColor : backgroundColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoDatePickerObjectBinding extends HT_ExternObject<CupertinoDatePicker> {
  CupertinoDatePickerObjectBinding(CupertinoDatePicker value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoDatePicker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'mode':
        return externObject.mode;
      case 'initialDateTime':
        return externObject.initialDateTime;
      case 'minimumDate':
        return externObject.minimumDate;
      case 'maximumDate':
        return externObject.maximumDate;
      case 'minimumYear':
        return externObject.minimumYear;
      case 'maximumYear':
        return externObject.maximumYear;
      case 'minuteInterval':
        return externObject.minuteInterval;
      case 'use24hFormat':
        return externObject.use24hFormat;
      case 'onDateTimeChanged':
        return externObject.onDateTimeChanged;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoTimerPickerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTimerPicker':
        return ({key, mode = CupertinoTimerPickerMode.hms, initialTimerDuration = Duration.zero, minuteInterval = 1, secondInterval = 1, alignment = Alignment.center, backgroundColor, onTimerDurationChanged}) => CupertinoTimerPickerObjectBinding(CupertinoTimerPicker(key : key, mode : mode, initialTimerDuration : initialTimerDuration, minuteInterval : minuteInterval, secondInterval : secondInterval, alignment : alignment, backgroundColor : backgroundColor, onTimerDurationChanged : onTimerDurationChanged));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTimerPickerObjectBinding extends HT_ExternObject<CupertinoTimerPicker> {
  CupertinoTimerPickerObjectBinding(CupertinoTimerPicker value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTimerPicker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'mode':
        return externObject.mode;
      case 'initialTimerDuration':
        return externObject.initialTimerDuration;
      case 'minuteInterval':
        return externObject.minuteInterval;
      case 'secondInterval':
        return externObject.secondInterval;
      case 'onTimerDurationChanged':
        return externObject.onTimerDurationChanged;
      case 'alignment':
        return externObject.alignment;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

