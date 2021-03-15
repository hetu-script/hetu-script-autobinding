import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';


class AlignmentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Alignment':
        return (x, y) => AlignmentObjectBinding(Alignment(x, y));
      case 'lerp':
        return (a, b, t) => Alignment.lerp(a, b, t);
      case 'Alignment.topLeft':
        return Alignment.topLeft;
      case 'Alignment.topCenter':
        return Alignment.topCenter;
      case 'Alignment.topRight':
        return Alignment.topRight;
      case 'Alignment.centerLeft':
        return Alignment.centerLeft;
      case 'Alignment.center':
        return Alignment.center;
      case 'Alignment.centerRight':
        return Alignment.centerRight;
      case 'Alignment.bottomLeft':
        return Alignment.bottomLeft;
      case 'Alignment.bottomCenter':
        return Alignment.bottomCenter;
      case 'Alignment.bottomRight':
        return Alignment.bottomRight;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AlignmentObjectBinding extends HT_ExternObject<Alignment> {
  AlignmentObjectBinding(Alignment value) : super(value);

  @override
  final typeid = HT_TypeId('Alignment');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'x':
        return externObject.x;
      case 'y':
        return externObject.y;
      case 'add':
        return externObject.add;
      case 'alongOffset':
        return externObject.alongOffset;
      case 'alongSize':
        return externObject.alongSize;
      case 'withinRect':
        return externObject.withinRect;
      case 'inscribe':
        return externObject.inscribe;
      case 'resolve':
        return externObject.resolve;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AlignmentDirectionalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AlignmentDirectional':
        return (start, y) => AlignmentDirectionalObjectBinding(AlignmentDirectional(start, y));
      case 'lerp':
        return (a, b, t) => AlignmentDirectional.lerp(a, b, t);
      case 'AlignmentDirectional.topStart':
        return AlignmentDirectional.topStart;
      case 'AlignmentDirectional.topCenter':
        return AlignmentDirectional.topCenter;
      case 'AlignmentDirectional.topEnd':
        return AlignmentDirectional.topEnd;
      case 'AlignmentDirectional.centerStart':
        return AlignmentDirectional.centerStart;
      case 'AlignmentDirectional.center':
        return AlignmentDirectional.center;
      case 'AlignmentDirectional.centerEnd':
        return AlignmentDirectional.centerEnd;
      case 'AlignmentDirectional.bottomStart':
        return AlignmentDirectional.bottomStart;
      case 'AlignmentDirectional.bottomCenter':
        return AlignmentDirectional.bottomCenter;
      case 'AlignmentDirectional.bottomEnd':
        return AlignmentDirectional.bottomEnd;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AlignmentDirectionalObjectBinding extends HT_ExternObject<AlignmentDirectional> {
  AlignmentDirectionalObjectBinding(AlignmentDirectional value) : super(value);

  @override
  final typeid = HT_TypeId('AlignmentDirectional');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return externObject.start;
      case 'y':
        return externObject.y;
      case 'add':
        return externObject.add;
      case 'resolve':
        return externObject.resolve;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextAlignVerticalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextAlignVertical':
        return ({y}) => TextAlignVerticalObjectBinding(TextAlignVertical(y : y));
      case 'TextAlignVertical.top':
        return TextAlignVertical.top;
      case 'TextAlignVertical.center':
        return TextAlignVertical.center;
      case 'TextAlignVertical.bottom':
        return TextAlignVertical.bottom;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextAlignVerticalObjectBinding extends HT_ExternObject<TextAlignVertical> {
  TextAlignVerticalObjectBinding(TextAlignVertical value) : super(value);

  @override
  final typeid = HT_TypeId('TextAlignVertical');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'y':
        return externObject.y;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

