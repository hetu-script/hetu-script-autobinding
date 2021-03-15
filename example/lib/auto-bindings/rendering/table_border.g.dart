import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';


class TableBorderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TableBorder':
        return ({top = BorderSide.none, right = BorderSide.none, bottom = BorderSide.none, left = BorderSide.none, horizontalInside = BorderSide.none, verticalInside = BorderSide.none}) => TableBorderObjectBinding(TableBorder(top : top, right : right, bottom : bottom, left : left, horizontalInside : horizontalInside, verticalInside : verticalInside));
      case 'lerp':
        return (a, b, t) => TableBorder.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TableBorderObjectBinding extends HT_ExternObject<TableBorder> {
  TableBorderObjectBinding(TableBorder value) : super(value);

  @override
  final typeid = HT_TypeId('TableBorder');

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
      case 'horizontalInside':
        return externObject.horizontalInside;
      case 'verticalInside':
        return externObject.verticalInside;
      case 'dimensions':
        return externObject.dimensions;
      case 'isUniform':
        return externObject.isUniform;
      case 'hashCode':
        return externObject.hashCode;
      case 'scale':
        return externObject.scale;
      case 'paint':
        return externObject.paint;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

