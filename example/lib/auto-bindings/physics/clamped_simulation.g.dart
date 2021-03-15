import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/physics.dart';


class ClampedSimulationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClampedSimulation':
        return (simulation, {xMin = double.negativeInfinity, xMax = double.infinity, dxMin = double.negativeInfinity, dxMax = double.infinity}) => ClampedSimulationObjectBinding(ClampedSimulation(simulation, xMin : xMin, xMax : xMax, dxMin : dxMin, dxMax : dxMax));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClampedSimulationObjectBinding extends HT_ExternObject<ClampedSimulation> {
  ClampedSimulationObjectBinding(ClampedSimulation value) : super(value);

  @override
  final typeid = HT_TypeId('ClampedSimulation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'simulation':
        return externObject.simulation;
      case 'xMin':
        return externObject.xMin;
      case 'xMax':
        return externObject.xMax;
      case 'dxMin':
        return externObject.dxMin;
      case 'dxMax':
        return externObject.dxMax;
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

