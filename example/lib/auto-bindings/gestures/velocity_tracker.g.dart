import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';


class VelocityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Velocity':
        return ({pixelsPerSecond}) => VelocityObjectBinding(Velocity(pixelsPerSecond : pixelsPerSecond));
      case 'Velocity.zero':
        return Velocity.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class VelocityObjectBinding extends HT_ExternObject<Velocity> {
  VelocityObjectBinding(Velocity value) : super(value);

  @override
  final typeid = HT_TypeId('Velocity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'pixelsPerSecond':
        return externObject.pixelsPerSecond;
      case 'hashCode':
        return externObject.hashCode;
      case 'clampMagnitude':
        return externObject.clampMagnitude;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class VelocityEstimateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'VelocityEstimate':
        return ({pixelsPerSecond, confidence, duration, offset}) => VelocityEstimateObjectBinding(VelocityEstimate(pixelsPerSecond : pixelsPerSecond, confidence : confidence, duration : duration, offset : offset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class VelocityEstimateObjectBinding extends HT_ExternObject<VelocityEstimate> {
  VelocityEstimateObjectBinding(VelocityEstimate value) : super(value);

  @override
  final typeid = HT_TypeId('VelocityEstimate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'pixelsPerSecond':
        return externObject.pixelsPerSecond;
      case 'confidence':
        return externObject.confidence;
      case 'duration':
        return externObject.duration;
      case 'offset':
        return externObject.offset;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class VelocityTrackerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'VelocityTracker':
        return ([kind = PointerDeviceKind.touch]) => VelocityTrackerObjectBinding(VelocityTracker(kind));
      case 'VelocityTracker.withKind':
        return (kind) => VelocityTrackerObjectBinding(VelocityTracker.withKind(kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class VelocityTrackerObjectBinding extends HT_ExternObject<VelocityTracker> {
  VelocityTrackerObjectBinding(VelocityTracker value) : super(value);

  @override
  final typeid = HT_TypeId('VelocityTracker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'kind':
        return externObject.kind;
      case 'addPosition':
        return externObject.addPosition;
      case 'getVelocityEstimate':
        return externObject.getVelocityEstimate;
      case 'getVelocity':
        return externObject.getVelocity;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class IOSScrollViewFlingVelocityTrackerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IOSScrollViewFlingVelocityTracker':
        return (kind) => IOSScrollViewFlingVelocityTrackerObjectBinding(IOSScrollViewFlingVelocityTracker(kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IOSScrollViewFlingVelocityTrackerObjectBinding extends HT_ExternObject<IOSScrollViewFlingVelocityTracker> {
  IOSScrollViewFlingVelocityTrackerObjectBinding(IOSScrollViewFlingVelocityTracker value) : super(value);

  @override
  final typeid = HT_TypeId('IOSScrollViewFlingVelocityTracker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'addPosition':
        return externObject.addPosition;
      case 'getVelocityEstimate':
        return externObject.getVelocityEstimate;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

