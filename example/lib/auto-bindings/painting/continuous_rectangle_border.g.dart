import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';


class ContinuousRectangleBorderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ContinuousRectangleBorder':
        return ({side = BorderSide.none, borderRadius = BorderRadius.zero}) => ContinuousRectangleBorderObjectBinding(ContinuousRectangleBorder(side : side, borderRadius : borderRadius));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ContinuousRectangleBorderObjectBinding extends HT_ExternObject<ContinuousRectangleBorder> {
  ContinuousRectangleBorderObjectBinding(ContinuousRectangleBorder value) : super(value);

  @override
  final typeid = HT_TypeId('ContinuousRectangleBorder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'borderRadius':
        return externObject.borderRadius;
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

