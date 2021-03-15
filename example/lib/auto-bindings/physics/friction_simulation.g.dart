import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/physics.dart';
import 'dart:math'as math;


class FrictionSimulationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FrictionSimulation':
        return (drag, position, velocity, {tolerance = Tolerance.defaultTolerance}) => FrictionSimulationObjectBinding(FrictionSimulation(drag, position, velocity, tolerance : tolerance));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FrictionSimulationObjectBinding extends HT_ExternObject<FrictionSimulation> {
  FrictionSimulationObjectBinding(FrictionSimulation value) : super(value);

  @override
  final typeid = HT_TypeId('FrictionSimulation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'finalX':
        return externObject.finalX;
      case 'x':
        return externObject.x;
      case 'dx':
        return externObject.dx;
      case 'timeAtX':
        return externObject.timeAtX;
      case 'isDone':
        return externObject.isDone;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BoundedFrictionSimulationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BoundedFrictionSimulation':
        return (drag, position, velocity, _minX, _maxX) => BoundedFrictionSimulationObjectBinding(BoundedFrictionSimulation(drag, position, velocity, _minX, _maxX));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BoundedFrictionSimulationObjectBinding extends HT_ExternObject<BoundedFrictionSimulation> {
  BoundedFrictionSimulationObjectBinding(BoundedFrictionSimulation value) : super(value);

  @override
  final typeid = HT_TypeId('BoundedFrictionSimulation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'x':
        return externObject.x;
      case 'isDone':
        return externObject.isDone;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

