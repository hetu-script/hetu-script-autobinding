import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';

class ScrollViewKeyboardDismissBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'manual':
        return ScrollViewKeyboardDismissBehavior.manual;
      case 'onDrag':
        return ScrollViewKeyboardDismissBehavior.onDrag;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CustomScrollViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CustomScrollView':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, center, anchor = 0.0, cacheExtent, slivers = const <Widget>[], semanticChildCount, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => CustomScrollViewObjectBinding(CustomScrollView(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, center : center, anchor : anchor, cacheExtent : cacheExtent, slivers : slivers, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CustomScrollViewObjectBinding extends HT_ExternObject<CustomScrollView> {
  CustomScrollViewObjectBinding(CustomScrollView value) : super(value);

  @override
  final typeid = HT_TypeId('CustomScrollView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'slivers':
        return externObject.slivers;
      case 'buildSlivers':
        return externObject.buildSlivers;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ListViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListView':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding, itemExtent, addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, cacheExtent, children = const <Widget>[], semanticChildCount, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ListViewObjectBinding(ListView(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding, itemExtent : itemExtent, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, cacheExtent : cacheExtent, children : children, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'ListView.builder':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding, itemExtent, itemBuilder, itemCount, addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, cacheExtent, semanticChildCount, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ListViewObjectBinding(ListView.builder(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding, itemExtent : itemExtent, itemBuilder : itemBuilder, itemCount : itemCount, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, cacheExtent : cacheExtent, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'ListView.separated':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding, itemBuilder, separatorBuilder, itemCount, addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, cacheExtent, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ListViewObjectBinding(ListView.separated(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding, itemBuilder : itemBuilder, separatorBuilder : separatorBuilder, itemCount : itemCount, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, cacheExtent : cacheExtent, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'ListView.custom':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding, itemExtent, childrenDelegate, cacheExtent, semanticChildCount, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ListViewObjectBinding(ListView.custom(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding, itemExtent : itemExtent, childrenDelegate : childrenDelegate, cacheExtent : cacheExtent, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListViewObjectBinding extends HT_ExternObject<ListView> {
  ListViewObjectBinding(ListView value) : super(value);

  @override
  final typeid = HT_TypeId('ListView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemExtent':
        return externObject.itemExtent;
      case 'childrenDelegate':
        return externObject.childrenDelegate;
      case 'buildChildLayout':
        return externObject.buildChildLayout;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class GridViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GridView':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding, gridDelegate, addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, cacheExtent, children = const <Widget>[], semanticChildCount, dragStartBehavior = DragStartBehavior.start, clipBehavior = Clip.hardEdge, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId}) => GridViewObjectBinding(GridView(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding, gridDelegate : gridDelegate, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, cacheExtent : cacheExtent, children : children, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, clipBehavior : clipBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId));
      case 'GridView.builder':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding, gridDelegate, itemBuilder, itemCount, addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, cacheExtent, semanticChildCount, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => GridViewObjectBinding(GridView.builder(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding, gridDelegate : gridDelegate, itemBuilder : itemBuilder, itemCount : itemCount, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, cacheExtent : cacheExtent, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'GridView.custom':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding, gridDelegate, childrenDelegate, cacheExtent, semanticChildCount, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => GridViewObjectBinding(GridView.custom(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding, gridDelegate : gridDelegate, childrenDelegate : childrenDelegate, cacheExtent : cacheExtent, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'GridView.count':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding, crossAxisCount, mainAxisSpacing = 0.0, crossAxisSpacing = 0.0, childAspectRatio = 1.0, addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, cacheExtent, children = const <Widget>[], semanticChildCount, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => GridViewObjectBinding(GridView.count(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding, crossAxisCount : crossAxisCount, mainAxisSpacing : mainAxisSpacing, crossAxisSpacing : crossAxisSpacing, childAspectRatio : childAspectRatio, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, cacheExtent : cacheExtent, children : children, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      case 'GridView.extent':
        return ({key, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding, maxCrossAxisExtent, mainAxisSpacing = 0.0, crossAxisSpacing = 0.0, childAspectRatio = 1.0, addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, cacheExtent, children = const <Widget>[], semanticChildCount, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => GridViewObjectBinding(GridView.extent(key : key, scrollDirection : scrollDirection, reverse : reverse, controller : controller, primary : primary, physics : physics, shrinkWrap : shrinkWrap, padding : padding, maxCrossAxisExtent : maxCrossAxisExtent, mainAxisSpacing : mainAxisSpacing, crossAxisSpacing : crossAxisSpacing, childAspectRatio : childAspectRatio, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, cacheExtent : cacheExtent, children : children, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, keyboardDismissBehavior : keyboardDismissBehavior, restorationId : restorationId, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GridViewObjectBinding extends HT_ExternObject<GridView> {
  GridViewObjectBinding(GridView value) : super(value);

  @override
  final typeid = HT_TypeId('GridView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'gridDelegate':
        return externObject.gridDelegate;
      case 'childrenDelegate':
        return externObject.childrenDelegate;
      case 'buildChildLayout':
        return externObject.buildChildLayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

