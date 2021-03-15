import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';


class BouncingScrollSimulationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BouncingScrollSimulation':
        return ({position, velocity, leadingExtent, trailingExtent, spring, tolerance = Tolerance.defaultTolerance}) => BouncingScrollSimulationObjectBinding(BouncingScrollSimulation(position : position, velocity : velocity, leadingExtent : leadingExtent, trailingExtent : trailingExtent, spring : spring, tolerance : tolerance));
      case 'BouncingScrollSimulation.maxSpringTransferVelocity':
        return BouncingScrollSimulation.maxSpringTransferVelocity;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BouncingScrollSimulationObjectBinding extends HT_ExternObject<BouncingScrollSimulation> {
  BouncingScrollSimulationObjectBinding(BouncingScrollSimulation value) : super(value);

  @override
  final typeid = HT_TypeId('BouncingScrollSimulation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leadingExtent':
        return externObject.leadingExtent;
      case 'trailingExtent':
        return externObject.trailingExtent;
      case 'spring':
        return externObject.spring;
      case 'x':
        return externObject.x;
      case 'dx':
        return externObject.dx;
      case 'isDone':
        return externObject.isDone;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ClampingScrollSimulationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClampingScrollSimulation':
        return ({position, velocity, friction = 0.015, tolerance = Tolerance.defaultTolerance}) => ClampingScrollSimulationObjectBinding(ClampingScrollSimulation(position : position, velocity : velocity, friction : friction, tolerance : tolerance));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClampingScrollSimulationObjectBinding extends HT_ExternObject<ClampingScrollSimulation> {
  ClampingScrollSimulationObjectBinding(ClampingScrollSimulation value) : super(value);

  @override
  final typeid = HT_TypeId('ClampingScrollSimulation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'position':
        return externObject.position;
      case 'velocity':
        return externObject.velocity;
      case 'friction':
        return externObject.friction;
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

