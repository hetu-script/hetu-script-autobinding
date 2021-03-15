import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/foundation.dart';


class BorderRadiusClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BorderRadius.all':
        return (radius) => BorderRadiusObjectBinding(BorderRadius.all(radius));
      case 'BorderRadius.circular':
        return (radius) => BorderRadiusObjectBinding(BorderRadius.circular(radius));
      case 'BorderRadius.vertical':
        return ({top = Radius.zero, bottom = Radius.zero}) => BorderRadiusObjectBinding(BorderRadius.vertical(top : top, bottom : bottom));
      case 'BorderRadius.horizontal':
        return ({left = Radius.zero, right = Radius.zero}) => BorderRadiusObjectBinding(BorderRadius.horizontal(left : left, right : right));
      case 'BorderRadius.only':
        return ({topLeft = Radius.zero, topRight = Radius.zero, bottomLeft = Radius.zero, bottomRight = Radius.zero}) => BorderRadiusObjectBinding(BorderRadius.only(topLeft : topLeft, topRight : topRight, bottomLeft : bottomLeft, bottomRight : bottomRight));
      case 'lerp':
        return (a, b, t) => BorderRadius.lerp(a, b, t);
      case 'BorderRadius.zero':
        return BorderRadius.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BorderRadiusObjectBinding extends HT_ExternObject<BorderRadius> {
  BorderRadiusObjectBinding(BorderRadius value) : super(value);

  @override
  final typeid = HT_TypeId('BorderRadius');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'topLeft':
        return externObject.topLeft;
      case 'topRight':
        return externObject.topRight;
      case 'bottomLeft':
        return externObject.bottomLeft;
      case 'bottomRight':
        return externObject.bottomRight;
      case 'toRRect':
        return externObject.toRRect;
      case 'subtract':
        return externObject.subtract;
      case 'add':
        return externObject.add;
      case 'resolve':
        return externObject.resolve;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BorderRadiusDirectionalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BorderRadiusDirectional.all':
        return (radius) => BorderRadiusDirectionalObjectBinding(BorderRadiusDirectional.all(radius));
      case 'BorderRadiusDirectional.circular':
        return (radius) => BorderRadiusDirectionalObjectBinding(BorderRadiusDirectional.circular(radius));
      case 'BorderRadiusDirectional.vertical':
        return ({top = Radius.zero, bottom = Radius.zero}) => BorderRadiusDirectionalObjectBinding(BorderRadiusDirectional.vertical(top : top, bottom : bottom));
      case 'BorderRadiusDirectional.horizontal':
        return ({start = Radius.zero, end = Radius.zero}) => BorderRadiusDirectionalObjectBinding(BorderRadiusDirectional.horizontal(start : start, end : end));
      case 'BorderRadiusDirectional.only':
        return ({topStart = Radius.zero, topEnd = Radius.zero, bottomStart = Radius.zero, bottomEnd = Radius.zero}) => BorderRadiusDirectionalObjectBinding(BorderRadiusDirectional.only(topStart : topStart, topEnd : topEnd, bottomStart : bottomStart, bottomEnd : bottomEnd));
      case 'lerp':
        return (a, b, t) => BorderRadiusDirectional.lerp(a, b, t);
      case 'BorderRadiusDirectional.zero':
        return BorderRadiusDirectional.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BorderRadiusDirectionalObjectBinding extends HT_ExternObject<BorderRadiusDirectional> {
  BorderRadiusDirectionalObjectBinding(BorderRadiusDirectional value) : super(value);

  @override
  final typeid = HT_TypeId('BorderRadiusDirectional');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'topStart':
        return externObject.topStart;
      case 'topEnd':
        return externObject.topEnd;
      case 'bottomStart':
        return externObject.bottomStart;
      case 'bottomEnd':
        return externObject.bottomEnd;
      case 'subtract':
        return externObject.subtract;
      case 'add':
        return externObject.add;
      case 'resolve':
        return externObject.resolve;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

