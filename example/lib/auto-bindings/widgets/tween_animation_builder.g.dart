import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/animation.dart';


class TweenAnimationBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TweenAnimationBuilder':
        return ({key, tween, duration, curve = Curves.linear, builder, onEnd, child}) => TweenAnimationBuilderObjectBinding(TweenAnimationBuilder<Object?>(key : key, tween : tween, duration : duration, curve : curve, builder : builder, onEnd : onEnd, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TweenAnimationBuilderObjectBinding extends HT_ExternObject<TweenAnimationBuilder> {
  TweenAnimationBuilderObjectBinding(TweenAnimationBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('TweenAnimationBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tween':
        return externObject.tween;
      case 'builder':
        return externObject.builder;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

