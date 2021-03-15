import 'package:hetu_script/hetu_script.dart';
import 'dart:math';


class PointClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Point':
        return (x, y) => PointObjectBinding(Point<num>(x, y));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointObjectBinding extends HT_ExternObject<Point> {
  PointObjectBinding(Point value) : super(value);

  @override
  final typeid = HT_TypeId('Point');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'x':
        return externObject.x;
      case 'y':
        return externObject.y;
      case 'hashCode':
        return externObject.hashCode;
      case 'magnitude':
        return externObject.magnitude;
      case 'toString':
        return externObject.toString;
      case 'distanceTo':
        return externObject.distanceTo;
      case 'squaredDistanceTo':
        return externObject.squaredDistanceTo;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

