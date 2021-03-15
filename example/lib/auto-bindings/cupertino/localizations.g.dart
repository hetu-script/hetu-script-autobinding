import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class DatePickerDateTimeOrderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'date_time_dayPeriod':
        return DatePickerDateTimeOrder.date_time_dayPeriod;
      case 'date_dayPeriod_time':
        return DatePickerDateTimeOrder.date_dayPeriod_time;
      case 'time_dayPeriod_date':
        return DatePickerDateTimeOrder.time_dayPeriod_date;
      case 'dayPeriod_time_date':
        return DatePickerDateTimeOrder.dayPeriod_time_date;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class DatePickerDateOrderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dmy':
        return DatePickerDateOrder.dmy;
      case 'mdy':
        return DatePickerDateOrder.mdy;
      case 'ymd':
        return DatePickerDateOrder.ymd;
      case 'ydm':
        return DatePickerDateOrder.ydm;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultCupertinoLocalizationsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultCupertinoLocalizations':
        return () => DefaultCupertinoLocalizationsObjectBinding(DefaultCupertinoLocalizations());
      case 'load':
        return (locale) => DefaultCupertinoLocalizations.load(locale);
      case 'DefaultCupertinoLocalizations.delegate':
        return DefaultCupertinoLocalizations.delegate;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultCupertinoLocalizationsObjectBinding extends HT_ExternObject<DefaultCupertinoLocalizations> {
  DefaultCupertinoLocalizationsObjectBinding(DefaultCupertinoLocalizations value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultCupertinoLocalizations');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'datePickerDateOrder':
        return externObject.datePickerDateOrder;
      case 'datePickerDateTimeOrder':
        return externObject.datePickerDateTimeOrder;
      case 'anteMeridiemAbbreviation':
        return externObject.anteMeridiemAbbreviation;
      case 'postMeridiemAbbreviation':
        return externObject.postMeridiemAbbreviation;
      case 'todayLabel':
        return externObject.todayLabel;
      case 'alertDialogLabel':
        return externObject.alertDialogLabel;
      case 'timerPickerHourLabels':
        return externObject.timerPickerHourLabels;
      case 'timerPickerMinuteLabels':
        return externObject.timerPickerMinuteLabels;
      case 'timerPickerSecondLabels':
        return externObject.timerPickerSecondLabels;
      case 'cutButtonLabel':
        return externObject.cutButtonLabel;
      case 'copyButtonLabel':
        return externObject.copyButtonLabel;
      case 'pasteButtonLabel':
        return externObject.pasteButtonLabel;
      case 'selectAllButtonLabel':
        return externObject.selectAllButtonLabel;
      case 'searchTextFieldPlaceholderLabel':
        return externObject.searchTextFieldPlaceholderLabel;
      case 'modalBarrierDismissLabel':
        return externObject.modalBarrierDismissLabel;
      case 'datePickerYear':
        return externObject.datePickerYear;
      case 'datePickerMonth':
        return externObject.datePickerMonth;
      case 'datePickerDayOfMonth':
        return externObject.datePickerDayOfMonth;
      case 'datePickerHour':
        return externObject.datePickerHour;
      case 'datePickerHourSemanticsLabel':
        return externObject.datePickerHourSemanticsLabel;
      case 'datePickerMinute':
        return externObject.datePickerMinute;
      case 'datePickerMinuteSemanticsLabel':
        return externObject.datePickerMinuteSemanticsLabel;
      case 'datePickerMediumDate':
        return externObject.datePickerMediumDate;
      case 'tabSemanticsLabel':
        return externObject.tabSemanticsLabel;
      case 'timerPickerHour':
        return externObject.timerPickerHour;
      case 'timerPickerMinute':
        return externObject.timerPickerMinute;
      case 'timerPickerSecond':
        return externObject.timerPickerSecond;
      case 'timerPickerHourLabel':
        return externObject.timerPickerHourLabel;
      case 'timerPickerMinuteLabel':
        return externObject.timerPickerMinuteLabel;
      case 'timerPickerSecondLabel':
        return externObject.timerPickerSecondLabel;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

