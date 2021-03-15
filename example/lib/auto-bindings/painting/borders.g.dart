import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';

class BorderStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'none':
        return BorderStyle.none;
      case 'solid':
        return BorderStyle.solid;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BorderSideClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BorderSide':
        return ({color = const Color(0xFF000000), width = 1.0, style = BorderStyle.solid}) => BorderSideObjectBinding(BorderSide(color : color, width : width, style : style));
      case 'merge':
        return (a, b) => BorderSide.merge(a, b);
      case 'canMerge':
        return (a, b) => BorderSide.canMerge(a, b);
      case 'lerp':
        return (a, b, t) => BorderSide.lerp(a, b, t);
      case 'BorderSide.none':
        return BorderSide.none;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BorderSideObjectBinding extends HT_ExternObject<BorderSide> {
  BorderSideObjectBinding(BorderSide value) : super(value);

  @override
  final typeid = HT_TypeId('BorderSide');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'width':
        return externObject.width;
      case 'style':
        return externObject.style;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'scale':
        return externObject.scale;
      case 'toPaint':
        return externObject.toPaint;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

