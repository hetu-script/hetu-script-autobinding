import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';


class ScrollBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollBehavior':
        return () => ScrollBehaviorObjectBinding(ScrollBehavior());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollBehaviorObjectBinding extends HT_ExternObject<ScrollBehavior> {
  ScrollBehaviorObjectBinding(ScrollBehavior value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollBehavior');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getPlatform':
        return externObject.getPlatform;
      case 'buildViewportChrome':
        return externObject.buildViewportChrome;
      case 'velocityTrackerBuilder':
        return externObject.velocityTrackerBuilder;
      case 'getScrollPhysics':
        return externObject.getScrollPhysics;
      case 'shouldNotify':
        return externObject.shouldNotify;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScrollConfigurationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollConfiguration':
        return ({key, behavior, child}) => ScrollConfigurationObjectBinding(ScrollConfiguration(key : key, behavior : behavior, child : child));
      case 'of':
        return (context) => ScrollConfiguration.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollConfigurationObjectBinding extends HT_ExternObject<ScrollConfiguration> {
  ScrollConfigurationObjectBinding(ScrollConfiguration value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollConfiguration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'behavior':
        return externObject.behavior;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

