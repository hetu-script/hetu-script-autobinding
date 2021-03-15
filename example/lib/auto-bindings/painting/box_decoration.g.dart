import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';


class BoxDecorationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BoxDecoration':
        return ({color, image, border, borderRadius, boxShadow, gradient, backgroundBlendMode, shape = BoxShape.rectangle}) => BoxDecorationObjectBinding(BoxDecoration(color : color, image : image, border : border, borderRadius : borderRadius, boxShadow : boxShadow, gradient : gradient, backgroundBlendMode : backgroundBlendMode, shape : shape));
      case 'lerp':
        return (a, b, t) => BoxDecoration.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BoxDecorationObjectBinding extends HT_ExternObject<BoxDecoration> {
  BoxDecorationObjectBinding(BoxDecoration value) : super(value);

  @override
  final typeid = HT_TypeId('BoxDecoration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'image':
        return externObject.image;
      case 'border':
        return externObject.border;
      case 'borderRadius':
        return externObject.borderRadius;
      case 'boxShadow':
        return externObject.boxShadow;
      case 'gradient':
        return externObject.gradient;
      case 'backgroundBlendMode':
        return externObject.backgroundBlendMode;
      case 'shape':
        return externObject.shape;
      case 'padding':
        return externObject.padding;
      case 'isComplex':
        return externObject.isComplex;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'debugAssertIsValid':
        return externObject.debugAssertIsValid;
      case 'getClipPath':
        return externObject.getClipPath;
      case 'scale':
        return externObject.scale;
      case 'lerpFrom':
        return externObject.lerpFrom;
      case 'lerpTo':
        return externObject.lerpTo;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'hitTest':
        return externObject.hitTest;
      case 'createBoxPainter':
        return externObject.createBoxPainter;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

