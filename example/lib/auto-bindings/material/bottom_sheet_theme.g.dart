import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class BottomSheetThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BottomSheetThemeData':
        return ({backgroundColor, elevation, modalBackgroundColor, modalElevation, shape, clipBehavior}) => BottomSheetThemeDataObjectBinding(BottomSheetThemeData(backgroundColor : backgroundColor, elevation : elevation, modalBackgroundColor : modalBackgroundColor, modalElevation : modalElevation, shape : shape, clipBehavior : clipBehavior));
      case 'lerp':
        return (a, b, t) => BottomSheetThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BottomSheetThemeDataObjectBinding extends HT_ExternObject<BottomSheetThemeData> {
  BottomSheetThemeDataObjectBinding(BottomSheetThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('BottomSheetThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'modalBackgroundColor':
        return externObject.modalBackgroundColor;
      case 'modalElevation':
        return externObject.modalElevation;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

