import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/animation.dart';


class TweenSequenceClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TweenSequence':
        return (items) => TweenSequenceObjectBinding(TweenSequence(items));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TweenSequenceObjectBinding extends HT_ExternObject<TweenSequence> {
  TweenSequenceObjectBinding(TweenSequence value) : super(value);

  @override
  final typeid = HT_TypeId('TweenSequence');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transform':
        return externObject.transform;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FlippedTweenSequenceClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlippedTweenSequence':
        return (items) => FlippedTweenSequenceObjectBinding(FlippedTweenSequence(items));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlippedTweenSequenceObjectBinding extends HT_ExternObject<FlippedTweenSequence> {
  FlippedTweenSequenceObjectBinding(FlippedTweenSequence value) : super(value);

  @override
  final typeid = HT_TypeId('FlippedTweenSequence');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transform':
        return externObject.transform;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TweenSequenceItemClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TweenSequenceItem':
        return ({tween, weight}) => TweenSequenceItemObjectBinding(TweenSequenceItem(tween : tween, weight : weight));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TweenSequenceItemObjectBinding extends HT_ExternObject<TweenSequenceItem> {
  TweenSequenceItemObjectBinding(TweenSequenceItem value) : super(value);

  @override
  final typeid = HT_TypeId('TweenSequenceItem');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tween':
        return externObject.tween;
      case 'weight':
        return externObject.weight;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

