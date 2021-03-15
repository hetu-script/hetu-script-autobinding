import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';


class StadiumBorderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StadiumBorder':
        return ({side = BorderSide.none}) => StadiumBorderObjectBinding(StadiumBorder(side : side));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StadiumBorderObjectBinding extends HT_ExternObject<StadiumBorder> {
  StadiumBorderObjectBinding(StadiumBorder value) : super(value);

  @override
  final typeid = HT_TypeId('StadiumBorder');

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

