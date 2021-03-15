import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';


class BeveledRectangleBorderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BeveledRectangleBorder':
        return ({side = BorderSide.none, borderRadius = BorderRadius.zero}) => BeveledRectangleBorderObjectBinding(BeveledRectangleBorder(side : side, borderRadius : borderRadius));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BeveledRectangleBorderObjectBinding extends HT_ExternObject<BeveledRectangleBorder> {
  BeveledRectangleBorderObjectBinding(BeveledRectangleBorder value) : super(value);

  @override
  final typeid = HT_TypeId('BeveledRectangleBorder');

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
      case 'copyWith':
        return externObject.copyWith;
      case 'getInnerPath':
        return externObject.getInnerPath;
      case 'getOuterPath':
        return externObject.getOuterPath;
      case 'paint':
        return externObject.paint;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

