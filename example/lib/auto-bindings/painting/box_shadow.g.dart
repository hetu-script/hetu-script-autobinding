import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';


class BoxShadowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BoxShadow':
        return ({color = const Color(0xFF000000), offset = Offset.zero, blurRadius = 0.0, spreadRadius = 0.0}) => BoxShadowObjectBinding(BoxShadow(color : color, offset : offset, blurRadius : blurRadius, spreadRadius : spreadRadius));
      case 'lerp':
        return (a, b, t) => BoxShadow.lerp(a, b, t);
      case 'lerpList':
        return (a, b, t) => BoxShadow.lerpList(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BoxShadowObjectBinding extends HT_ExternObject<BoxShadow> {
  BoxShadowObjectBinding(BoxShadow value) : super(value);

  @override
  final typeid = HT_TypeId('BoxShadow');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'spreadRadius':
        return externObject.spreadRadius;
      case 'hashCode':
        return externObject.hashCode;
      case 'toPaint':
        return externObject.toPaint;
      case 'scale':
        return externObject.scale;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

