import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui'as ui;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';


class RenderSliverOpacityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverOpacity':
        return ({opacity = 1.0, alwaysIncludeSemantics = false, sliver}) => RenderSliverOpacityObjectBinding(RenderSliverOpacity(opacity : opacity, alwaysIncludeSemantics : alwaysIncludeSemantics, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverOpacityObjectBinding extends HT_ExternObject<RenderSliverOpacity> {
  RenderSliverOpacityObjectBinding(RenderSliverOpacity value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverOpacity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'opacity':
        return externObject.opacity;
      case 'alwaysIncludeSemantics':
        return externObject.alwaysIncludeSemantics;
      case 'paint':
        return externObject.paint;
      case 'visitChildrenForSemantics':
        return externObject.visitChildrenForSemantics;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'opacity':
        externObject.opacity = value;
        break;
      case 'alwaysIncludeSemantics':
        externObject.alwaysIncludeSemantics = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverIgnorePointerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverIgnorePointer':
        return ({sliver, ignoring = true, ignoringSemantics}) => RenderSliverIgnorePointerObjectBinding(RenderSliverIgnorePointer(sliver : sliver, ignoring : ignoring, ignoringSemantics : ignoringSemantics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverIgnorePointerObjectBinding extends HT_ExternObject<RenderSliverIgnorePointer> {
  RenderSliverIgnorePointerObjectBinding(RenderSliverIgnorePointer value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverIgnorePointer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ignoring':
        return externObject.ignoring;
      case 'ignoringSemantics':
        return externObject.ignoringSemantics;
      case 'hitTest':
        return externObject.hitTest;
      case 'visitChildrenForSemantics':
        return externObject.visitChildrenForSemantics;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'ignoring':
        externObject.ignoring = value;
        break;
      case 'ignoringSemantics':
        externObject.ignoringSemantics = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverOffstageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverOffstage':
        return ({offstage = true, sliver}) => RenderSliverOffstageObjectBinding(RenderSliverOffstage(offstage : offstage, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverOffstageObjectBinding extends HT_ExternObject<RenderSliverOffstage> {
  RenderSliverOffstageObjectBinding(RenderSliverOffstage value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverOffstage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offstage':
        return externObject.offstage;
      case 'performLayout':
        return externObject.performLayout;
      case 'hitTest':
        return externObject.hitTest;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'paint':
        return externObject.paint;
      case 'visitChildrenForSemantics':
        return externObject.visitChildrenForSemantics;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'debugDescribeChildren':
        return externObject.debugDescribeChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'offstage':
        externObject.offstage = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverAnimatedOpacityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverAnimatedOpacity':
        return ({opacity, alwaysIncludeSemantics = false, sliver}) => RenderSliverAnimatedOpacityObjectBinding(RenderSliverAnimatedOpacity(opacity : opacity, alwaysIncludeSemantics : alwaysIncludeSemantics, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverAnimatedOpacityObjectBinding extends HT_ExternObject<RenderSliverAnimatedOpacity> {
  RenderSliverAnimatedOpacityObjectBinding(RenderSliverAnimatedOpacity value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverAnimatedOpacity');


}

