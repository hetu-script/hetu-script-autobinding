import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';


class EdgeInsetsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'EdgeInsets.fromLTRB':
        return (left, top, right, bottom) => EdgeInsetsObjectBinding(EdgeInsets.fromLTRB(left, top, right, bottom));
      case 'EdgeInsets.all':
        return (value) => EdgeInsetsObjectBinding(EdgeInsets.all(value));
      case 'EdgeInsets.only':
        return ({left = 0.0, top = 0.0, right = 0.0, bottom = 0.0}) => EdgeInsetsObjectBinding(EdgeInsets.only(left : left, top : top, right : right, bottom : bottom));
      case 'EdgeInsets.symmetric':
        return ({vertical = 0.0, horizontal = 0.0}) => EdgeInsetsObjectBinding(EdgeInsets.symmetric(vertical : vertical, horizontal : horizontal));
      case 'EdgeInsets.fromWindowPadding':
        return (padding, devicePixelRatio) => EdgeInsetsObjectBinding(EdgeInsets.fromWindowPadding(padding, devicePixelRatio));
      case 'lerp':
        return (a, b, t) => EdgeInsets.lerp(a, b, t);
      case 'EdgeInsets.zero':
        return EdgeInsets.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class EdgeInsetsObjectBinding extends HT_ExternObject<EdgeInsets> {
  EdgeInsetsObjectBinding(EdgeInsets value) : super(value);

  @override
  final typeid = HT_TypeId('EdgeInsets');

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
      case 'topLeft':
        return externObject.topLeft;
      case 'topRight':
        return externObject.topRight;
      case 'bottomLeft':
        return externObject.bottomLeft;
      case 'bottomRight':
        return externObject.bottomRight;
      case 'flipped':
        return externObject.flipped;
      case 'inflateRect':
        return externObject.inflateRect;
      case 'deflateRect':
        return externObject.deflateRect;
      case 'subtract':
        return externObject.subtract;
      case 'add':
        return externObject.add;
      case 'clamp':
        return externObject.clamp;
      case 'resolve':
        return externObject.resolve;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class EdgeInsetsDirectionalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'EdgeInsetsDirectional.fromSTEB':
        return (start, top, end, bottom) => EdgeInsetsDirectionalObjectBinding(EdgeInsetsDirectional.fromSTEB(start, top, end, bottom));
      case 'EdgeInsetsDirectional.only':
        return ({start = 0.0, top = 0.0, end = 0.0, bottom = 0.0}) => EdgeInsetsDirectionalObjectBinding(EdgeInsetsDirectional.only(start : start, top : top, end : end, bottom : bottom));
      case 'lerp':
        return (a, b, t) => EdgeInsetsDirectional.lerp(a, b, t);
      case 'EdgeInsetsDirectional.zero':
        return EdgeInsetsDirectional.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class EdgeInsetsDirectionalObjectBinding extends HT_ExternObject<EdgeInsetsDirectional> {
  EdgeInsetsDirectionalObjectBinding(EdgeInsetsDirectional value) : super(value);

  @override
  final typeid = HT_TypeId('EdgeInsetsDirectional');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return externObject.start;
      case 'top':
        return externObject.top;
      case 'end':
        return externObject.end;
      case 'bottom':
        return externObject.bottom;
      case 'isNonNegative':
        return externObject.isNonNegative;
      case 'flipped':
        return externObject.flipped;
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

