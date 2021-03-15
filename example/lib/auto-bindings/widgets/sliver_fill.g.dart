import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class SliverFillViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverFillViewport':
        return ({key, delegate, viewportFraction = 1.0, padEnds = true}) => SliverFillViewportObjectBinding(SliverFillViewport(key : key, delegate : delegate, viewportFraction : viewportFraction, padEnds : padEnds));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverFillViewportObjectBinding extends HT_ExternObject<SliverFillViewport> {
  SliverFillViewportObjectBinding(SliverFillViewport value) : super(value);

  @override
  final typeid = HT_TypeId('SliverFillViewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'viewportFraction':
        return externObject.viewportFraction;
      case 'padEnds':
        return externObject.padEnds;
      case 'delegate':
        return externObject.delegate;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverFillRemainingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverFillRemaining':
        return ({key, child, hasScrollBody = true, fillOverscroll = false}) => SliverFillRemainingObjectBinding(SliverFillRemaining(key : key, child : child, hasScrollBody : hasScrollBody, fillOverscroll : fillOverscroll));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverFillRemainingObjectBinding extends HT_ExternObject<SliverFillRemaining> {
  SliverFillRemainingObjectBinding(SliverFillRemaining value) : super(value);

  @override
  final typeid = HT_TypeId('SliverFillRemaining');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'hasScrollBody':
        return externObject.hasScrollBody;
      case 'fillOverscroll':
        return externObject.fillOverscroll;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

