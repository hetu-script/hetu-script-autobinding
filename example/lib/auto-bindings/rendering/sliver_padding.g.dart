import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;


class RenderSliverPaddingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverPadding':
        return ({padding, textDirection, child}) => RenderSliverPaddingObjectBinding(RenderSliverPadding(padding : padding, textDirection : textDirection, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverPaddingObjectBinding extends HT_ExternObject<RenderSliverPadding> {
  RenderSliverPaddingObjectBinding(RenderSliverPadding value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverPadding');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'resolvedPadding':
        return externObject.resolvedPadding;
      case 'padding':
        return externObject.padding;
      case 'textDirection':
        return externObject.textDirection;
      case 'performLayout':
        return externObject.performLayout;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'padding':
        externObject.padding = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

