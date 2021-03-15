import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';


class OffsetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Offset':
        return (dx, dy) => OffsetObjectBinding(Offset(dx, dy));
      case 'lerp':
        return (a, b, t) => Offset.lerp(a, b, t);
      case 'Offset.zero':
        return Offset.zero;
      case 'Offset.infinite':
        return Offset.infinite;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OffsetObjectBinding extends HT_ExternObject<Offset> {
  OffsetObjectBinding(Offset value) : super(value);

  @override
  final typeid = HT_TypeId('Offset');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dx':
        return externObject.dx;
      case 'dy':
        return externObject.dy;
      case 'distance':
        return externObject.distance;
      case 'distanceSquared':
        return externObject.distanceSquared;
      case 'direction':
        return externObject.direction;
      case 'hashCode':
        return externObject.hashCode;
      case 'scale':
        return externObject.scale;
      case 'translate':
        return externObject.translate;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SizeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Size':
        return (width, height) => SizeObjectBinding(Size(width, height));
      case 'Size.copy':
        return (source) => SizeObjectBinding(Size.copy(source));
      case 'Size.square':
        return (dimension) => SizeObjectBinding(Size.square(dimension));
      case 'Size.fromWidth':
        return (width) => SizeObjectBinding(Size.fromWidth(width));
      case 'Size.fromHeight':
        return (height) => SizeObjectBinding(Size.fromHeight(height));
      case 'Size.fromRadius':
        return (radius) => SizeObjectBinding(Size.fromRadius(radius));
      case 'lerp':
        return (a, b, t) => Size.lerp(a, b, t);
      case 'Size.zero':
        return Size.zero;
      case 'Size.infinite':
        return Size.infinite;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SizeObjectBinding extends HT_ExternObject<Size> {
  SizeObjectBinding(Size value) : super(value);

  @override
  final typeid = HT_TypeId('Size');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'aspectRatio':
        return externObject.aspectRatio;
      case 'isEmpty':
        return externObject.isEmpty;
      case 'shortestSide':
        return externObject.shortestSide;
      case 'longestSide':
        return externObject.longestSide;
      case 'flipped':
        return externObject.flipped;
      case 'hashCode':
        return externObject.hashCode;
      case 'topLeft':
        return externObject.topLeft;
      case 'topCenter':
        return externObject.topCenter;
      case 'topRight':
        return externObject.topRight;
      case 'centerLeft':
        return externObject.centerLeft;
      case 'center':
        return externObject.center;
      case 'centerRight':
        return externObject.centerRight;
      case 'bottomLeft':
        return externObject.bottomLeft;
      case 'bottomCenter':
        return externObject.bottomCenter;
      case 'bottomRight':
        return externObject.bottomRight;
      case 'contains':
        return externObject.contains;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RectClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Rect.fromLTRB':
        return (left, top, right, bottom) => RectObjectBinding(Rect.fromLTRB(left, top, right, bottom));
      case 'Rect.fromLTWH':
        return (left, top, width, height) => RectObjectBinding(Rect.fromLTWH(left, top, width, height));
      case 'Rect.fromCircle':
        return ({center, radius}) => RectObjectBinding(Rect.fromCircle(center : center, radius : radius));
      case 'Rect.fromCenter':
        return ({center, width, height}) => RectObjectBinding(Rect.fromCenter(center : center, width : width, height : height));
      case 'Rect.fromPoints':
        return (a, b) => RectObjectBinding(Rect.fromPoints(a, b));
      case 'lerp':
        return (a, b, t) => Rect.lerp(a, b, t);
      case 'Rect.zero':
        return Rect.zero;
      case 'Rect.largest':
        return Rect.largest;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RectObjectBinding extends HT_ExternObject<Rect> {
  RectObjectBinding(Rect value) : super(value);

  @override
  final typeid = HT_TypeId('Rect');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'left':
        return externObject.left;
      case 'top':
        return externObject.top;
      case 'right':
        return externObject.right;
      case 'bottom':
        return externObject.bottom;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'size':
        return externObject.size;
      case 'hasNaN':
        return externObject.hasNaN;
      case 'isInfinite':
        return externObject.isInfinite;
      case 'isFinite':
        return externObject.isFinite;
      case 'isEmpty':
        return externObject.isEmpty;
      case 'shortestSide':
        return externObject.shortestSide;
      case 'longestSide':
        return externObject.longestSide;
      case 'topLeft':
        return externObject.topLeft;
      case 'topCenter':
        return externObject.topCenter;
      case 'topRight':
        return externObject.topRight;
      case 'centerLeft':
        return externObject.centerLeft;
      case 'center':
        return externObject.center;
      case 'centerRight':
        return externObject.centerRight;
      case 'bottomLeft':
        return externObject.bottomLeft;
      case 'bottomCenter':
        return externObject.bottomCenter;
      case 'bottomRight':
        return externObject.bottomRight;
      case 'hashCode':
        return externObject.hashCode;
      case 'shift':
        return externObject.shift;
      case 'translate':
        return externObject.translate;
      case 'inflate':
        return externObject.inflate;
      case 'deflate':
        return externObject.deflate;
      case 'intersect':
        return externObject.intersect;
      case 'expandToInclude':
        return externObject.expandToInclude;
      case 'overlaps':
        return externObject.overlaps;
      case 'contains':
        return externObject.contains;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RadiusClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Radius.circular':
        return (radius) => RadiusObjectBinding(Radius.circular(radius));
      case 'Radius.elliptical':
        return (x, y) => RadiusObjectBinding(Radius.elliptical(x, y));
      case 'lerp':
        return (a, b, t) => Radius.lerp(a, b, t);
      case 'Radius.zero':
        return Radius.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RadiusObjectBinding extends HT_ExternObject<Radius> {
  RadiusObjectBinding(Radius value) : super(value);

  @override
  final typeid = HT_TypeId('Radius');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'x':
        return externObject.x;
      case 'y':
        return externObject.y;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RRectClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RRect.fromLTRBXY':
        return (left, top, right, bottom, radiusX, radiusY) => RRectObjectBinding(RRect.fromLTRBXY(left, top, right, bottom, radiusX, radiusY));
      case 'RRect.fromLTRBR':
        return (left, top, right, bottom, radius) => RRectObjectBinding(RRect.fromLTRBR(left, top, right, bottom, radius));
      case 'RRect.fromRectXY':
        return (rect, radiusX, radiusY) => RRectObjectBinding(RRect.fromRectXY(rect, radiusX, radiusY));
      case 'RRect.fromRectAndRadius':
        return (rect, radius) => RRectObjectBinding(RRect.fromRectAndRadius(rect, radius));
      case 'RRect.fromLTRBAndCorners':
        return (left, top, right, bottom, {topLeft = Radius.zero, topRight = Radius.zero, bottomRight = Radius.zero, bottomLeft = Radius.zero}) => RRectObjectBinding(RRect.fromLTRBAndCorners(left, top, right, bottom, topLeft : topLeft, topRight : topRight, bottomRight : bottomRight, bottomLeft : bottomLeft));
      case 'RRect.fromRectAndCorners':
        return (rect, {topLeft = Radius.zero, topRight = Radius.zero, bottomRight = Radius.zero, bottomLeft = Radius.zero}) => RRectObjectBinding(RRect.fromRectAndCorners(rect, topLeft : topLeft, topRight : topRight, bottomRight : bottomRight, bottomLeft : bottomLeft));
      case 'lerp':
        return (a, b, t) => RRect.lerp(a, b, t);
      case 'RRect.zero':
        return RRect.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RRectObjectBinding extends HT_ExternObject<RRect> {
  RRectObjectBinding(RRect value) : super(value);

  @override
  final typeid = HT_TypeId('RRect');


}

class RSTransformClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RSTransform':
        return (scos, ssin, tx, ty) => RSTransformObjectBinding(RSTransform(scos, ssin, tx, ty));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RSTransformObjectBinding extends HT_ExternObject<RSTransform> {
  RSTransformObjectBinding(RSTransform value) : super(value);

  @override
  final typeid = HT_TypeId('RSTransform');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scos':
        return externObject.scos;
      case 'ssin':
        return externObject.ssin;
      case 'tx':
        return externObject.tx;
      case 'ty':
        return externObject.ty;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

