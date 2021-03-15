import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/physics.dart';


class GravitySimulationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GravitySimulation':
        return (acceleration, distance, endDistance, velocity) => GravitySimulationObjectBinding(GravitySimulation(acceleration, distance, endDistance, velocity));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GravitySimulationObjectBinding extends HT_ExternObject<GravitySimulation> {
  GravitySimulationObjectBinding(GravitySimulation value) : super(value);

  @override
  final typeid = HT_TypeId('GravitySimulation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'x':
        return externObject.x;
      case 'dx':
        return externObject.dx;
      case 'isDone':
        return externObject.isDone;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

