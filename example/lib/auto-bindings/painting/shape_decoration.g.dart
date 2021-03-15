import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/foundation.dart';


class ShapeDecorationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ShapeDecoration':
        return ({color, image, gradient, shadows, shape}) => ShapeDecorationObjectBinding(ShapeDecoration(color : color, image : image, gradient : gradient, shadows : shadows, shape : shape));
      case 'lerp':
        return (a, b, t) => ShapeDecoration.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShapeDecorationObjectBinding extends HT_ExternObject<ShapeDecoration> {
  ShapeDecorationObjectBinding(ShapeDecoration value) : super(value);

  @override
  final typeid = HT_TypeId('ShapeDecoration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'gradient':
        return externObject.gradient;
      case 'image':
        return externObject.image;
      case 'shadows':
        return externObject.shadows;
      case 'shape':
        return externObject.shape;
      case 'padding':
        return externObject.padding;
      case 'isComplex':
        return externObject.isComplex;
      case 'hashCode':
        return externObject.hashCode;
      case 'getClipPath':
        return externObject.getClipPath;
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

