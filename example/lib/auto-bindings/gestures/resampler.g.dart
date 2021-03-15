import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:collection';


class PointerEventResamplerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerEventResampler':
        return () => PointerEventResamplerObjectBinding(PointerEventResampler());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerEventResamplerObjectBinding extends HT_ExternObject<PointerEventResampler> {
  PointerEventResamplerObjectBinding(PointerEventResampler value) : super(value);

  @override
  final typeid = HT_TypeId('PointerEventResampler');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hasPendingEvents':
        return externObject.hasPendingEvents;
      case 'isTracked':
        return externObject.isTracked;
      case 'isDown':
        return externObject.isDown;
      case 'addEvent':
        return externObject.addEvent;
      case 'sample':
        return externObject.sample;
      case 'stop':
        return externObject.stop;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

