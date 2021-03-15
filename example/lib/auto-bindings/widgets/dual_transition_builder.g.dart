import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';


class DualTransitionBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DualTransitionBuilder':
        return ({key, animation, forwardBuilder, reverseBuilder, child}) => DualTransitionBuilderObjectBinding(DualTransitionBuilder(key : key, animation : animation, forwardBuilder : forwardBuilder, reverseBuilder : reverseBuilder, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DualTransitionBuilderObjectBinding extends HT_ExternObject<DualTransitionBuilder> {
  DualTransitionBuilderObjectBinding(DualTransitionBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('DualTransitionBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'animation':
        return externObject.animation;
      case 'forwardBuilder':
        return externObject.forwardBuilder;
      case 'reverseBuilder':
        return externObject.reverseBuilder;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

