import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class VisibilityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Visibility':
        return ({key, child, replacement = const SizedBox.shrink(), visible = true, maintainState = false, maintainAnimation = false, maintainSize = false, maintainSemantics = false, maintainInteractivity = false}) => VisibilityObjectBinding(Visibility(key : key, child : child, replacement : replacement, visible : visible, maintainState : maintainState, maintainAnimation : maintainAnimation, maintainSize : maintainSize, maintainSemantics : maintainSemantics, maintainInteractivity : maintainInteractivity));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class VisibilityObjectBinding extends HT_ExternObject<Visibility> {
  VisibilityObjectBinding(Visibility value) : super(value);

  @override
  final typeid = HT_TypeId('Visibility');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'replacement':
        return externObject.replacement;
      case 'visible':
        return externObject.visible;
      case 'maintainState':
        return externObject.maintainState;
      case 'maintainAnimation':
        return externObject.maintainAnimation;
      case 'maintainSize':
        return externObject.maintainSize;
      case 'maintainSemantics':
        return externObject.maintainSemantics;
      case 'maintainInteractivity':
        return externObject.maintainInteractivity;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverVisibilityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverVisibility':
        return ({key, sliver, replacementSliver = const SliverToBoxAdapter(), visible = true, maintainState = false, maintainAnimation = false, maintainSize = false, maintainSemantics = false, maintainInteractivity = false}) => SliverVisibilityObjectBinding(SliverVisibility(key : key, sliver : sliver, replacementSliver : replacementSliver, visible : visible, maintainState : maintainState, maintainAnimation : maintainAnimation, maintainSize : maintainSize, maintainSemantics : maintainSemantics, maintainInteractivity : maintainInteractivity));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverVisibilityObjectBinding extends HT_ExternObject<SliverVisibility> {
  SliverVisibilityObjectBinding(SliverVisibility value) : super(value);

  @override
  final typeid = HT_TypeId('SliverVisibility');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'sliver':
        return externObject.sliver;
      case 'replacementSliver':
        return externObject.replacementSliver;
      case 'visible':
        return externObject.visible;
      case 'maintainState':
        return externObject.maintainState;
      case 'maintainAnimation':
        return externObject.maintainAnimation;
      case 'maintainSize':
        return externObject.maintainSize;
      case 'maintainSemantics':
        return externObject.maintainSemantics;
      case 'maintainInteractivity':
        return externObject.maintainInteractivity;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

