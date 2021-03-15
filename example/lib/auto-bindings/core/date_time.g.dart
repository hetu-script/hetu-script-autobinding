import 'package:hetu_script/hetu_script.dart';
import 'dart:core';


class DateTimeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DateTime':
        return (year, [month = 1, day = 1, hour = 0, minute = 0, second = 0, millisecond = 0, microsecond = 0]) => DateTimeObjectBinding(DateTime(year, month, day, hour, minute, second, millisecond, microsecond));
      case 'DateTime.utc':
        return (year, [month = 1, day = 1, hour = 0, minute = 0, second = 0, millisecond = 0, microsecond = 0]) => DateTimeObjectBinding(DateTime.utc(year, month, day, hour, minute, second, millisecond, microsecond));
      case 'DateTime.now':
        return () => DateTimeObjectBinding(DateTime.now());
      case 'DateTime.fromMillisecondsSinceEpoch':
        return (millisecondsSinceEpoch, {isUtc = false}) => DateTimeObjectBinding(DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch, isUtc : isUtc));
      case 'DateTime.fromMicrosecondsSinceEpoch':
        return (microsecondsSinceEpoch, {isUtc = false}) => DateTimeObjectBinding(DateTime.fromMicrosecondsSinceEpoch(microsecondsSinceEpoch, isUtc : isUtc));
      case 'parse':
        return (formattedString) => DateTime.parse(formattedString);
      case 'tryParse':
        return (formattedString) => DateTime.tryParse(formattedString);
      case 'DateTime.monday':
        return DateTime.monday;
      case 'DateTime.tuesday':
        return DateTime.tuesday;
      case 'DateTime.wednesday':
        return DateTime.wednesday;
      case 'DateTime.thursday':
        return DateTime.thursday;
      case 'DateTime.friday':
        return DateTime.friday;
      case 'DateTime.saturday':
        return DateTime.saturday;
      case 'DateTime.sunday':
        return DateTime.sunday;
      case 'DateTime.daysPerWeek':
        return DateTime.daysPerWeek;
      case 'DateTime.january':
        return DateTime.january;
      case 'DateTime.february':
        return DateTime.february;
      case 'DateTime.march':
        return DateTime.march;
      case 'DateTime.april':
        return DateTime.april;
      case 'DateTime.may':
        return DateTime.may;
      case 'DateTime.june':
        return DateTime.june;
      case 'DateTime.july':
        return DateTime.july;
      case 'DateTime.august':
        return DateTime.august;
      case 'DateTime.september':
        return DateTime.september;
      case 'DateTime.october':
        return DateTime.october;
      case 'DateTime.november':
        return DateTime.november;
      case 'DateTime.december':
        return DateTime.december;
      case 'DateTime.monthsPerYear':
        return DateTime.monthsPerYear;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DateTimeObjectBinding extends HT_ExternObject<DateTime> {
  DateTimeObjectBinding(DateTime value) : super(value);

  @override
  final typeid = HT_TypeId('DateTime');


}

