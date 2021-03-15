import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';

class BoxFitClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'fill':
        return BoxFit.fill;
      case 'contain':
        return BoxFit.contain;
      case 'cover':
        return BoxFit.cover;
      case 'fitWidth':
        return BoxFit.fitWidth;
      case 'fitHeight':
        return BoxFit.fitHeight;
      case 'none':
        return BoxFit.none;
      case 'scaleDown':
        return BoxFit.scaleDown;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FittedSizesClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FittedSizes':
        return (source, destination) => FittedSizesObjectBinding(FittedSizes(source, destination));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FittedSizesObjectBinding extends HT_ExternObject<FittedSizes> {
  FittedSizesObjectBinding(FittedSizes value) : super(value);

  @override
  final typeid = HT_TypeId('FittedSizes');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'source':
        return externObject.source;
      case 'destination':
        return externObject.destination;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

