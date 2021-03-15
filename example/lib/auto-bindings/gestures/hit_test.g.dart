import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';


class HitTestEntryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HitTestEntry':
        return (target) => HitTestEntryObjectBinding(HitTestEntry(target));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HitTestEntryObjectBinding extends HT_ExternObject<HitTestEntry> {
  HitTestEntryObjectBinding(HitTestEntry value) : super(value);

  @override
  final typeid = HT_TypeId('HitTestEntry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'target':
        return externObject.target;
      case 'transform':
        return externObject.transform;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HitTestResultClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HitTestResult':
        return () => HitTestResultObjectBinding(HitTestResult());
      case 'HitTestResult.wrap':
        return (result) => HitTestResultObjectBinding(HitTestResult.wrap(result));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HitTestResultObjectBinding extends HT_ExternObject<HitTestResult> {
  HitTestResultObjectBinding(HitTestResult value) : super(value);

  @override
  final typeid = HT_TypeId('HitTestResult');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'path':
        return externObject.path;
      case 'add':
        return externObject.add;
      case 'pushTransform':
        return externObject.pushTransform;
      case 'pushOffset':
        return externObject.pushOffset;
      case 'popTransform':
        return externObject.popTransform;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

