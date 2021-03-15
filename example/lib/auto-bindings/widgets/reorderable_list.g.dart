import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';


class ReorderableListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ReorderableList':
        return ({key, itemBuilder, itemCount, onReorder, proxyDecorator, padding, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, anchor = 0.0, cacheExtent, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ReorderableListObjectBinding(ReorderableList(key : key, itemBuilder : itemBuilder, itemCount : itemCount, onReorder : onReorder, proxyDecorator : proxyDecorator, padding : padding, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, anchor : anchor, cacheExtent : cacheExtent, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'of':
        return (context) => ReorderableList.of(context);
      case 'maybeOf':
        return (context) => ReorderableList.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReorderableListObjectBinding extends HT_ExternObject<ReorderableList> {
  ReorderableListObjectBinding(ReorderableList value) : super(value);

  @override
  final typeid = HT_TypeId('ReorderableList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemBuilder':
        return externObject.itemBuilder;
      case 'itemCount':
        return externObject.itemCount;
      case 'onReorder':
        return externObject.onReorder;
      case 'proxyDecorator':
        return externObject.proxyDecorator;
      case 'padding':
        return externObject.padding;
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
      case 'anchor':
        return externObject.anchor;
      case 'cacheExtent':
        return externObject.cacheExtent;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'keyboardDismissBehavior':
        return externObject.keyboardDismissBehavior;
      case 'restorationId':
        return externObject.restorationId;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ReorderableListStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ReorderableListState':
        return () => ReorderableListStateObjectBinding(ReorderableListState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReorderableListStateObjectBinding extends HT_ExternObject<ReorderableListState> {
  ReorderableListStateObjectBinding(ReorderableListState value) : super(value);

  @override
  final typeid = HT_TypeId('ReorderableListState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'startItemDragReorder':
        return externObject.startItemDragReorder;
      case 'cancelReorder':
        return externObject.cancelReorder;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverReorderableListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverReorderableList':
        return ({key, itemBuilder, itemCount, onReorder, proxyDecorator}) => SliverReorderableListObjectBinding(SliverReorderableList(key : key, itemBuilder : itemBuilder, itemCount : itemCount, onReorder : onReorder, proxyDecorator : proxyDecorator));
      case 'of':
        return (context) => SliverReorderableList.of(context);
      case 'maybeOf':
        return (context) => SliverReorderableList.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverReorderableListObjectBinding extends HT_ExternObject<SliverReorderableList> {
  SliverReorderableListObjectBinding(SliverReorderableList value) : super(value);

  @override
  final typeid = HT_TypeId('SliverReorderableList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemBuilder':
        return externObject.itemBuilder;
      case 'itemCount':
        return externObject.itemCount;
      case 'onReorder':
        return externObject.onReorder;
      case 'proxyDecorator':
        return externObject.proxyDecorator;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverReorderableListStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverReorderableListState':
        return () => SliverReorderableListStateObjectBinding(SliverReorderableListState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverReorderableListStateObjectBinding extends HT_ExternObject<SliverReorderableListState> {
  SliverReorderableListStateObjectBinding(SliverReorderableListState value) : super(value);

  @override
  final typeid = HT_TypeId('SliverReorderableListState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'dispose':
        return externObject.dispose;
      case 'startItemDragReorder':
        return externObject.startItemDragReorder;
      case 'cancelReorder':
        return externObject.cancelReorder;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ReorderableDragStartListenerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ReorderableDragStartListener':
        return ({key, child, index}) => ReorderableDragStartListenerObjectBinding(ReorderableDragStartListener(key : key, child : child, index : index));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReorderableDragStartListenerObjectBinding extends HT_ExternObject<ReorderableDragStartListener> {
  ReorderableDragStartListenerObjectBinding(ReorderableDragStartListener value) : super(value);

  @override
  final typeid = HT_TypeId('ReorderableDragStartListener');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'index':
        return externObject.index;
      case 'build':
        return externObject.build;
      case 'createRecognizer':
        return externObject.createRecognizer;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ReorderableDelayedDragStartListenerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ReorderableDelayedDragStartListener':
        return ({key, child, index}) => ReorderableDelayedDragStartListenerObjectBinding(ReorderableDelayedDragStartListener(key : key, child : child, index : index));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReorderableDelayedDragStartListenerObjectBinding extends HT_ExternObject<ReorderableDelayedDragStartListener> {
  ReorderableDelayedDragStartListenerObjectBinding(ReorderableDelayedDragStartListener value) : super(value);

  @override
  final typeid = HT_TypeId('ReorderableDelayedDragStartListener');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createRecognizer':
        return externObject.createRecognizer;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

