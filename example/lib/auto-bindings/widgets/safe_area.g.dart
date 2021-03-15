import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';


class SafeAreaClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SafeArea':
        return ({key, left = true, top = true, right = true, bottom = true, minimum = EdgeInsets.zero, maintainBottomViewPadding = false, child}) => SafeAreaObjectBinding(SafeArea(key : key, left : left, top : top, right : right, bottom : bottom, minimum : minimum, maintainBottomViewPadding : maintainBottomViewPadding, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SafeAreaObjectBinding extends HT_ExternObject<SafeArea> {
  SafeAreaObjectBinding(SafeArea value) : super(value);

  @override
  final typeid = HT_TypeId('SafeArea');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'left':
        return externObject.left;
      case 'top':
        return externObject.top;
      case 'right':
        return externObject.right;
      case 'bottom':
        return externObject.bottom;
      case 'minimum':
        return externObject.minimum;
      case 'maintainBottomViewPadding':
        return externObject.maintainBottomViewPadding;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverSafeAreaClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverSafeArea':
        return ({key, left = true, top = true, right = true, bottom = true, minimum = EdgeInsets.zero, sliver}) => SliverSafeAreaObjectBinding(SliverSafeArea(key : key, left : left, top : top, right : right, bottom : bottom, minimum : minimum, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverSafeAreaObjectBinding extends HT_ExternObject<SliverSafeArea> {
  SliverSafeAreaObjectBinding(SliverSafeArea value) : super(value);

  @override
  final typeid = HT_TypeId('SliverSafeArea');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'left':
        return externObject.left;
      case 'top':
        return externObject.top;
      case 'right':
        return externObject.right;
      case 'bottom':
        return externObject.bottom;
      case 'minimum':
        return externObject.minimum;
      case 'sliver':
        return externObject.sliver;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

