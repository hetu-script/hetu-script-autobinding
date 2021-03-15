import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';


class DisposableBuildContextClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DisposableBuildContext':
        return (_state) => DisposableBuildContextObjectBinding(DisposableBuildContext<State>(_state));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DisposableBuildContextObjectBinding extends HT_ExternObject<DisposableBuildContext> {
  DisposableBuildContextObjectBinding(DisposableBuildContext value) : super(value);

  @override
  final typeid = HT_TypeId('DisposableBuildContext');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'context':
        return externObject.context;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

