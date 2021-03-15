import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';


class ScrollControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollController':
        return ({initialScrollOffset = 0.0, keepScrollOffset = true, debugLabel}) => ScrollControllerObjectBinding(ScrollController(initialScrollOffset : initialScrollOffset, keepScrollOffset : keepScrollOffset, debugLabel : debugLabel));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollControllerObjectBinding extends HT_ExternObject<ScrollController> {
  ScrollControllerObjectBinding(ScrollController value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'keepScrollOffset':
        return externObject.keepScrollOffset;
      case 'debugLabel':
        return externObject.debugLabel;
      case 'initialScrollOffset':
        return externObject.initialScrollOffset;
      case 'positions':
        return externObject.positions;
      case 'hasClients':
        return externObject.hasClients;
      case 'position':
        return externObject.position;
      case 'offset':
        return externObject.offset;
      case 'animateTo':
        return externObject.animateTo;
      case 'jumpTo':
        return externObject.jumpTo;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'dispose':
        return externObject.dispose;
      case 'createScrollPosition':
        return externObject.createScrollPosition;
      case 'toString':
        return externObject.toString;
      case 'debugFillDescription':
        return externObject.debugFillDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TrackingScrollControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TrackingScrollController':
        return ({initialScrollOffset = 0.0, keepScrollOffset = true, debugLabel}) => TrackingScrollControllerObjectBinding(TrackingScrollController(initialScrollOffset : initialScrollOffset, keepScrollOffset : keepScrollOffset, debugLabel : debugLabel));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TrackingScrollControllerObjectBinding extends HT_ExternObject<TrackingScrollController> {
  TrackingScrollControllerObjectBinding(TrackingScrollController value) : super(value);

  @override
  final typeid = HT_TypeId('TrackingScrollController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'mostRecentlyUpdatedPosition':
        return externObject.mostRecentlyUpdatedPosition;
      case 'initialScrollOffset':
        return externObject.initialScrollOffset;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

