import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';


class ScrollPositionWithSingleContextClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollPositionWithSingleContext':
        return ({physics, context, initialPixels = 0.0, keepScrollOffset = true, oldPosition, debugLabel}) => ScrollPositionWithSingleContextObjectBinding(ScrollPositionWithSingleContext(physics : physics, context : context, initialPixels : initialPixels, keepScrollOffset : keepScrollOffset, oldPosition : oldPosition, debugLabel : debugLabel));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollPositionWithSingleContextObjectBinding extends HT_ExternObject<ScrollPositionWithSingleContext> {
  ScrollPositionWithSingleContextObjectBinding(ScrollPositionWithSingleContext value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollPositionWithSingleContext');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'axisDirection':
        return externObject.axisDirection;
      case 'userScrollDirection':
        return externObject.userScrollDirection;
      case 'setPixels':
        return externObject.setPixels;
      case 'absorb':
        return externObject.absorb;
      case 'applyNewDimensions':
        return externObject.applyNewDimensions;
      case 'beginActivity':
        return externObject.beginActivity;
      case 'applyUserOffset':
        return externObject.applyUserOffset;
      case 'goIdle':
        return externObject.goIdle;
      case 'goBallistic':
        return externObject.goBallistic;
      case 'updateUserScrollDirection':
        return externObject.updateUserScrollDirection;
      case 'animateTo':
        return externObject.animateTo;
      case 'jumpTo':
        return externObject.jumpTo;
      case 'pointerScroll':
        return externObject.pointerScroll;
      case 'jumpToWithoutSettling':
        return externObject.jumpToWithoutSettling;
      case 'hold':
        return externObject.hold;
      case 'drag':
        return externObject.drag;
      case 'dispose':
        return externObject.dispose;
      case 'debugFillDescription':
        return externObject.debugFillDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

