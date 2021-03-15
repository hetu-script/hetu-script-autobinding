import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:ui';

class RenderComparisonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'identical':
        return RenderComparison.identical;
      case 'metadata':
        return RenderComparison.metadata;
      case 'paint':
        return RenderComparison.paint;
      case 'layout':
        return RenderComparison.layout;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class AxisClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'horizontal':
        return Axis.horizontal;
      case 'vertical':
        return Axis.vertical;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class VerticalDirectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'up':
        return VerticalDirection.up;
      case 'down':
        return VerticalDirection.down;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class AxisDirectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'up':
        return AxisDirection.up;
      case 'right':
        return AxisDirection.right;
      case 'down':
        return AxisDirection.down;
      case 'left':
        return AxisDirection.left;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

