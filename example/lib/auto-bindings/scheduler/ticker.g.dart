import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/scheduler.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';


class TickerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Ticker':
        return (_onTick, {debugLabel}) => TickerObjectBinding(Ticker(_onTick, debugLabel : debugLabel));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TickerObjectBinding extends HT_ExternObject<Ticker> {
  TickerObjectBinding(Ticker value) : super(value);

  @override
  final typeid = HT_TypeId('Ticker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugLabel':
        return externObject.debugLabel;
      case 'muted':
        return externObject.muted;
      case 'isTicking':
        return externObject.isTicking;
      case 'isActive':
        return externObject.isActive;
      case 'scheduled':
        return externObject.scheduled;
      case 'shouldScheduleTick':
        return externObject.shouldScheduleTick;
      case 'start':
        return externObject.start;
      case 'describeForError':
        return externObject.describeForError;
      case 'stop':
        return externObject.stop;
      case 'scheduleTick':
        return externObject.scheduleTick;
      case 'unscheduleTick':
        return externObject.unscheduleTick;
      case 'absorbTicker':
        return externObject.absorbTicker;
      case 'dispose':
        return externObject.dispose;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'muted':
        externObject.muted = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TickerCanceledClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TickerCanceled':
        return ([ticker]) => TickerCanceledObjectBinding(TickerCanceled(ticker));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TickerCanceledObjectBinding extends HT_ExternObject<TickerCanceled> {
  TickerCanceledObjectBinding(TickerCanceled value) : super(value);

  @override
  final typeid = HT_TypeId('TickerCanceled');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ticker':
        return externObject.ticker;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

