import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class CrossFadeStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'showFirst':
        return CrossFadeState.showFirst;
      case 'showSecond':
        return CrossFadeState.showSecond;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedCrossFadeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedCrossFade':
        const defaultLayoutBuilder = AnimatedCrossFade.defaultLayoutBuilder;
        return ({key, firstChild, secondChild, firstCurve = Curves.linear, secondCurve = Curves.linear, sizeCurve = Curves.linear, alignment = Alignment.topCenter, crossFadeState, duration, reverseDuration, layoutBuilder = defaultLayoutBuilder}) => AnimatedCrossFadeObjectBinding(AnimatedCrossFade(key : key, firstChild : firstChild, secondChild : secondChild, firstCurve : firstCurve, secondCurve : secondCurve, sizeCurve : sizeCurve, alignment : alignment, crossFadeState : crossFadeState, duration : duration, reverseDuration : reverseDuration, layoutBuilder : layoutBuilder));
      case 'defaultLayoutBuilder':
        return (topChild, topChildKey, bottomChild, bottomChildKey) => AnimatedCrossFade.defaultLayoutBuilder(topChild, topChildKey, bottomChild, bottomChildKey);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedCrossFadeObjectBinding extends HT_ExternObject<AnimatedCrossFade> {
  AnimatedCrossFadeObjectBinding(AnimatedCrossFade value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedCrossFade');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'firstChild':
        return externObject.firstChild;
      case 'secondChild':
        return externObject.secondChild;
      case 'crossFadeState':
        return externObject.crossFadeState;
      case 'duration':
        return externObject.duration;
      case 'reverseDuration':
        return externObject.reverseDuration;
      case 'firstCurve':
        return externObject.firstCurve;
      case 'secondCurve':
        return externObject.secondCurve;
      case 'sizeCurve':
        return externObject.sizeCurve;
      case 'alignment':
        return externObject.alignment;
      case 'layoutBuilder':
        return externObject.layoutBuilder;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

