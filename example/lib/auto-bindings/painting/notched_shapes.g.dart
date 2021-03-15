import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;


class CircularNotchedRectangleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CircularNotchedRectangle':
        return () => CircularNotchedRectangleObjectBinding(CircularNotchedRectangle());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CircularNotchedRectangleObjectBinding extends HT_ExternObject<CircularNotchedRectangle> {
  CircularNotchedRectangleObjectBinding(CircularNotchedRectangle value) : super(value);

  @override
  final typeid = HT_TypeId('CircularNotchedRectangle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getOuterPath':
        return externObject.getOuterPath;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AutomaticNotchedShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AutomaticNotchedShape':
        return (host, [guest]) => AutomaticNotchedShapeObjectBinding(AutomaticNotchedShape(host, guest));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AutomaticNotchedShapeObjectBinding extends HT_ExternObject<AutomaticNotchedShape> {
  AutomaticNotchedShapeObjectBinding(AutomaticNotchedShape value) : super(value);

  @override
  final typeid = HT_TypeId('AutomaticNotchedShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'host':
        return externObject.host;
      case 'guest':
        return externObject.guest;
      case 'getOuterPath':
        return externObject.getOuterPath;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

