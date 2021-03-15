import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class FixedScrollMetricsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FixedScrollMetrics':
        return ({minScrollExtent, maxScrollExtent, pixels, viewportDimension, axisDirection}) => FixedScrollMetricsObjectBinding(FixedScrollMetrics(minScrollExtent : minScrollExtent, maxScrollExtent : maxScrollExtent, pixels : pixels, viewportDimension : viewportDimension, axisDirection : axisDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FixedScrollMetricsObjectBinding extends HT_ExternObject<FixedScrollMetrics> {
  FixedScrollMetricsObjectBinding(FixedScrollMetrics value) : super(value);

  @override
  final typeid = HT_TypeId('FixedScrollMetrics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'axisDirection':
        return externObject.axisDirection;
      case 'minScrollExtent':
        return externObject.minScrollExtent;
      case 'maxScrollExtent':
        return externObject.maxScrollExtent;
      case 'hasContentDimensions':
        return externObject.hasContentDimensions;
      case 'pixels':
        return externObject.pixels;
      case 'hasPixels':
        return externObject.hasPixels;
      case 'viewportDimension':
        return externObject.viewportDimension;
      case 'hasViewportDimension':
        return externObject.hasViewportDimension;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

