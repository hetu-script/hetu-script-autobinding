import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';


class FractionalOffsetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FractionalOffset':
        return (dx, dy) => FractionalOffsetObjectBinding(FractionalOffset(dx, dy));
      case 'lerp':
        return (a, b, t) => FractionalOffset.lerp(a, b, t);
      case 'FractionalOffset.topLeft':
        return FractionalOffset.topLeft;
      case 'FractionalOffset.topCenter':
        return FractionalOffset.topCenter;
      case 'FractionalOffset.topRight':
        return FractionalOffset.topRight;
      case 'FractionalOffset.centerLeft':
        return FractionalOffset.centerLeft;
      case 'FractionalOffset.center':
        return FractionalOffset.center;
      case 'FractionalOffset.centerRight':
        return FractionalOffset.centerRight;
      case 'FractionalOffset.bottomLeft':
        return FractionalOffset.bottomLeft;
      case 'FractionalOffset.bottomCenter':
        return FractionalOffset.bottomCenter;
      case 'FractionalOffset.bottomRight':
        return FractionalOffset.bottomRight;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FractionalOffsetObjectBinding extends HT_ExternObject<FractionalOffset> {
  FractionalOffsetObjectBinding(FractionalOffset value) : super(value);

  @override
  final typeid = HT_TypeId('FractionalOffset');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dx':
        return externObject.dx;
      case 'dy':
        return externObject.dy;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

