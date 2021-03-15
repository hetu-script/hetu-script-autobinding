import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/animation.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';


class SawToothClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SawTooth':
        return (count) => SawToothObjectBinding(SawTooth(count));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SawToothObjectBinding extends HT_ExternObject<SawTooth> {
  SawToothObjectBinding(SawTooth value) : super(value);

  @override
  final typeid = HT_TypeId('SawTooth');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'count':
        return externObject.count;
      case 'transformInternal':
        return externObject.transformInternal;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class IntervalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Interval':
        return (begin, end, {curve = Curves.linear}) => IntervalObjectBinding(Interval(begin, end, curve : curve));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IntervalObjectBinding extends HT_ExternObject<Interval> {
  IntervalObjectBinding(Interval value) : super(value);

  @override
  final typeid = HT_TypeId('Interval');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'begin':
        return externObject.begin;
      case 'end':
        return externObject.end;
      case 'curve':
        return externObject.curve;
      case 'transformInternal':
        return externObject.transformInternal;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ThresholdClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Threshold':
        return (threshold) => ThresholdObjectBinding(Threshold(threshold));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ThresholdObjectBinding extends HT_ExternObject<Threshold> {
  ThresholdObjectBinding(Threshold value) : super(value);

  @override
  final typeid = HT_TypeId('Threshold');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'threshold':
        return externObject.threshold;
      case 'transformInternal':
        return externObject.transformInternal;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CubicClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Cubic':
        return (a, b, c, d) => CubicObjectBinding(Cubic(a, b, c, d));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CubicObjectBinding extends HT_ExternObject<Cubic> {
  CubicObjectBinding(Cubic value) : super(value);

  @override
  final typeid = HT_TypeId('Cubic');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'a':
        return externObject.a;
      case 'b':
        return externObject.b;
      case 'c':
        return externObject.c;
      case 'd':
        return externObject.d;
      case 'transformInternal':
        return externObject.transformInternal;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class Curve2DSampleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Curve2DSample':
        return (t, value) => Curve2DSampleObjectBinding(Curve2DSample(t, value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Curve2DSampleObjectBinding extends HT_ExternObject<Curve2DSample> {
  Curve2DSampleObjectBinding(Curve2DSample value) : super(value);

  @override
  final typeid = HT_TypeId('Curve2DSample');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 't':
        return externObject.t;
      case 'value':
        return externObject.value;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CatmullRomSplineClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CatmullRomSpline':
        return (controlPoints, {tension = 0.0, startHandle, endHandle}) => CatmullRomSplineObjectBinding(CatmullRomSpline(controlPoints, tension : tension, startHandle : startHandle, endHandle : endHandle));
      case 'CatmullRomSpline.precompute':
        return (controlPoints, {tension = 0.0, startHandle, endHandle}) => CatmullRomSplineObjectBinding(CatmullRomSpline.precompute(controlPoints, tension : tension, startHandle : startHandle, endHandle : endHandle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CatmullRomSplineObjectBinding extends HT_ExternObject<CatmullRomSpline> {
  CatmullRomSplineObjectBinding(CatmullRomSpline value) : super(value);

  @override
  final typeid = HT_TypeId('CatmullRomSpline');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'samplingSeed':
        return externObject.samplingSeed;
      case 'transformInternal':
        return externObject.transformInternal;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CatmullRomCurveClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CatmullRomCurve':
        return (controlPoints, {tension = 0.0}) => CatmullRomCurveObjectBinding(CatmullRomCurve(controlPoints, tension : tension));
      case 'CatmullRomCurve.precompute':
        return (controlPoints, {tension = 0.0}) => CatmullRomCurveObjectBinding(CatmullRomCurve.precompute(controlPoints, tension : tension));
      case 'validateControlPoints':
        return (controlPoints, {tension = 0.0, reasons}) => CatmullRomCurve.validateControlPoints(controlPoints, tension : tension, reasons : reasons);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CatmullRomCurveObjectBinding extends HT_ExternObject<CatmullRomCurve> {
  CatmullRomCurveObjectBinding(CatmullRomCurve value) : super(value);

  @override
  final typeid = HT_TypeId('CatmullRomCurve');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controlPoints':
        return externObject.controlPoints;
      case 'tension':
        return externObject.tension;
      case 'transformInternal':
        return externObject.transformInternal;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FlippedCurveClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlippedCurve':
        return (curve) => FlippedCurveObjectBinding(FlippedCurve(curve));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlippedCurveObjectBinding extends HT_ExternObject<FlippedCurve> {
  FlippedCurveObjectBinding(FlippedCurve value) : super(value);

  @override
  final typeid = HT_TypeId('FlippedCurve');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'curve':
        return externObject.curve;
      case 'transformInternal':
        return externObject.transformInternal;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ElasticInCurveClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ElasticInCurve':
        return ([period = 0.4]) => ElasticInCurveObjectBinding(ElasticInCurve(period));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ElasticInCurveObjectBinding extends HT_ExternObject<ElasticInCurve> {
  ElasticInCurveObjectBinding(ElasticInCurve value) : super(value);

  @override
  final typeid = HT_TypeId('ElasticInCurve');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'period':
        return externObject.period;
      case 'transformInternal':
        return externObject.transformInternal;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ElasticOutCurveClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ElasticOutCurve':
        return ([period = 0.4]) => ElasticOutCurveObjectBinding(ElasticOutCurve(period));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ElasticOutCurveObjectBinding extends HT_ExternObject<ElasticOutCurve> {
  ElasticOutCurveObjectBinding(ElasticOutCurve value) : super(value);

  @override
  final typeid = HT_TypeId('ElasticOutCurve');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'period':
        return externObject.period;
      case 'transformInternal':
        return externObject.transformInternal;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ElasticInOutCurveClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ElasticInOutCurve':
        return ([period = 0.4]) => ElasticInOutCurveObjectBinding(ElasticInOutCurve(period));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ElasticInOutCurveObjectBinding extends HT_ExternObject<ElasticInOutCurve> {
  ElasticInOutCurveObjectBinding(ElasticInOutCurve value) : super(value);

  @override
  final typeid = HT_TypeId('ElasticInOutCurve');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'period':
        return externObject.period;
      case 'transformInternal':
        return externObject.transformInternal;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CurvesClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Curves.linear':
        return Curves.linear;
      case 'Curves.decelerate':
        return Curves.decelerate;
      case 'Curves.fastLinearToSlowEaseIn':
        return Curves.fastLinearToSlowEaseIn;
      case 'Curves.ease':
        return Curves.ease;
      case 'Curves.easeIn':
        return Curves.easeIn;
      case 'Curves.easeInToLinear':
        return Curves.easeInToLinear;
      case 'Curves.easeInSine':
        return Curves.easeInSine;
      case 'Curves.easeInQuad':
        return Curves.easeInQuad;
      case 'Curves.easeInCubic':
        return Curves.easeInCubic;
      case 'Curves.easeInQuart':
        return Curves.easeInQuart;
      case 'Curves.easeInQuint':
        return Curves.easeInQuint;
      case 'Curves.easeInExpo':
        return Curves.easeInExpo;
      case 'Curves.easeInCirc':
        return Curves.easeInCirc;
      case 'Curves.easeInBack':
        return Curves.easeInBack;
      case 'Curves.easeOut':
        return Curves.easeOut;
      case 'Curves.linearToEaseOut':
        return Curves.linearToEaseOut;
      case 'Curves.easeOutSine':
        return Curves.easeOutSine;
      case 'Curves.easeOutQuad':
        return Curves.easeOutQuad;
      case 'Curves.easeOutCubic':
        return Curves.easeOutCubic;
      case 'Curves.easeOutQuart':
        return Curves.easeOutQuart;
      case 'Curves.easeOutQuint':
        return Curves.easeOutQuint;
      case 'Curves.easeOutExpo':
        return Curves.easeOutExpo;
      case 'Curves.easeOutCirc':
        return Curves.easeOutCirc;
      case 'Curves.easeOutBack':
        return Curves.easeOutBack;
      case 'Curves.easeInOut':
        return Curves.easeInOut;
      case 'Curves.easeInOutSine':
        return Curves.easeInOutSine;
      case 'Curves.easeInOutQuad':
        return Curves.easeInOutQuad;
      case 'Curves.easeInOutCubic':
        return Curves.easeInOutCubic;
      case 'Curves.easeInOutQuart':
        return Curves.easeInOutQuart;
      case 'Curves.easeInOutQuint':
        return Curves.easeInOutQuint;
      case 'Curves.easeInOutExpo':
        return Curves.easeInOutExpo;
      case 'Curves.easeInOutCirc':
        return Curves.easeInOutCirc;
      case 'Curves.easeInOutBack':
        return Curves.easeInOutBack;
      case 'Curves.fastOutSlowIn':
        return Curves.fastOutSlowIn;
      case 'Curves.slowMiddle':
        return Curves.slowMiddle;
      case 'Curves.bounceIn':
        return Curves.bounceIn;
      case 'Curves.bounceOut':
        return Curves.bounceOut;
      case 'Curves.bounceInOut':
        return Curves.bounceInOut;
      case 'Curves.elasticIn':
        return Curves.elasticIn;
      case 'Curves.elasticOut':
        return Curves.elasticOut;
      case 'Curves.elasticInOut':
        return Curves.elasticInOut;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


