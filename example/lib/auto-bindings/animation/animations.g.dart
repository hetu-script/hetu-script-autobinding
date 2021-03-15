import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/animation.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';


class AlwaysStoppedAnimationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AlwaysStoppedAnimation':
        return (value) => AlwaysStoppedAnimationObjectBinding(AlwaysStoppedAnimation(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AlwaysStoppedAnimationObjectBinding extends HT_ExternObject<AlwaysStoppedAnimation> {
  AlwaysStoppedAnimationObjectBinding(AlwaysStoppedAnimation value) : super(value);

  @override
  final typeid = HT_TypeId('AlwaysStoppedAnimation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'status':
        return externObject.status;
      case 'addListener':
        return externObject.addListener;
      case 'removeListener':
        return externObject.removeListener;
      case 'addStatusListener':
        return externObject.addStatusListener;
      case 'removeStatusListener':
        return externObject.removeStatusListener;
      case 'toStringDetails':
        return externObject.toStringDetails;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ProxyAnimationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ProxyAnimation':
        return ([animation]) => ProxyAnimationObjectBinding(ProxyAnimation(animation));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ProxyAnimationObjectBinding extends HT_ExternObject<ProxyAnimation> {
  ProxyAnimationObjectBinding(ProxyAnimation value) : super(value);

  @override
  final typeid = HT_TypeId('ProxyAnimation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'parent':
        return externObject.parent;
      case 'status':
        return externObject.status;
      case 'value':
        return externObject.value;
      case 'didStartListening':
        return externObject.didStartListening;
      case 'didStopListening':
        return externObject.didStopListening;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'parent':
        externObject.parent = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReverseAnimationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ReverseAnimation':
        return (parent) => ReverseAnimationObjectBinding(ReverseAnimation(parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReverseAnimationObjectBinding extends HT_ExternObject<ReverseAnimation> {
  ReverseAnimationObjectBinding(ReverseAnimation value) : super(value);

  @override
  final typeid = HT_TypeId('ReverseAnimation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'parent':
        return externObject.parent;
      case 'status':
        return externObject.status;
      case 'value':
        return externObject.value;
      case 'addListener':
        return externObject.addListener;
      case 'removeListener':
        return externObject.removeListener;
      case 'didStartListening':
        return externObject.didStartListening;
      case 'didStopListening':
        return externObject.didStopListening;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CurvedAnimationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CurvedAnimation':
        return ({parent, curve, reverseCurve}) => CurvedAnimationObjectBinding(CurvedAnimation(parent : parent, curve : curve, reverseCurve : reverseCurve));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CurvedAnimationObjectBinding extends HT_ExternObject<CurvedAnimation> {
  CurvedAnimationObjectBinding(CurvedAnimation value) : super(value);

  @override
  final typeid = HT_TypeId('CurvedAnimation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'parent':
        return externObject.parent;
      case 'curve':
        return externObject.curve;
      case 'reverseCurve':
        return externObject.reverseCurve;
      case 'value':
        return externObject.value;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'curve':
        externObject.curve = value;
        break;
      case 'reverseCurve':
        externObject.reverseCurve = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TrainHoppingAnimationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TrainHoppingAnimation':
        return (_currentTrain, _nextTrain, {onSwitchedTrain}) => TrainHoppingAnimationObjectBinding(TrainHoppingAnimation(_currentTrain, _nextTrain, onSwitchedTrain : onSwitchedTrain));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TrainHoppingAnimationObjectBinding extends HT_ExternObject<TrainHoppingAnimation> {
  TrainHoppingAnimationObjectBinding(TrainHoppingAnimation value) : super(value);

  @override
  final typeid = HT_TypeId('TrainHoppingAnimation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onSwitchedTrain':
        return externObject.onSwitchedTrain;
      case 'currentTrain':
        return externObject.currentTrain;
      case 'status':
        return externObject.status;
      case 'value':
        return externObject.value;
      case 'dispose':
        return externObject.dispose;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'onSwitchedTrain':
        externObject.onSwitchedTrain = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimationMeanClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimationMean':
        return ({left, right}) => AnimationMeanObjectBinding(AnimationMean(left : left, right : right));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimationMeanObjectBinding extends HT_ExternObject<AnimationMean> {
  AnimationMeanObjectBinding(AnimationMean value) : super(value);

  @override
  final typeid = HT_TypeId('AnimationMean');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimationMaxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimationMax':
        return (first, next) => AnimationMaxObjectBinding(AnimationMax<num>(first, next));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimationMaxObjectBinding extends HT_ExternObject<AnimationMax> {
  AnimationMaxObjectBinding(AnimationMax value) : super(value);

  @override
  final typeid = HT_TypeId('AnimationMax');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimationMinClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimationMin':
        return (first, next) => AnimationMinObjectBinding(AnimationMin<num>(first, next));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimationMinObjectBinding extends HT_ExternObject<AnimationMin> {
  AnimationMinObjectBinding(AnimationMin value) : super(value);

  @override
  final typeid = HT_TypeId('AnimationMin');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

