import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';


class ScrollPhysicsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollPhysics':
        return ({parent}) => ScrollPhysicsObjectBinding(ScrollPhysics(parent : parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollPhysicsObjectBinding extends HT_ExternObject<ScrollPhysics> {
  ScrollPhysicsObjectBinding(ScrollPhysics value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollPhysics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'parent':
        return externObject.parent;
      case 'spring':
        return externObject.spring;
      case 'tolerance':
        return externObject.tolerance;
      case 'minFlingDistance':
        return externObject.minFlingDistance;
      case 'minFlingVelocity':
        return externObject.minFlingVelocity;
      case 'maxFlingVelocity':
        return externObject.maxFlingVelocity;
      case 'dragStartDistanceMotionThreshold':
        return externObject.dragStartDistanceMotionThreshold;
      case 'allowImplicitScrolling':
        return externObject.allowImplicitScrolling;
      case 'buildParent':
        return externObject.buildParent;
      case 'applyTo':
        return externObject.applyTo;
      case 'applyPhysicsToUserOffset':
        return externObject.applyPhysicsToUserOffset;
      case 'shouldAcceptUserOffset':
        return externObject.shouldAcceptUserOffset;
      case 'recommendDeferredLoading':
        return externObject.recommendDeferredLoading;
      case 'applyBoundaryConditions':
        return externObject.applyBoundaryConditions;
      case 'adjustPositionForNewDimensions':
        return externObject.adjustPositionForNewDimensions;
      case 'createBallisticSimulation':
        return externObject.createBallisticSimulation;
      case 'carriedMomentum':
        return externObject.carriedMomentum;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RangeMaintainingScrollPhysicsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RangeMaintainingScrollPhysics':
        return ({parent}) => RangeMaintainingScrollPhysicsObjectBinding(RangeMaintainingScrollPhysics(parent : parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RangeMaintainingScrollPhysicsObjectBinding extends HT_ExternObject<RangeMaintainingScrollPhysics> {
  RangeMaintainingScrollPhysicsObjectBinding(RangeMaintainingScrollPhysics value) : super(value);

  @override
  final typeid = HT_TypeId('RangeMaintainingScrollPhysics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'applyTo':
        return externObject.applyTo;
      case 'adjustPositionForNewDimensions':
        return externObject.adjustPositionForNewDimensions;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BouncingScrollPhysicsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BouncingScrollPhysics':
        return ({parent}) => BouncingScrollPhysicsObjectBinding(BouncingScrollPhysics(parent : parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BouncingScrollPhysicsObjectBinding extends HT_ExternObject<BouncingScrollPhysics> {
  BouncingScrollPhysicsObjectBinding(BouncingScrollPhysics value) : super(value);

  @override
  final typeid = HT_TypeId('BouncingScrollPhysics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'minFlingVelocity':
        return externObject.minFlingVelocity;
      case 'dragStartDistanceMotionThreshold':
        return externObject.dragStartDistanceMotionThreshold;
      case 'applyTo':
        return externObject.applyTo;
      case 'frictionFactor':
        return externObject.frictionFactor;
      case 'applyPhysicsToUserOffset':
        return externObject.applyPhysicsToUserOffset;
      case 'applyBoundaryConditions':
        return externObject.applyBoundaryConditions;
      case 'createBallisticSimulation':
        return externObject.createBallisticSimulation;
      case 'carriedMomentum':
        return externObject.carriedMomentum;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ClampingScrollPhysicsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClampingScrollPhysics':
        return ({parent}) => ClampingScrollPhysicsObjectBinding(ClampingScrollPhysics(parent : parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClampingScrollPhysicsObjectBinding extends HT_ExternObject<ClampingScrollPhysics> {
  ClampingScrollPhysicsObjectBinding(ClampingScrollPhysics value) : super(value);

  @override
  final typeid = HT_TypeId('ClampingScrollPhysics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'applyTo':
        return externObject.applyTo;
      case 'applyBoundaryConditions':
        return externObject.applyBoundaryConditions;
      case 'createBallisticSimulation':
        return externObject.createBallisticSimulation;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AlwaysScrollableScrollPhysicsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AlwaysScrollableScrollPhysics':
        return ({parent}) => AlwaysScrollableScrollPhysicsObjectBinding(AlwaysScrollableScrollPhysics(parent : parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AlwaysScrollableScrollPhysicsObjectBinding extends HT_ExternObject<AlwaysScrollableScrollPhysics> {
  AlwaysScrollableScrollPhysicsObjectBinding(AlwaysScrollableScrollPhysics value) : super(value);

  @override
  final typeid = HT_TypeId('AlwaysScrollableScrollPhysics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'applyTo':
        return externObject.applyTo;
      case 'shouldAcceptUserOffset':
        return externObject.shouldAcceptUserOffset;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class NeverScrollableScrollPhysicsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NeverScrollableScrollPhysics':
        return ({parent}) => NeverScrollableScrollPhysicsObjectBinding(NeverScrollableScrollPhysics(parent : parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NeverScrollableScrollPhysicsObjectBinding extends HT_ExternObject<NeverScrollableScrollPhysics> {
  NeverScrollableScrollPhysicsObjectBinding(NeverScrollableScrollPhysics value) : super(value);

  @override
  final typeid = HT_TypeId('NeverScrollableScrollPhysics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'allowImplicitScrolling':
        return externObject.allowImplicitScrolling;
      case 'applyTo':
        return externObject.applyTo;
      case 'shouldAcceptUserOffset':
        return externObject.shouldAcceptUserOffset;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

