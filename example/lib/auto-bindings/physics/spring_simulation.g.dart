import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/physics.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';

class SpringTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'criticallyDamped':
        return SpringType.criticallyDamped;
      case 'underDamped':
        return SpringType.underDamped;
      case 'overDamped':
        return SpringType.overDamped;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SpringDescriptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SpringDescription':
        return ({mass, stiffness, damping}) => SpringDescriptionObjectBinding(SpringDescription(mass : mass, stiffness : stiffness, damping : damping));
      case 'SpringDescription.withDampingRatio':
        return ({mass, stiffness, ratio = 1.0}) => SpringDescriptionObjectBinding(SpringDescription.withDampingRatio(mass : mass, stiffness : stiffness, ratio : ratio));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SpringDescriptionObjectBinding extends HT_ExternObject<SpringDescription> {
  SpringDescriptionObjectBinding(SpringDescription value) : super(value);

  @override
  final typeid = HT_TypeId('SpringDescription');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'mass':
        return externObject.mass;
      case 'stiffness':
        return externObject.stiffness;
      case 'damping':
        return externObject.damping;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SpringSimulationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SpringSimulation':
        return (spring, start, end, velocity, {tolerance = Tolerance.defaultTolerance}) => SpringSimulationObjectBinding(SpringSimulation(spring, start, end, velocity, tolerance : tolerance));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SpringSimulationObjectBinding extends HT_ExternObject<SpringSimulation> {
  SpringSimulationObjectBinding(SpringSimulation value) : super(value);

  @override
  final typeid = HT_TypeId('SpringSimulation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'type':
        return externObject.type;
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

class ScrollSpringSimulationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollSpringSimulation':
        return (spring, start, end, velocity, {tolerance = Tolerance.defaultTolerance}) => ScrollSpringSimulationObjectBinding(ScrollSpringSimulation(spring, start, end, velocity, tolerance : tolerance));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollSpringSimulationObjectBinding extends HT_ExternObject<ScrollSpringSimulation> {
  ScrollSpringSimulationObjectBinding(ScrollSpringSimulation value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollSpringSimulation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'x':
        return externObject.x;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

