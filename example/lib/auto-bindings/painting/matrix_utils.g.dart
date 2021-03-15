import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';


class MatrixUtilsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getAsTranslation':
        return (transform) => MatrixUtils.getAsTranslation(transform);
      case 'getAsScale':
        return (transform) => MatrixUtils.getAsScale(transform);
      case 'matrixEquals':
        return (a, b) => MatrixUtils.matrixEquals(a, b);
      case 'isIdentity':
        return (a) => MatrixUtils.isIdentity(a);
      case 'transformPoint':
        return (transform, point) => MatrixUtils.transformPoint(transform, point);
      case 'transformRect':
        return (transform, rect) => MatrixUtils.transformRect(transform, rect);
      case 'inverseTransformRect':
        return (transform, rect) => MatrixUtils.inverseTransformRect(transform, rect);
      case 'createCylindricalProjectionTransform':
        return ({radius, angle, perspective = 0.001, orientation = Axis.vertical}) => MatrixUtils.createCylindricalProjectionTransform(radius : radius, angle : angle, perspective : perspective, orientation : orientation);
      case 'forceToPoint':
        return (offset) => MatrixUtils.forceToPoint(offset);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class TransformPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TransformProperty':
        return (name, value, {showName = true, defaultValue = kNoDefaultValue, level = DiagnosticLevel.info}) => TransformPropertyObjectBinding(TransformProperty(name, value, showName : showName, defaultValue : defaultValue, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TransformPropertyObjectBinding extends HT_ExternObject<TransformProperty> {
  TransformPropertyObjectBinding(TransformProperty value) : super(value);

  @override
  final typeid = HT_TypeId('TransformProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'valueToString':
        return externObject.valueToString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

