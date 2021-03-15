import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


class ModalBarrierClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ModalBarrier':
        return ({key, color, dismissible = true, semanticsLabel, barrierSemanticsDismissible = true}) => ModalBarrierObjectBinding(ModalBarrier(key : key, color : color, dismissible : dismissible, semanticsLabel : semanticsLabel, barrierSemanticsDismissible : barrierSemanticsDismissible));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ModalBarrierObjectBinding extends HT_ExternObject<ModalBarrier> {
  ModalBarrierObjectBinding(ModalBarrier value) : super(value);

  @override
  final typeid = HT_TypeId('ModalBarrier');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'dismissible':
        return externObject.dismissible;
      case 'barrierSemanticsDismissible':
        return externObject.barrierSemanticsDismissible;
      case 'semanticsLabel':
        return externObject.semanticsLabel;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedModalBarrierClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedModalBarrier':
        return ({key, color, dismissible = true, semanticsLabel, barrierSemanticsDismissible}) => AnimatedModalBarrierObjectBinding(AnimatedModalBarrier(key : key, color : color, dismissible : dismissible, semanticsLabel : semanticsLabel, barrierSemanticsDismissible : barrierSemanticsDismissible));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedModalBarrierObjectBinding extends HT_ExternObject<AnimatedModalBarrier> {
  AnimatedModalBarrierObjectBinding(AnimatedModalBarrier value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedModalBarrier');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dismissible':
        return externObject.dismissible;
      case 'semanticsLabel':
        return externObject.semanticsLabel;
      case 'barrierSemanticsDismissible':
        return externObject.barrierSemanticsDismissible;
      case 'color':
        return externObject.color;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

