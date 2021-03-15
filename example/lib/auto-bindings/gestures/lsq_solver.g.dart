import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:math'as math;
import 'dart:typed_data';
import 'package:flutter/foundation.dart';


class PolynomialFitClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PolynomialFit':
        return (degree) => PolynomialFitObjectBinding(PolynomialFit(degree));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PolynomialFitObjectBinding extends HT_ExternObject<PolynomialFit> {
  PolynomialFitObjectBinding(PolynomialFit value) : super(value);

  @override
  final typeid = HT_TypeId('PolynomialFit');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'coefficients':
        return externObject.coefficients;
      case 'confidence':
        return externObject.confidence;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'confidence':
        externObject.confidence = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LeastSquaresSolverClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LeastSquaresSolver':
        return (x, y, w) => LeastSquaresSolverObjectBinding(LeastSquaresSolver(x, y, w));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LeastSquaresSolverObjectBinding extends HT_ExternObject<LeastSquaresSolver> {
  LeastSquaresSolverObjectBinding(LeastSquaresSolver value) : super(value);

  @override
  final typeid = HT_TypeId('LeastSquaresSolver');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'x':
        return externObject.x;
      case 'y':
        return externObject.y;
      case 'w':
        return externObject.w;
      case 'solve':
        return externObject.solve;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

