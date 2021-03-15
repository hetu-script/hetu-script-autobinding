import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:collection';
import 'dart:math'as math;
import 'dart:typed_data';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';


class GradientRotationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GradientRotation':
        return (radians) => GradientRotationObjectBinding(GradientRotation(radians));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GradientRotationObjectBinding extends HT_ExternObject<GradientRotation> {
  GradientRotationObjectBinding(GradientRotation value) : super(value);

  @override
  final typeid = HT_TypeId('GradientRotation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'radians':
        return externObject.radians;
      case 'transform':
        return externObject.transform;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LinearGradientClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LinearGradient':
        return ({begin = Alignment.centerLeft, end = Alignment.centerRight, colors, stops, tileMode = TileMode.clamp, transform}) => LinearGradientObjectBinding(LinearGradient(begin : begin, end : end, colors : colors, stops : stops, tileMode : tileMode, transform : transform));
      case 'lerp':
        return (a, b, t) => LinearGradient.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LinearGradientObjectBinding extends HT_ExternObject<LinearGradient> {
  LinearGradientObjectBinding(LinearGradient value) : super(value);

  @override
  final typeid = HT_TypeId('LinearGradient');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'begin':
        return externObject.begin;
      case 'end':
        return externObject.end;
      case 'tileMode':
        return externObject.tileMode;
      case 'hashCode':
        return externObject.hashCode;
      case 'createShader':
        return externObject.createShader;
      case 'scale':
        return externObject.scale;
      case 'lerpFrom':
        return externObject.lerpFrom;
      case 'lerpTo':
        return externObject.lerpTo;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RadialGradientClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RadialGradient':
        return ({center = Alignment.center, radius = 0.5, colors, stops, tileMode = TileMode.clamp, focal, focalRadius = 0.0, transform}) => RadialGradientObjectBinding(RadialGradient(center : center, radius : radius, colors : colors, stops : stops, tileMode : tileMode, focal : focal, focalRadius : focalRadius, transform : transform));
      case 'lerp':
        return (a, b, t) => RadialGradient.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RadialGradientObjectBinding extends HT_ExternObject<RadialGradient> {
  RadialGradientObjectBinding(RadialGradient value) : super(value);

  @override
  final typeid = HT_TypeId('RadialGradient');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'center':
        return externObject.center;
      case 'radius':
        return externObject.radius;
      case 'tileMode':
        return externObject.tileMode;
      case 'focal':
        return externObject.focal;
      case 'focalRadius':
        return externObject.focalRadius;
      case 'hashCode':
        return externObject.hashCode;
      case 'createShader':
        return externObject.createShader;
      case 'scale':
        return externObject.scale;
      case 'lerpFrom':
        return externObject.lerpFrom;
      case 'lerpTo':
        return externObject.lerpTo;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SweepGradientClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SweepGradient':
        return ({center = Alignment.center, startAngle = 0.0, endAngle = math.pi * 2, colors, stops, tileMode = TileMode.clamp, transform}) => SweepGradientObjectBinding(SweepGradient(center : center, startAngle : startAngle, endAngle : endAngle, colors : colors, stops : stops, tileMode : tileMode, transform : transform));
      case 'lerp':
        return (a, b, t) => SweepGradient.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SweepGradientObjectBinding extends HT_ExternObject<SweepGradient> {
  SweepGradientObjectBinding(SweepGradient value) : super(value);

  @override
  final typeid = HT_TypeId('SweepGradient');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'center':
        return externObject.center;
      case 'startAngle':
        return externObject.startAngle;
      case 'endAngle':
        return externObject.endAngle;
      case 'tileMode':
        return externObject.tileMode;
      case 'hashCode':
        return externObject.hashCode;
      case 'createShader':
        return externObject.createShader;
      case 'scale':
        return externObject.scale;
      case 'lerpFrom':
        return externObject.lerpFrom;
      case 'lerpTo':
        return externObject.lerpTo;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

