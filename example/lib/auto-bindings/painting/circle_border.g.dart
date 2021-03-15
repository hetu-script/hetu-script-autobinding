import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';


class CircleBorderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CircleBorder':
        return ({side = BorderSide.none}) => CircleBorderObjectBinding(CircleBorder(side : side));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CircleBorderObjectBinding extends HT_ExternObject<CircleBorder> {
  CircleBorderObjectBinding(CircleBorder value) : super(value);

  @override
  final typeid = HT_TypeId('CircleBorder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dimensions':
        return externObject.dimensions;
      case 'hashCode':
        return externObject.hashCode;
      case 'scale':
        return externObject.scale;
      case 'lerpFrom':
        return externObject.lerpFrom;
      case 'lerpTo':
        return externObject.lerpTo;
      case 'getInnerPath':
        return externObject.getInnerPath;
      case 'getOuterPath':
        return externObject.getOuterPath;
      case 'copyWith':
        return externObject.copyWith;
      case 'paint':
        return externObject.paint;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

