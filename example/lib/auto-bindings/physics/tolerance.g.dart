import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/physics.dart';


class ToleranceClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Tolerance':
        return ({distance = _epsilonDefault, time = _epsilonDefault, velocity = _epsilonDefault}) => ToleranceObjectBinding(Tolerance(distance : distance, time : time, velocity : velocity));
      case 'Tolerance.defaultTolerance':
        return Tolerance.defaultTolerance;
      default:
        throw HTErr_Undefined(id);
    }
  }
  static const _epsilonDefault = 1e-3;
}

class ToleranceObjectBinding extends HT_ExternObject<Tolerance> {
  ToleranceObjectBinding(Tolerance value) : super(value);

  @override
  final typeid = HT_TypeId('Tolerance');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'distance':
        return externObject.distance;
      case 'time':
        return externObject.time;
      case 'velocity':
        return externObject.velocity;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

