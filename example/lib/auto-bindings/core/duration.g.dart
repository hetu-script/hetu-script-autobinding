import 'package:hetu_script/hetu_script.dart';
import 'dart:core';


class DurationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Duration':
        return ({days = 0, hours = 0, minutes = 0, seconds = 0, milliseconds = 0, microseconds = 0}) => DurationObjectBinding(Duration(days : days, hours : hours, minutes : minutes, seconds : seconds, milliseconds : milliseconds, microseconds : microseconds));
      case 'Duration.microsecondsPerMillisecond':
        return Duration.microsecondsPerMillisecond;
      case 'Duration.millisecondsPerSecond':
        return Duration.millisecondsPerSecond;
      case 'Duration.secondsPerMinute':
        return Duration.secondsPerMinute;
      case 'Duration.minutesPerHour':
        return Duration.minutesPerHour;
      case 'Duration.hoursPerDay':
        return Duration.hoursPerDay;
      case 'Duration.microsecondsPerSecond':
        return Duration.microsecondsPerSecond;
      case 'Duration.microsecondsPerMinute':
        return Duration.microsecondsPerMinute;
      case 'Duration.microsecondsPerHour':
        return Duration.microsecondsPerHour;
      case 'Duration.microsecondsPerDay':
        return Duration.microsecondsPerDay;
      case 'Duration.millisecondsPerMinute':
        return Duration.millisecondsPerMinute;
      case 'Duration.millisecondsPerHour':
        return Duration.millisecondsPerHour;
      case 'Duration.millisecondsPerDay':
        return Duration.millisecondsPerDay;
      case 'Duration.secondsPerHour':
        return Duration.secondsPerHour;
      case 'Duration.secondsPerDay':
        return Duration.secondsPerDay;
      case 'Duration.minutesPerDay':
        return Duration.minutesPerDay;
      case 'Duration.zero':
        return Duration.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DurationObjectBinding extends HT_ExternObject<Duration> {
  DurationObjectBinding(Duration value) : super(value);

  @override
  final typeid = HT_TypeId('Duration');


}

