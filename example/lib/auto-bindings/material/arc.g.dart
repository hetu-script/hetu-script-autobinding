import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';


class MaterialPointArcTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialPointArcTween':
        return ({begin, end}) => MaterialPointArcTweenObjectBinding(MaterialPointArcTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialPointArcTweenObjectBinding extends HT_ExternObject<MaterialPointArcTween> {
  MaterialPointArcTweenObjectBinding(MaterialPointArcTween value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialPointArcTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'center':
        return externObject.center;
      case 'radius':
        return externObject.radius;
      case 'beginAngle':
        return externObject.beginAngle;
      case 'endAngle':
        return externObject.endAngle;
      case 'lerp':
        return externObject.lerp;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'begin':
        externObject.begin = value;
        break;
      case 'end':
        externObject.end = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialRectArcTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialRectArcTween':
        return ({begin, end}) => MaterialRectArcTweenObjectBinding(MaterialRectArcTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialRectArcTweenObjectBinding extends HT_ExternObject<MaterialRectArcTween> {
  MaterialRectArcTweenObjectBinding(MaterialRectArcTween value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialRectArcTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'beginArc':
        return externObject.beginArc;
      case 'endArc':
        return externObject.endArc;
      case 'lerp':
        return externObject.lerp;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'begin':
        externObject.begin = value;
        break;
      case 'end':
        externObject.end = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialRectCenterArcTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialRectCenterArcTween':
        return ({begin, end}) => MaterialRectCenterArcTweenObjectBinding(MaterialRectCenterArcTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialRectCenterArcTweenObjectBinding extends HT_ExternObject<MaterialRectCenterArcTween> {
  MaterialRectCenterArcTweenObjectBinding(MaterialRectCenterArcTween value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialRectCenterArcTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'centerArc':
        return externObject.centerArc;
      case 'lerp':
        return externObject.lerp;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'begin':
        externObject.begin = value;
        break;
      case 'end':
        externObject.end = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

