import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'dart:math'as math;
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';


class ListWheelChildListDelegateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListWheelChildListDelegate':
        return ({children}) => ListWheelChildListDelegateObjectBinding(ListWheelChildListDelegate(children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListWheelChildListDelegateObjectBinding extends HT_ExternObject<ListWheelChildListDelegate> {
  ListWheelChildListDelegateObjectBinding(ListWheelChildListDelegate value) : super(value);

  @override
  final typeid = HT_TypeId('ListWheelChildListDelegate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'children':
        return externObject.children;
      case 'estimatedChildCount':
        return externObject.estimatedChildCount;
      case 'build':
        return externObject.build;
      case 'shouldRebuild':
        return externObject.shouldRebuild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ListWheelChildLoopingListDelegateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListWheelChildLoopingListDelegate':
        return ({children}) => ListWheelChildLoopingListDelegateObjectBinding(ListWheelChildLoopingListDelegate(children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListWheelChildLoopingListDelegateObjectBinding extends HT_ExternObject<ListWheelChildLoopingListDelegate> {
  ListWheelChildLoopingListDelegateObjectBinding(ListWheelChildLoopingListDelegate value) : super(value);

  @override
  final typeid = HT_TypeId('ListWheelChildLoopingListDelegate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'children':
        return externObject.children;
      case 'estimatedChildCount':
        return externObject.estimatedChildCount;
      case 'trueIndexOf':
        return externObject.trueIndexOf;
      case 'build':
        return externObject.build;
      case 'shouldRebuild':
        return externObject.shouldRebuild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ListWheelChildBuilderDelegateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListWheelChildBuilderDelegate':
        return ({builder, childCount}) => ListWheelChildBuilderDelegateObjectBinding(ListWheelChildBuilderDelegate(builder : builder, childCount : childCount));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListWheelChildBuilderDelegateObjectBinding extends HT_ExternObject<ListWheelChildBuilderDelegate> {
  ListWheelChildBuilderDelegateObjectBinding(ListWheelChildBuilderDelegate value) : super(value);

  @override
  final typeid = HT_TypeId('ListWheelChildBuilderDelegate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'childCount':
        return externObject.childCount;
      case 'estimatedChildCount':
        return externObject.estimatedChildCount;
      case 'build':
        return externObject.build;
      case 'shouldRebuild':
        return externObject.shouldRebuild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FixedExtentScrollControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FixedExtentScrollController':
        return ({initialItem = 0}) => FixedExtentScrollControllerObjectBinding(FixedExtentScrollController(initialItem : initialItem));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FixedExtentScrollControllerObjectBinding extends HT_ExternObject<FixedExtentScrollController> {
  FixedExtentScrollControllerObjectBinding(FixedExtentScrollController value) : super(value);

  @override
  final typeid = HT_TypeId('FixedExtentScrollController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initialItem':
        return externObject.initialItem;
      case 'selectedItem':
        return externObject.selectedItem;
      case 'animateToItem':
        return externObject.animateToItem;
      case 'jumpToItem':
        return externObject.jumpToItem;
      case 'createScrollPosition':
        return externObject.createScrollPosition;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FixedExtentMetricsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FixedExtentMetrics':
        return ({minScrollExtent, maxScrollExtent, pixels, viewportDimension, axisDirection, itemIndex}) => FixedExtentMetricsObjectBinding(FixedExtentMetrics(minScrollExtent : minScrollExtent, maxScrollExtent : maxScrollExtent, pixels : pixels, viewportDimension : viewportDimension, axisDirection : axisDirection, itemIndex : itemIndex));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FixedExtentMetricsObjectBinding extends HT_ExternObject<FixedExtentMetrics> {
  FixedExtentMetricsObjectBinding(FixedExtentMetrics value) : super(value);

  @override
  final typeid = HT_TypeId('FixedExtentMetrics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemIndex':
        return externObject.itemIndex;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FixedExtentScrollPhysicsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FixedExtentScrollPhysics':
        return ({parent}) => FixedExtentScrollPhysicsObjectBinding(FixedExtentScrollPhysics(parent : parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FixedExtentScrollPhysicsObjectBinding extends HT_ExternObject<FixedExtentScrollPhysics> {
  FixedExtentScrollPhysicsObjectBinding(FixedExtentScrollPhysics value) : super(value);

  @override
  final typeid = HT_TypeId('FixedExtentScrollPhysics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'applyTo':
        return externObject.applyTo;
      case 'createBallisticSimulation':
        return externObject.createBallisticSimulation;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ListWheelScrollViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListWheelScrollView':
        return ({key, controller, physics, diameterRatio = RenderListWheelViewport.defaultDiameterRatio, perspective = RenderListWheelViewport.defaultPerspective, offAxisFraction = 0.0, useMagnifier = false, magnification = 1.0, overAndUnderCenterOpacity = 1.0, itemExtent, squeeze = 1.0, onSelectedItemChanged, renderChildrenOutsideViewport = false, clipBehavior = Clip.hardEdge, restorationId, children}) => ListWheelScrollViewObjectBinding(ListWheelScrollView(key : key, controller : controller, physics : physics, diameterRatio : diameterRatio, perspective : perspective, offAxisFraction : offAxisFraction, useMagnifier : useMagnifier, magnification : magnification, overAndUnderCenterOpacity : overAndUnderCenterOpacity, itemExtent : itemExtent, squeeze : squeeze, onSelectedItemChanged : onSelectedItemChanged, renderChildrenOutsideViewport : renderChildrenOutsideViewport, clipBehavior : clipBehavior, restorationId : restorationId, children : children));
      case 'ListWheelScrollView.useDelegate':
        return ({key, controller, physics, diameterRatio = RenderListWheelViewport.defaultDiameterRatio, perspective = RenderListWheelViewport.defaultPerspective, offAxisFraction = 0.0, useMagnifier = false, magnification = 1.0, overAndUnderCenterOpacity = 1.0, itemExtent, squeeze = 1.0, onSelectedItemChanged, renderChildrenOutsideViewport = false, clipBehavior = Clip.hardEdge, restorationId, childDelegate}) => ListWheelScrollViewObjectBinding(ListWheelScrollView.useDelegate(key : key, controller : controller, physics : physics, diameterRatio : diameterRatio, perspective : perspective, offAxisFraction : offAxisFraction, useMagnifier : useMagnifier, magnification : magnification, overAndUnderCenterOpacity : overAndUnderCenterOpacity, itemExtent : itemExtent, squeeze : squeeze, onSelectedItemChanged : onSelectedItemChanged, renderChildrenOutsideViewport : renderChildrenOutsideViewport, clipBehavior : clipBehavior, restorationId : restorationId, childDelegate : childDelegate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListWheelScrollViewObjectBinding extends HT_ExternObject<ListWheelScrollView> {
  ListWheelScrollViewObjectBinding(ListWheelScrollView value) : super(value);

  @override
  final typeid = HT_TypeId('ListWheelScrollView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'physics':
        return externObject.physics;
      case 'diameterRatio':
        return externObject.diameterRatio;
      case 'perspective':
        return externObject.perspective;
      case 'offAxisFraction':
        return externObject.offAxisFraction;
      case 'useMagnifier':
        return externObject.useMagnifier;
      case 'magnification':
        return externObject.magnification;
      case 'overAndUnderCenterOpacity':
        return externObject.overAndUnderCenterOpacity;
      case 'itemExtent':
        return externObject.itemExtent;
      case 'squeeze':
        return externObject.squeeze;
      case 'onSelectedItemChanged':
        return externObject.onSelectedItemChanged;
      case 'renderChildrenOutsideViewport':
        return externObject.renderChildrenOutsideViewport;
      case 'childDelegate':
        return externObject.childDelegate;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'restorationId':
        return externObject.restorationId;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ListWheelElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListWheelElement':
        return (widget) => ListWheelElementObjectBinding(ListWheelElement(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListWheelElementObjectBinding extends HT_ExternObject<ListWheelElement> {
  ListWheelElementObjectBinding(ListWheelElement value) : super(value);

  @override
  final typeid = HT_TypeId('ListWheelElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widget':
        return externObject.widget;
      case 'renderObject':
        return externObject.renderObject;
      case 'childCount':
        return externObject.childCount;
      case 'update':
        return externObject.update;
      case 'performRebuild':
        return externObject.performRebuild;
      case 'retrieveWidget':
        return externObject.retrieveWidget;
      case 'childExistsAt':
        return externObject.childExistsAt;
      case 'createChild':
        return externObject.createChild;
      case 'removeChild':
        return externObject.removeChild;
      case 'updateChild':
        return externObject.updateChild;
      case 'insertRenderObjectChild':
        return externObject.insertRenderObjectChild;
      case 'moveRenderObjectChild':
        return externObject.moveRenderObjectChild;
      case 'removeRenderObjectChild':
        return externObject.removeRenderObjectChild;
      case 'visitChildren':
        return externObject.visitChildren;
      case 'forgetChild':
        return externObject.forgetChild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ListWheelViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListWheelViewport':
        return ({key, diameterRatio = RenderListWheelViewport.defaultDiameterRatio, perspective = RenderListWheelViewport.defaultPerspective, offAxisFraction = 0.0, useMagnifier = false, magnification = 1.0, overAndUnderCenterOpacity = 1.0, itemExtent, squeeze = 1.0, renderChildrenOutsideViewport = false, offset, childDelegate, clipBehavior = Clip.hardEdge}) => ListWheelViewportObjectBinding(ListWheelViewport(key : key, diameterRatio : diameterRatio, perspective : perspective, offAxisFraction : offAxisFraction, useMagnifier : useMagnifier, magnification : magnification, overAndUnderCenterOpacity : overAndUnderCenterOpacity, itemExtent : itemExtent, squeeze : squeeze, renderChildrenOutsideViewport : renderChildrenOutsideViewport, offset : offset, childDelegate : childDelegate, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListWheelViewportObjectBinding extends HT_ExternObject<ListWheelViewport> {
  ListWheelViewportObjectBinding(ListWheelViewport value) : super(value);

  @override
  final typeid = HT_TypeId('ListWheelViewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'diameterRatio':
        return externObject.diameterRatio;
      case 'perspective':
        return externObject.perspective;
      case 'offAxisFraction':
        return externObject.offAxisFraction;
      case 'useMagnifier':
        return externObject.useMagnifier;
      case 'magnification':
        return externObject.magnification;
      case 'overAndUnderCenterOpacity':
        return externObject.overAndUnderCenterOpacity;
      case 'itemExtent':
        return externObject.itemExtent;
      case 'squeeze':
        return externObject.squeeze;
      case 'renderChildrenOutsideViewport':
        return externObject.renderChildrenOutsideViewport;
      case 'offset':
        return externObject.offset;
      case 'childDelegate':
        return externObject.childDelegate;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createElement':
        return externObject.createElement;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

