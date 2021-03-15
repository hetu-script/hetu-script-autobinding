import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/widgets.dart';


class UnderlineInputBorderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'UnderlineInputBorder':
        return ({borderSide = const BorderSide(), borderRadius = const BorderRadius.only(topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0))}) => UnderlineInputBorderObjectBinding(UnderlineInputBorder(borderSide : borderSide, borderRadius : borderRadius));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class UnderlineInputBorderObjectBinding extends HT_ExternObject<UnderlineInputBorder> {
  UnderlineInputBorderObjectBinding(UnderlineInputBorder value) : super(value);

  @override
  final typeid = HT_TypeId('UnderlineInputBorder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'borderRadius':
        return externObject.borderRadius;
      case 'isOutline':
        return externObject.isOutline;
      case 'dimensions':
        return externObject.dimensions;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'scale':
        return externObject.scale;
      case 'getInnerPath':
        return externObject.getInnerPath;
      case 'getOuterPath':
        return externObject.getOuterPath;
      case 'lerpFrom':
        return externObject.lerpFrom;
      case 'lerpTo':
        return externObject.lerpTo;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class OutlineInputBorderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OutlineInputBorder':
        return ({borderSide = const BorderSide(), borderRadius = const BorderRadius.all(Radius.circular(4.0)), gapPadding = 4.0}) => OutlineInputBorderObjectBinding(OutlineInputBorder(borderSide : borderSide, borderRadius : borderRadius, gapPadding : gapPadding));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OutlineInputBorderObjectBinding extends HT_ExternObject<OutlineInputBorder> {
  OutlineInputBorderObjectBinding(OutlineInputBorder value) : super(value);

  @override
  final typeid = HT_TypeId('OutlineInputBorder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'gapPadding':
        return externObject.gapPadding;
      case 'borderRadius':
        return externObject.borderRadius;
      case 'isOutline':
        return externObject.isOutline;
      case 'dimensions':
        return externObject.dimensions;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
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
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

