import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/painting.dart';


class FractionalOffsetTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FractionalOffsetTween':
        return ({begin, end}) => FractionalOffsetTweenObjectBinding(FractionalOffsetTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FractionalOffsetTweenObjectBinding extends HT_ExternObject<FractionalOffsetTween> {
  FractionalOffsetTweenObjectBinding(FractionalOffsetTween value) : super(value);

  @override
  final typeid = HT_TypeId('FractionalOffsetTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AlignmentTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AlignmentTween':
        return ({begin, end}) => AlignmentTweenObjectBinding(AlignmentTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AlignmentTweenObjectBinding extends HT_ExternObject<AlignmentTween> {
  AlignmentTweenObjectBinding(AlignmentTween value) : super(value);

  @override
  final typeid = HT_TypeId('AlignmentTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AlignmentGeometryTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AlignmentGeometryTween':
        return ({begin, end}) => AlignmentGeometryTweenObjectBinding(AlignmentGeometryTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AlignmentGeometryTweenObjectBinding extends HT_ExternObject<AlignmentGeometryTween> {
  AlignmentGeometryTweenObjectBinding(AlignmentGeometryTween value) : super(value);

  @override
  final typeid = HT_TypeId('AlignmentGeometryTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

