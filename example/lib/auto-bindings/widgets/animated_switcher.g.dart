import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class AnimatedSwitcherClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedSwitcher':
        return ({key, child, duration, reverseDuration, switchInCurve = Curves.linear, switchOutCurve = Curves.linear, transitionBuilder = AnimatedSwitcher.defaultTransitionBuilder, layoutBuilder = AnimatedSwitcher.defaultLayoutBuilder}) => AnimatedSwitcherObjectBinding(AnimatedSwitcher(key : key, child : child, duration : duration, reverseDuration : reverseDuration, switchInCurve : switchInCurve, switchOutCurve : switchOutCurve, transitionBuilder : transitionBuilder, layoutBuilder : layoutBuilder));
      case 'defaultTransitionBuilder':
        return (child, animation) => AnimatedSwitcher.defaultTransitionBuilder(child, animation);
      case 'defaultLayoutBuilder':
        return (currentChild, previousChildren) => AnimatedSwitcher.defaultLayoutBuilder(currentChild, previousChildren);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedSwitcherObjectBinding extends HT_ExternObject<AnimatedSwitcher> {
  AnimatedSwitcherObjectBinding(AnimatedSwitcher value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedSwitcher');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'duration':
        return externObject.duration;
      case 'reverseDuration':
        return externObject.reverseDuration;
      case 'switchInCurve':
        return externObject.switchInCurve;
      case 'switchOutCurve':
        return externObject.switchOutCurve;
      case 'transitionBuilder':
        return externObject.transitionBuilder;
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

