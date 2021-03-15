import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';


class NestedScrollViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NestedScrollView':
        return ({key, controller, scrollDirection = Axis.vertical, reverse = false, physics, headerSliverBuilder, body, dragStartBehavior = DragStartBehavior.start, floatHeaderSlivers = false, clipBehavior = Clip.hardEdge, restorationId}) => NestedScrollViewObjectBinding(NestedScrollView(key : key, controller : controller, scrollDirection : scrollDirection, reverse : reverse, physics : physics, headerSliverBuilder : headerSliverBuilder, body : body, dragStartBehavior : dragStartBehavior, floatHeaderSlivers : floatHeaderSlivers, clipBehavior : clipBehavior, restorationId : restorationId));
      case 'sliverOverlapAbsorberHandleFor':
        return (context) => NestedScrollView.sliverOverlapAbsorberHandleFor(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NestedScrollViewObjectBinding extends HT_ExternObject<NestedScrollView> {
  NestedScrollViewObjectBinding(NestedScrollView value) : super(value);

  @override
  final typeid = HT_TypeId('NestedScrollView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'scrollDirection':
        return externObject.scrollDirection;
      case 'reverse':
        return externObject.reverse;
      case 'physics':
        return externObject.physics;
      case 'headerSliverBuilder':
        return externObject.headerSliverBuilder;
      case 'body':
        return externObject.body;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'floatHeaderSlivers':
        return externObject.floatHeaderSlivers;
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

class NestedScrollViewStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NestedScrollViewState':
        return () => NestedScrollViewStateObjectBinding(NestedScrollViewState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NestedScrollViewStateObjectBinding extends HT_ExternObject<NestedScrollViewState> {
  NestedScrollViewStateObjectBinding(NestedScrollViewState value) : super(value);

  @override
  final typeid = HT_TypeId('NestedScrollViewState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'innerController':
        return externObject.innerController;
      case 'outerController':
        return externObject.outerController;
      case 'initState':
        return externObject.initState;
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'dispose':
        return externObject.dispose;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverOverlapAbsorberHandleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverOverlapAbsorberHandle':
        return () => SliverOverlapAbsorberHandleObjectBinding(SliverOverlapAbsorberHandle());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverOverlapAbsorberHandleObjectBinding extends HT_ExternObject<SliverOverlapAbsorberHandle> {
  SliverOverlapAbsorberHandleObjectBinding(SliverOverlapAbsorberHandle value) : super(value);

  @override
  final typeid = HT_TypeId('SliverOverlapAbsorberHandle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'layoutExtent':
        return externObject.layoutExtent;
      case 'scrollExtent':
        return externObject.scrollExtent;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverOverlapAbsorberClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverOverlapAbsorber':
        return ({key, handle, sliver}) => SliverOverlapAbsorberObjectBinding(SliverOverlapAbsorber(key : key, handle : handle, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverOverlapAbsorberObjectBinding extends HT_ExternObject<SliverOverlapAbsorber> {
  SliverOverlapAbsorberObjectBinding(SliverOverlapAbsorber value) : super(value);

  @override
  final typeid = HT_TypeId('SliverOverlapAbsorber');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'handle':
        return externObject.handle;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderSliverOverlapAbsorberClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverOverlapAbsorber':
        return ({handle, sliver}) => RenderSliverOverlapAbsorberObjectBinding(RenderSliverOverlapAbsorber(handle : handle, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverOverlapAbsorberObjectBinding extends HT_ExternObject<RenderSliverOverlapAbsorber> {
  RenderSliverOverlapAbsorberObjectBinding(RenderSliverOverlapAbsorber value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverOverlapAbsorber');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'handle':
        return externObject.handle;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'performLayout':
        return externObject.performLayout;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'paint':
        return externObject.paint;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'handle':
        externObject.handle = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverOverlapInjectorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverOverlapInjector':
        return ({key, handle, sliver}) => SliverOverlapInjectorObjectBinding(SliverOverlapInjector(key : key, handle : handle, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverOverlapInjectorObjectBinding extends HT_ExternObject<SliverOverlapInjector> {
  SliverOverlapInjectorObjectBinding(SliverOverlapInjector value) : super(value);

  @override
  final typeid = HT_TypeId('SliverOverlapInjector');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'handle':
        return externObject.handle;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderSliverOverlapInjectorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverOverlapInjector':
        return ({handle}) => RenderSliverOverlapInjectorObjectBinding(RenderSliverOverlapInjector(handle : handle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverOverlapInjectorObjectBinding extends HT_ExternObject<RenderSliverOverlapInjector> {
  RenderSliverOverlapInjectorObjectBinding(RenderSliverOverlapInjector value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverOverlapInjector');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'handle':
        return externObject.handle;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'performLayout':
        return externObject.performLayout;
      case 'debugPaint':
        return externObject.debugPaint;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'handle':
        externObject.handle = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NestedScrollViewViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NestedScrollViewViewport':
        return ({key, axisDirection = AxisDirection.down, crossAxisDirection, anchor = 0.0, offset, center, slivers = const <Widget>[], handle, clipBehavior = Clip.hardEdge}) => NestedScrollViewViewportObjectBinding(NestedScrollViewViewport(key : key, axisDirection : axisDirection, crossAxisDirection : crossAxisDirection, anchor : anchor, offset : offset, center : center, slivers : slivers, handle : handle, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NestedScrollViewViewportObjectBinding extends HT_ExternObject<NestedScrollViewViewport> {
  NestedScrollViewViewportObjectBinding(NestedScrollViewViewport value) : super(value);

  @override
  final typeid = HT_TypeId('NestedScrollViewViewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'handle':
        return externObject.handle;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderNestedScrollViewViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderNestedScrollViewViewport':
        return ({axisDirection = AxisDirection.down, crossAxisDirection, offset, anchor = 0.0, children, center, handle, clipBehavior = Clip.hardEdge}) => RenderNestedScrollViewViewportObjectBinding(RenderNestedScrollViewViewport(axisDirection : axisDirection, crossAxisDirection : crossAxisDirection, offset : offset, anchor : anchor, children : children, center : center, handle : handle, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderNestedScrollViewViewportObjectBinding extends HT_ExternObject<RenderNestedScrollViewViewport> {
  RenderNestedScrollViewViewportObjectBinding(RenderNestedScrollViewViewport value) : super(value);

  @override
  final typeid = HT_TypeId('RenderNestedScrollViewViewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'handle':
        return externObject.handle;
      case 'markNeedsLayout':
        return externObject.markNeedsLayout;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'handle':
        externObject.handle = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

