import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class ReorderableListViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ReorderableListView':
        return ({key, children, onReorder, proxyDecorator, buildDefaultDragHandles = true, padding, header, scrollDirection = Axis.vertical, reverse = false, scrollController, primary, physics, shrinkWrap = false, anchor = 0.0, cacheExtent, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ReorderableListViewObjectBinding(ReorderableListView(key : key, children : children, onReorder : onReorder, proxyDecorator : proxyDecorator, buildDefaultDragHandles : buildDefaultDragHandles, padding : padding, header : header, scrollDirection : scrollDirection, reverse : reverse, scrollController : scrollController, primary : primary, physics : physics, shrinkWrap : shrinkWrap, anchor : anchor, cacheExtent : cacheExtent, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'ReorderableListView.builder':
        return ({key, itemBuilder, itemCount, onReorder, proxyDecorator, buildDefaultDragHandles = true, padding, header, scrollDirection = Axis.vertical, reverse = false, scrollController, primary, physics, shrinkWrap = false, anchor = 0.0, cacheExtent, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ReorderableListViewObjectBinding(ReorderableListView.builder(key : key, itemBuilder : itemBuilder, itemCount : itemCount, onReorder : onReorder, proxyDecorator : proxyDecorator, buildDefaultDragHandles : buildDefaultDragHandles, padding : padding, header : header, scrollDirection : scrollDirection, reverse : reverse, scrollController : scrollController, primary : primary, physics : physics, shrinkWrap : shrinkWrap, anchor : anchor, cacheExtent : cacheExtent, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReorderableListViewObjectBinding extends HT_ExternObject<ReorderableListView> {
  ReorderableListViewObjectBinding(ReorderableListView value) : super(value);

  @override
  final typeid = HT_TypeId('ReorderableListView');

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
      case 'buildDefaultDragHandles':
        return externObject.buildDefaultDragHandles;
      case 'padding':
        return externObject.padding;
      case 'header':
        return externObject.header;
      case 'scrollDirection':
        return externObject.scrollDirection;
      case 'reverse':
        return externObject.reverse;
      case 'scrollController':
        return externObject.scrollController;
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

