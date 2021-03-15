import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';


class IconThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IconThemeData':
        return ({color, opacity, size}) => IconThemeDataObjectBinding(IconThemeData(color : color, opacity : opacity, size : size));
      case 'IconThemeData.fallback':
        return () => IconThemeDataObjectBinding(IconThemeData.fallback());
      case 'lerp':
        return (a, b, t) => IconThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IconThemeDataObjectBinding extends HT_ExternObject<IconThemeData> {
  IconThemeDataObjectBinding(IconThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('IconThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'size':
        return externObject.size;
      case 'isConcrete':
        return externObject.isConcrete;
      case 'opacity':
        return externObject.opacity;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'merge':
        return externObject.merge;
      case 'resolve':
        return externObject.resolve;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

