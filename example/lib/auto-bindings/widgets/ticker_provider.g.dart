import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';


class TickerModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TickerMode':
        return ({key, enabled, child}) => TickerModeObjectBinding(TickerMode(key : key, enabled : enabled, child : child));
      case 'of':
        return (context) => TickerMode.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TickerModeObjectBinding extends HT_ExternObject<TickerMode> {
  TickerModeObjectBinding(TickerMode value) : super(value);

  @override
  final typeid = HT_TypeId('TickerMode');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'enabled':
        return externObject.enabled;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

