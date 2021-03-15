import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class AnimatedListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedList':
        return ({key, itemBuilder, initialItemCount = 0, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding}) => AnimatedListObjectBinding(AnimatedList(key : key, itemBuilder : itemBuilder, initialItemCount : initialItemCount, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding));
      case 'of':
        return (context) => AnimatedList.of(context);
      case 'maybeOf':
        return (context) => AnimatedList.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedListObjectBinding extends HT_ExternObject<AnimatedList> {
  AnimatedListObjectBinding(AnimatedList value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemBuilder':
        return externObject.itemBuilder;
      case 'initialItemCount':
        return externObject.initialItemCount;
      case 'scrollDirection':
        return externObject.scrollDirection;
      case 'reverse':
        return externObject.reverse;
      case 'controller':
        return externObject.controller;
      case 'primary':
        return externObject.primary;
      case 'physics':
        return externObject.physics;
      case 'shrinkWrap':
        return externObject.shrinkWrap;
      case 'padding':
        return externObject.padding;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedListStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedListState':
        return () => AnimatedListStateObjectBinding(AnimatedListState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedListStateObjectBinding extends HT_ExternObject<AnimatedListState> {
  AnimatedListStateObjectBinding(AnimatedListState value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedListState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'insertItem':
        return externObject.insertItem;
      case 'removeItem':
        return externObject.removeItem;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverAnimatedListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverAnimatedList':
        return ({key, itemBuilder, initialItemCount = 0}) => SliverAnimatedListObjectBinding(SliverAnimatedList(key : key, itemBuilder : itemBuilder, initialItemCount : initialItemCount));
      case 'of':
        return (context) => SliverAnimatedList.of(context);
      case 'maybeOf':
        return (context) => SliverAnimatedList.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverAnimatedListObjectBinding extends HT_ExternObject<SliverAnimatedList> {
  SliverAnimatedListObjectBinding(SliverAnimatedList value) : super(value);

  @override
  final typeid = HT_TypeId('SliverAnimatedList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemBuilder':
        return externObject.itemBuilder;
      case 'initialItemCount':
        return externObject.initialItemCount;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverAnimatedListStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverAnimatedListState':
        return () => SliverAnimatedListStateObjectBinding(SliverAnimatedListState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverAnimatedListStateObjectBinding extends HT_ExternObject<SliverAnimatedListState> {
  SliverAnimatedListStateObjectBinding(SliverAnimatedListState value) : super(value);

  @override
  final typeid = HT_TypeId('SliverAnimatedListState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initState':
        return externObject.initState;
      case 'dispose':
        return externObject.dispose;
      case 'insertItem':
        return externObject.insertItem;
      case 'removeItem':
        return externObject.removeItem;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

