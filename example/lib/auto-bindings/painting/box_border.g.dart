import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/foundation.dart';

class BoxShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'rectangle':
        return BoxShape.rectangle;
      case 'circle':
        return BoxShape.circle;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BorderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Border':
        return ({top = BorderSide.none, right = BorderSide.none, bottom = BorderSide.none, left = BorderSide.none}) => BorderObjectBinding(Border(top : top, right : right, bottom : bottom, left : left));
      case 'Border.fromBorderSide':
        return (side) => BorderObjectBinding(Border.fromBorderSide(side));
      case 'Border.symmetric':
        return ({vertical = BorderSide.none, horizontal = BorderSide.none}) => BorderObjectBinding(Border.symmetric(vertical : vertical, horizontal : horizontal));
      case 'merge':
        return (a, b) => Border.merge(a, b);
      case 'lerp':
        return (a, b, t) => Border.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BorderObjectBinding extends HT_ExternObject<Border> {
  BorderObjectBinding(Border value) : super(value);

  @override
  final typeid = HT_TypeId('Border');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'top':
        return externObject.top;
      case 'right':
        return externObject.right;
      case 'bottom':
        return externObject.bottom;
      case 'left':
        return externObject.left;
      case 'dimensions':
        return externObject.dimensions;
      case 'isUniform':
        return externObject.isUniform;
      case 'hashCode':
        return externObject.hashCode;
      case 'add':
        return externObject.add;
      case 'scale':
        return externObject.scale;
      case 'lerpFrom':
        return externObject.lerpFrom;
      case 'lerpTo':
        return externObject.lerpTo;
      case 'paint':
        return externObject.paint;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BorderDirectionalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BorderDirectional':
        return ({top = BorderSide.none, start = BorderSide.none, end = BorderSide.none, bottom = BorderSide.none}) => BorderDirectionalObjectBinding(BorderDirectional(top : top, start : start, end : end, bottom : bottom));
      case 'merge':
        return (a, b) => BorderDirectional.merge(a, b);
      case 'lerp':
        return (a, b, t) => BorderDirectional.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BorderDirectionalObjectBinding extends HT_ExternObject<BorderDirectional> {
  BorderDirectionalObjectBinding(BorderDirectional value) : super(value);

  @override
  final typeid = HT_TypeId('BorderDirectional');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'top':
        return externObject.top;
      case 'start':
        return externObject.start;
      case 'end':
        return externObject.end;
      case 'bottom':
        return externObject.bottom;
      case 'dimensions':
        return externObject.dimensions;
      case 'isUniform':
        return externObject.isUniform;
      case 'hashCode':
        return externObject.hashCode;
      case 'add':
        return externObject.add;
      case 'scale':
        return externObject.scale;
      case 'lerpFrom':
        return externObject.lerpFrom;
      case 'lerpTo':
        return externObject.lerpTo;
      case 'paint':
        return externObject.paint;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

