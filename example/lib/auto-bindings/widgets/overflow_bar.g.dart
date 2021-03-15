import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

class OverflowBarAlignmentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return OverflowBarAlignment.start;
      case 'end':
        return OverflowBarAlignment.end;
      case 'center':
        return OverflowBarAlignment.center;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverflowBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OverflowBar':
        return ({key, spacing = 0.0, overflowSpacing = 0.0, overflowAlignment = OverflowBarAlignment.start, overflowDirection = VerticalDirection.down, textDirection, clipBehavior = Clip.none, children = const <Widget>[]}) => OverflowBarObjectBinding(OverflowBar(key : key, spacing : spacing, overflowSpacing : overflowSpacing, overflowAlignment : overflowAlignment, overflowDirection : overflowDirection, textDirection : textDirection, clipBehavior : clipBehavior, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverflowBarObjectBinding extends HT_ExternObject<OverflowBar> {
  OverflowBarObjectBinding(OverflowBar value) : super(value);

  @override
  final typeid = HT_TypeId('OverflowBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'spacing':
        return externObject.spacing;
      case 'overflowSpacing':
        return externObject.overflowSpacing;
      case 'overflowAlignment':
        return externObject.overflowAlignment;
      case 'overflowDirection':
        return externObject.overflowDirection;
      case 'textDirection':
        return externObject.textDirection;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

