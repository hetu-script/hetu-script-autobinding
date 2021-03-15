import 'package:hetu_script/hetu_script.dart';
import 'dart:math';


class RectangleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Rectangle':
        return (left, top, width, height) => RectangleObjectBinding(Rectangle<num>(left, top, width, height));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RectangleObjectBinding extends HT_ExternObject<Rectangle> {
  RectangleObjectBinding(Rectangle value) : super(value);

  @override
  final typeid = HT_TypeId('Rectangle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'left':
        return externObject.left;
      case 'top':
        return externObject.top;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MutableRectangleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MutableRectangle':
        return (left, top, width, height) => MutableRectangleObjectBinding(MutableRectangle<num>(left, top, width, height));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MutableRectangleObjectBinding extends HT_ExternObject<MutableRectangle> {
  MutableRectangleObjectBinding(MutableRectangle value) : super(value);

  @override
  final typeid = HT_TypeId('MutableRectangle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'left':
        return externObject.left;
      case 'top':
        return externObject.top;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'left':
        externObject.left = value;
        break;
      case 'top':
        externObject.top = value;
        break;
      case 'width':
        externObject.width = value;
        break;
      case 'height':
        externObject.height = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

