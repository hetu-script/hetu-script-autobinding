import 'package:hetu_script/hetu_script.dart';
import 'dart:core';


class StopwatchClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Stopwatch':
        return () => StopwatchObjectBinding(Stopwatch());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StopwatchObjectBinding extends HT_ExternObject<Stopwatch> {
  StopwatchObjectBinding(Stopwatch value) : super(value);

  @override
  final typeid = HT_TypeId('Stopwatch');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'frequency':
        return externObject.frequency;
      case 'elapsedTicks':
        return externObject.elapsedTicks;
      case 'elapsed':
        return externObject.elapsed;
      case 'elapsedMicroseconds':
        return externObject.elapsedMicroseconds;
      case 'elapsedMilliseconds':
        return externObject.elapsedMilliseconds;
      case 'isRunning':
        return externObject.isRunning;
      case 'start':
        return externObject.start;
      case 'stop':
        return externObject.stop;
      case 'reset':
        return externObject.reset;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

