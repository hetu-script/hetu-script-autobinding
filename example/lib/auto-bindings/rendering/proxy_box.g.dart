import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui'as ui;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';

class HitTestBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'deferToChild':
        return HitTestBehavior.deferToChild;
      case 'opaque':
        return HitTestBehavior.opaque;
      case 'translucent':
        return HitTestBehavior.translucent;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class DecorationPositionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'background':
        return DecorationPosition.background;
      case 'foreground':
        return DecorationPosition.foreground;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderProxyBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderProxyBox':
        return ([child]) => RenderProxyBoxObjectBinding(RenderProxyBox(child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderProxyBoxObjectBinding extends HT_ExternObject<RenderProxyBox> {
  RenderProxyBoxObjectBinding(RenderProxyBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderProxyBox');


}

class RenderConstrainedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderConstrainedBox':
        return ({child, additionalConstraints}) => RenderConstrainedBoxObjectBinding(RenderConstrainedBox(child : child, additionalConstraints : additionalConstraints));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderConstrainedBoxObjectBinding extends HT_ExternObject<RenderConstrainedBox> {
  RenderConstrainedBoxObjectBinding(RenderConstrainedBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderConstrainedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'additionalConstraints':
        return externObject.additionalConstraints;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'performLayout':
        return externObject.performLayout;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'debugPaintSize':
        return externObject.debugPaintSize;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'additionalConstraints':
        externObject.additionalConstraints = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderLimitedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderLimitedBox':
        return ({child, maxWidth = double.infinity, maxHeight = double.infinity}) => RenderLimitedBoxObjectBinding(RenderLimitedBox(child : child, maxWidth : maxWidth, maxHeight : maxHeight));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderLimitedBoxObjectBinding extends HT_ExternObject<RenderLimitedBox> {
  RenderLimitedBoxObjectBinding(RenderLimitedBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderLimitedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'maxWidth':
        return externObject.maxWidth;
      case 'maxHeight':
        return externObject.maxHeight;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'maxWidth':
        externObject.maxWidth = value;
        break;
      case 'maxHeight':
        externObject.maxHeight = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAspectRatioClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderAspectRatio':
        return ({child, aspectRatio}) => RenderAspectRatioObjectBinding(RenderAspectRatio(child : child, aspectRatio : aspectRatio));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAspectRatioObjectBinding extends HT_ExternObject<RenderAspectRatio> {
  RenderAspectRatioObjectBinding(RenderAspectRatio value) : super(value);

  @override
  final typeid = HT_TypeId('RenderAspectRatio');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'aspectRatio':
        return externObject.aspectRatio;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'aspectRatio':
        externObject.aspectRatio = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderIntrinsicWidthClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderIntrinsicWidth':
        return ({stepWidth, stepHeight, child}) => RenderIntrinsicWidthObjectBinding(RenderIntrinsicWidth(stepWidth : stepWidth, stepHeight : stepHeight, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderIntrinsicWidthObjectBinding extends HT_ExternObject<RenderIntrinsicWidth> {
  RenderIntrinsicWidthObjectBinding(RenderIntrinsicWidth value) : super(value);

  @override
  final typeid = HT_TypeId('RenderIntrinsicWidth');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'stepWidth':
        return externObject.stepWidth;
      case 'stepHeight':
        return externObject.stepHeight;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'stepWidth':
        externObject.stepWidth = value;
        break;
      case 'stepHeight':
        externObject.stepHeight = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderIntrinsicHeightClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderIntrinsicHeight':
        return ({child}) => RenderIntrinsicHeightObjectBinding(RenderIntrinsicHeight(child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderIntrinsicHeightObjectBinding extends HT_ExternObject<RenderIntrinsicHeight> {
  RenderIntrinsicHeightObjectBinding(RenderIntrinsicHeight value) : super(value);

  @override
  final typeid = HT_TypeId('RenderIntrinsicHeight');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderOpacityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderOpacity':
        return ({opacity = 1.0, alwaysIncludeSemantics = false, child}) => RenderOpacityObjectBinding(RenderOpacity(opacity : opacity, alwaysIncludeSemantics : alwaysIncludeSemantics, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderOpacityObjectBinding extends HT_ExternObject<RenderOpacity> {
  RenderOpacityObjectBinding(RenderOpacity value) : super(value);

  @override
  final typeid = HT_TypeId('RenderOpacity');

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

class RenderAnimatedOpacityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderAnimatedOpacity':
        return ({opacity, alwaysIncludeSemantics = false, child}) => RenderAnimatedOpacityObjectBinding(RenderAnimatedOpacity(opacity : opacity, alwaysIncludeSemantics : alwaysIncludeSemantics, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAnimatedOpacityObjectBinding extends HT_ExternObject<RenderAnimatedOpacity> {
  RenderAnimatedOpacityObjectBinding(RenderAnimatedOpacity value) : super(value);

  @override
  final typeid = HT_TypeId('RenderAnimatedOpacity');


}

class RenderShaderMaskClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderShaderMask':
        return ({child, shaderCallback, blendMode = BlendMode.modulate}) => RenderShaderMaskObjectBinding(RenderShaderMask(child : child, shaderCallback : shaderCallback, blendMode : blendMode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderShaderMaskObjectBinding extends HT_ExternObject<RenderShaderMask> {
  RenderShaderMaskObjectBinding(RenderShaderMask value) : super(value);

  @override
  final typeid = HT_TypeId('RenderShaderMask');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'layer':
        return externObject.layer;
      case 'shaderCallback':
        return externObject.shaderCallback;
      case 'blendMode':
        return externObject.blendMode;
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'shaderCallback':
        externObject.shaderCallback = value;
        break;
      case 'blendMode':
        externObject.blendMode = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderBackdropFilterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderBackdropFilter':
        return ({child, filter}) => RenderBackdropFilterObjectBinding(RenderBackdropFilter(child : child, filter : filter));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderBackdropFilterObjectBinding extends HT_ExternObject<RenderBackdropFilter> {
  RenderBackdropFilterObjectBinding(RenderBackdropFilter value) : super(value);

  @override
  final typeid = HT_TypeId('RenderBackdropFilter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'layer':
        return externObject.layer;
      case 'filter':
        return externObject.filter;
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'filter':
        externObject.filter = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShapeBorderClipperClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ShapeBorderClipper':
        return ({shape, textDirection}) => ShapeBorderClipperObjectBinding(ShapeBorderClipper(shape : shape, textDirection : textDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShapeBorderClipperObjectBinding extends HT_ExternObject<ShapeBorderClipper> {
  ShapeBorderClipperObjectBinding(ShapeBorderClipper value) : super(value);

  @override
  final typeid = HT_TypeId('ShapeBorderClipper');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'shape':
        return externObject.shape;
      case 'textDirection':
        return externObject.textDirection;
      case 'getClip':
        return externObject.getClip;
      case 'shouldReclip':
        return externObject.shouldReclip;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderClipRectClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderClipRect':
        return ({child, clipper, clipBehavior = Clip.antiAlias}) => RenderClipRectObjectBinding(RenderClipRect(child : child, clipper : clipper, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderClipRectObjectBinding extends HT_ExternObject<RenderClipRect> {
  RenderClipRectObjectBinding(RenderClipRect value) : super(value);

  @override
  final typeid = HT_TypeId('RenderClipRect');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hitTest':
        return externObject.hitTest;
      case 'paint':
        return externObject.paint;
      case 'debugPaintSize':
        return externObject.debugPaintSize;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderClipRRectClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderClipRRect':
        return ({child, borderRadius = BorderRadius.zero, clipper, clipBehavior = Clip.antiAlias}) => RenderClipRRectObjectBinding(RenderClipRRect(child : child, borderRadius : borderRadius, clipper : clipper, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderClipRRectObjectBinding extends HT_ExternObject<RenderClipRRect> {
  RenderClipRRectObjectBinding(RenderClipRRect value) : super(value);

  @override
  final typeid = HT_TypeId('RenderClipRRect');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'borderRadius':
        return externObject.borderRadius;
      case 'hitTest':
        return externObject.hitTest;
      case 'paint':
        return externObject.paint;
      case 'debugPaintSize':
        return externObject.debugPaintSize;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'borderRadius':
        externObject.borderRadius = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderClipOvalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderClipOval':
        return ({child, clipper, clipBehavior = Clip.antiAlias}) => RenderClipOvalObjectBinding(RenderClipOval(child : child, clipper : clipper, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderClipOvalObjectBinding extends HT_ExternObject<RenderClipOval> {
  RenderClipOvalObjectBinding(RenderClipOval value) : super(value);

  @override
  final typeid = HT_TypeId('RenderClipOval');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hitTest':
        return externObject.hitTest;
      case 'paint':
        return externObject.paint;
      case 'debugPaintSize':
        return externObject.debugPaintSize;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderClipPathClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderClipPath':
        return ({child, clipper, clipBehavior = Clip.antiAlias}) => RenderClipPathObjectBinding(RenderClipPath(child : child, clipper : clipper, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderClipPathObjectBinding extends HT_ExternObject<RenderClipPath> {
  RenderClipPathObjectBinding(RenderClipPath value) : super(value);

  @override
  final typeid = HT_TypeId('RenderClipPath');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hitTest':
        return externObject.hitTest;
      case 'paint':
        return externObject.paint;
      case 'debugPaintSize':
        return externObject.debugPaintSize;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderPhysicalModelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderPhysicalModel':
        return ({child, shape = BoxShape.rectangle, clipBehavior = Clip.none, borderRadius, elevation = 0.0, color, shadowColor = const Color(0xFF000000)}) => RenderPhysicalModelObjectBinding(RenderPhysicalModel(child : child, shape : shape, clipBehavior : clipBehavior, borderRadius : borderRadius, elevation : elevation, color : color, shadowColor : shadowColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPhysicalModelObjectBinding extends HT_ExternObject<RenderPhysicalModel> {
  RenderPhysicalModelObjectBinding(RenderPhysicalModel value) : super(value);

  @override
  final typeid = HT_TypeId('RenderPhysicalModel');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'layer':
        return externObject.layer;
      case 'shape':
        return externObject.shape;
      case 'borderRadius':
        return externObject.borderRadius;
      case 'hitTest':
        return externObject.hitTest;
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
      case 'shape':
        externObject.shape = value;
        break;
      case 'borderRadius':
        externObject.borderRadius = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPhysicalShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderPhysicalShape':
        return ({child, clipper, clipBehavior = Clip.none, elevation = 0.0, color, shadowColor = const Color(0xFF000000)}) => RenderPhysicalShapeObjectBinding(RenderPhysicalShape(child : child, clipper : clipper, clipBehavior : clipBehavior, elevation : elevation, color : color, shadowColor : shadowColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPhysicalShapeObjectBinding extends HT_ExternObject<RenderPhysicalShape> {
  RenderPhysicalShapeObjectBinding(RenderPhysicalShape value) : super(value);

  @override
  final typeid = HT_TypeId('RenderPhysicalShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'layer':
        return externObject.layer;
      case 'hitTest':
        return externObject.hitTest;
      case 'paint':
        return externObject.paint;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderDecoratedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderDecoratedBox':
        return ({decoration, position = DecorationPosition.background, configuration = ImageConfiguration.empty, child}) => RenderDecoratedBoxObjectBinding(RenderDecoratedBox(decoration : decoration, position : position, configuration : configuration, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderDecoratedBoxObjectBinding extends HT_ExternObject<RenderDecoratedBox> {
  RenderDecoratedBoxObjectBinding(RenderDecoratedBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderDecoratedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decoration':
        return externObject.decoration;
      case 'position':
        return externObject.position;
      case 'configuration':
        return externObject.configuration;
      case 'detach':
        return externObject.detach;
      case 'hitTestSelf':
        return externObject.hitTestSelf;
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
      case 'decoration':
        externObject.decoration = value;
        break;
      case 'position':
        externObject.position = value;
        break;
      case 'configuration':
        externObject.configuration = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderTransformClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderTransform':
        return ({transform, origin, alignment, textDirection, transformHitTests = true, child}) => RenderTransformObjectBinding(RenderTransform(transform : transform, origin : origin, alignment : alignment, textDirection : textDirection, transformHitTests : transformHitTests, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderTransformObjectBinding extends HT_ExternObject<RenderTransform> {
  RenderTransformObjectBinding(RenderTransform value) : super(value);

  @override
  final typeid = HT_TypeId('RenderTransform');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformHitTests':
        return externObject.transformHitTests;
      case 'origin':
        return externObject.origin;
      case 'alignment':
        return externObject.alignment;
      case 'textDirection':
        return externObject.textDirection;
      case 'setIdentity':
        return externObject.setIdentity;
      case 'rotateX':
        return externObject.rotateX;
      case 'rotateY':
        return externObject.rotateY;
      case 'rotateZ':
        return externObject.rotateZ;
      case 'translate':
        return externObject.translate;
      case 'scale':
        return externObject.scale;
      case 'hitTest':
        return externObject.hitTest;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'paint':
        return externObject.paint;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'transformHitTests':
        externObject.transformHitTests = value;
        break;
      case 'origin':
        externObject.origin = value;
        break;
      case 'alignment':
        externObject.alignment = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'transform':
        externObject.transform = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFittedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderFittedBox':
        return ({fit = BoxFit.contain, alignment = Alignment.center, textDirection, child, clipBehavior = Clip.none}) => RenderFittedBoxObjectBinding(RenderFittedBox(fit : fit, alignment : alignment, textDirection : textDirection, child : child, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFittedBoxObjectBinding extends HT_ExternObject<RenderFittedBox> {
  RenderFittedBoxObjectBinding(RenderFittedBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderFittedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'fit':
        return externObject.fit;
      case 'alignment':
        return externObject.alignment;
      case 'textDirection':
        return externObject.textDirection;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'paint':
        return externObject.paint;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'fit':
        externObject.fit = value;
        break;
      case 'alignment':
        externObject.alignment = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFractionalTranslationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderFractionalTranslation':
        return ({translation, transformHitTests = true, child}) => RenderFractionalTranslationObjectBinding(RenderFractionalTranslation(translation : translation, transformHitTests : transformHitTests, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFractionalTranslationObjectBinding extends HT_ExternObject<RenderFractionalTranslation> {
  RenderFractionalTranslationObjectBinding(RenderFractionalTranslation value) : super(value);

  @override
  final typeid = HT_TypeId('RenderFractionalTranslation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformHitTests':
        return externObject.transformHitTests;
      case 'translation':
        return externObject.translation;
      case 'hitTest':
        return externObject.hitTest;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'paint':
        return externObject.paint;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'transformHitTests':
        externObject.transformHitTests = value;
        break;
      case 'translation':
        externObject.translation = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPointerListenerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderPointerListener':
        return ({onPointerDown, onPointerMove, onPointerUp, onPointerHover, onPointerCancel, onPointerSignal, behavior = HitTestBehavior.deferToChild, child}) => RenderPointerListenerObjectBinding(RenderPointerListener(onPointerDown : onPointerDown, onPointerMove : onPointerMove, onPointerUp : onPointerUp, onPointerHover : onPointerHover, onPointerCancel : onPointerCancel, onPointerSignal : onPointerSignal, behavior : behavior, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPointerListenerObjectBinding extends HT_ExternObject<RenderPointerListener> {
  RenderPointerListenerObjectBinding(RenderPointerListener value) : super(value);

  @override
  final typeid = HT_TypeId('RenderPointerListener');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onPointerDown':
        return externObject.onPointerDown;
      case 'onPointerMove':
        return externObject.onPointerMove;
      case 'onPointerUp':
        return externObject.onPointerUp;
      case 'onPointerHover':
        return externObject.onPointerHover;
      case 'onPointerCancel':
        return externObject.onPointerCancel;
      case 'onPointerSignal':
        return externObject.onPointerSignal;
      case 'computeSizeForNoChild':
        return externObject.computeSizeForNoChild;
      case 'handleEvent':
        return externObject.handleEvent;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'onPointerDown':
        externObject.onPointerDown = value;
        break;
      case 'onPointerMove':
        externObject.onPointerMove = value;
        break;
      case 'onPointerUp':
        externObject.onPointerUp = value;
        break;
      case 'onPointerHover':
        externObject.onPointerHover = value;
        break;
      case 'onPointerCancel':
        externObject.onPointerCancel = value;
        break;
      case 'onPointerSignal':
        externObject.onPointerSignal = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderMouseRegionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderMouseRegion':
        return ({onEnter, onHover, onExit, cursor = MouseCursor.defer, validForMouseTracker = true, opaque = true, child}) => RenderMouseRegionObjectBinding(RenderMouseRegion(onEnter : onEnter, onHover : onHover, onExit : onExit, cursor : cursor, validForMouseTracker : validForMouseTracker, opaque : opaque, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderMouseRegionObjectBinding extends HT_ExternObject<RenderMouseRegion> {
  RenderMouseRegionObjectBinding(RenderMouseRegion value) : super(value);

  @override
  final typeid = HT_TypeId('RenderMouseRegion');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onEnter':
        return externObject.onEnter;
      case 'onHover':
        return externObject.onHover;
      case 'onExit':
        return externObject.onExit;
      case 'opaque':
        return externObject.opaque;
      case 'cursor':
        return externObject.cursor;
      case 'validForMouseTracker':
        return externObject.validForMouseTracker;
      case 'hitTestSelf':
        return externObject.hitTestSelf;
      case 'hitTest':
        return externObject.hitTest;
      case 'handleEvent':
        return externObject.handleEvent;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'computeSizeForNoChild':
        return externObject.computeSizeForNoChild;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'onEnter':
        externObject.onEnter = value;
        break;
      case 'onHover':
        externObject.onHover = value;
        break;
      case 'onExit':
        externObject.onExit = value;
        break;
      case 'opaque':
        externObject.opaque = value;
        break;
      case 'cursor':
        externObject.cursor = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderRepaintBoundaryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderRepaintBoundary':
        return ({child}) => RenderRepaintBoundaryObjectBinding(RenderRepaintBoundary(child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderRepaintBoundaryObjectBinding extends HT_ExternObject<RenderRepaintBoundary> {
  RenderRepaintBoundaryObjectBinding(RenderRepaintBoundary value) : super(value);

  @override
  final typeid = HT_TypeId('RenderRepaintBoundary');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isRepaintBoundary':
        return externObject.isRepaintBoundary;
      case 'debugSymmetricPaintCount':
        return externObject.debugSymmetricPaintCount;
      case 'debugAsymmetricPaintCount':
        return externObject.debugAsymmetricPaintCount;
      case 'toImage':
        return externObject.toImage;
      case 'debugResetMetrics':
        return externObject.debugResetMetrics;
      case 'debugRegisterRepaintBoundaryPaint':
        return externObject.debugRegisterRepaintBoundaryPaint;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderIgnorePointerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderIgnorePointer':
        return ({child, ignoring = true, ignoringSemantics}) => RenderIgnorePointerObjectBinding(RenderIgnorePointer(child : child, ignoring : ignoring, ignoringSemantics : ignoringSemantics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderIgnorePointerObjectBinding extends HT_ExternObject<RenderIgnorePointer> {
  RenderIgnorePointerObjectBinding(RenderIgnorePointer value) : super(value);

  @override
  final typeid = HT_TypeId('RenderIgnorePointer');

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

class RenderOffstageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderOffstage':
        return ({offstage = true, child}) => RenderOffstageObjectBinding(RenderOffstage(offstage : offstage, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderOffstageObjectBinding extends HT_ExternObject<RenderOffstage> {
  RenderOffstageObjectBinding(RenderOffstage value) : super(value);

  @override
  final typeid = HT_TypeId('RenderOffstage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offstage':
        return externObject.offstage;
      case 'sizedByParent':
        return externObject.sizedByParent;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'computeDistanceToActualBaseline':
        return externObject.computeDistanceToActualBaseline;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performResize':
        return externObject.performResize;
      case 'performLayout':
        return externObject.performLayout;
      case 'hitTest':
        return externObject.hitTest;
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

class RenderAbsorbPointerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderAbsorbPointer':
        return ({child, absorbing = true, ignoringSemantics}) => RenderAbsorbPointerObjectBinding(RenderAbsorbPointer(child : child, absorbing : absorbing, ignoringSemantics : ignoringSemantics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAbsorbPointerObjectBinding extends HT_ExternObject<RenderAbsorbPointer> {
  RenderAbsorbPointerObjectBinding(RenderAbsorbPointer value) : super(value);

  @override
  final typeid = HT_TypeId('RenderAbsorbPointer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'absorbing':
        return externObject.absorbing;
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
      case 'absorbing':
        externObject.absorbing = value;
        break;
      case 'ignoringSemantics':
        externObject.ignoringSemantics = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderMetaDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderMetaData':
        return ({metaData, behavior = HitTestBehavior.deferToChild, child}) => RenderMetaDataObjectBinding(RenderMetaData(metaData : metaData, behavior : behavior, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderMetaDataObjectBinding extends HT_ExternObject<RenderMetaData> {
  RenderMetaDataObjectBinding(RenderMetaData value) : super(value);

  @override
  final typeid = HT_TypeId('RenderMetaData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'metaData':
        return externObject.metaData;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'metaData':
        externObject.metaData = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSemanticsGestureHandlerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSemanticsGestureHandler':
        return ({child, onTap, onLongPress, onHorizontalDragUpdate, onVerticalDragUpdate, scrollFactor = 0.8}) => RenderSemanticsGestureHandlerObjectBinding(RenderSemanticsGestureHandler(child : child, onTap : onTap, onLongPress : onLongPress, onHorizontalDragUpdate : onHorizontalDragUpdate, onVerticalDragUpdate : onVerticalDragUpdate, scrollFactor : scrollFactor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSemanticsGestureHandlerObjectBinding extends HT_ExternObject<RenderSemanticsGestureHandler> {
  RenderSemanticsGestureHandlerObjectBinding(RenderSemanticsGestureHandler value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSemanticsGestureHandler');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scrollFactor':
        return externObject.scrollFactor;
      case 'validActions':
        return externObject.validActions;
      case 'onTap':
        return externObject.onTap;
      case 'onLongPress':
        return externObject.onLongPress;
      case 'onHorizontalDragUpdate':
        return externObject.onHorizontalDragUpdate;
      case 'onVerticalDragUpdate':
        return externObject.onVerticalDragUpdate;
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'scrollFactor':
        externObject.scrollFactor = value;
        break;
      case 'validActions':
        externObject.validActions = value;
        break;
      case 'onTap':
        externObject.onTap = value;
        break;
      case 'onLongPress':
        externObject.onLongPress = value;
        break;
      case 'onHorizontalDragUpdate':
        externObject.onHorizontalDragUpdate = value;
        break;
      case 'onVerticalDragUpdate':
        externObject.onVerticalDragUpdate = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSemanticsAnnotationsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSemanticsAnnotations':
        return ({child, container = false, explicitChildNodes = false, excludeSemantics = false, enabled, checked, toggled, selected, button, slider, link, header, textField, readOnly, focusable, focused, inMutuallyExclusiveGroup, obscured, multiline, scopesRoute, namesRoute, hidden, image, liveRegion, maxValueLength, currentValueLength, label, value, increasedValue, decreasedValue, hint, hintOverrides, textDirection, sortKey, tagForChildren, onTap, onDismiss, onLongPress, onScrollLeft, onScrollRight, onScrollUp, onScrollDown, onIncrease, onDecrease, onCopy, onCut, onPaste, onMoveCursorForwardByCharacter, onMoveCursorBackwardByCharacter, onMoveCursorForwardByWord, onMoveCursorBackwardByWord, onSetSelection, onDidGainAccessibilityFocus, onDidLoseAccessibilityFocus, customSemanticsActions}) => RenderSemanticsAnnotationsObjectBinding(RenderSemanticsAnnotations(child : child, container : container, explicitChildNodes : explicitChildNodes, excludeSemantics : excludeSemantics, enabled : enabled, checked : checked, toggled : toggled, selected : selected, button : button, slider : slider, link : link, header : header, textField : textField, readOnly : readOnly, focusable : focusable, focused : focused, inMutuallyExclusiveGroup : inMutuallyExclusiveGroup, obscured : obscured, multiline : multiline, scopesRoute : scopesRoute, namesRoute : namesRoute, hidden : hidden, image : image, liveRegion : liveRegion, maxValueLength : maxValueLength, currentValueLength : currentValueLength, label : label, value : value, increasedValue : increasedValue, decreasedValue : decreasedValue, hint : hint, hintOverrides : hintOverrides, textDirection : textDirection, sortKey : sortKey, tagForChildren : tagForChildren, onTap : onTap, onDismiss : onDismiss, onLongPress : onLongPress, onScrollLeft : onScrollLeft, onScrollRight : onScrollRight, onScrollUp : onScrollUp, onScrollDown : onScrollDown, onIncrease : onIncrease, onDecrease : onDecrease, onCopy : onCopy, onCut : onCut, onPaste : onPaste, onMoveCursorForwardByCharacter : onMoveCursorForwardByCharacter, onMoveCursorBackwardByCharacter : onMoveCursorBackwardByCharacter, onMoveCursorForwardByWord : onMoveCursorForwardByWord, onMoveCursorBackwardByWord : onMoveCursorBackwardByWord, onSetSelection : onSetSelection, onDidGainAccessibilityFocus : onDidGainAccessibilityFocus, onDidLoseAccessibilityFocus : onDidLoseAccessibilityFocus, customSemanticsActions : customSemanticsActions));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSemanticsAnnotationsObjectBinding extends HT_ExternObject<RenderSemanticsAnnotations> {
  RenderSemanticsAnnotationsObjectBinding(RenderSemanticsAnnotations value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSemanticsAnnotations');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'container':
        return externObject.container;
      case 'explicitChildNodes':
        return externObject.explicitChildNodes;
      case 'excludeSemantics':
        return externObject.excludeSemantics;
      case 'checked':
        return externObject.checked;
      case 'enabled':
        return externObject.enabled;
      case 'selected':
        return externObject.selected;
      case 'button':
        return externObject.button;
      case 'slider':
        return externObject.slider;
      case 'link':
        return externObject.link;
      case 'header':
        return externObject.header;
      case 'textField':
        return externObject.textField;
      case 'readOnly':
        return externObject.readOnly;
      case 'focusable':
        return externObject.focusable;
      case 'focused':
        return externObject.focused;
      case 'inMutuallyExclusiveGroup':
        return externObject.inMutuallyExclusiveGroup;
      case 'obscured':
        return externObject.obscured;
      case 'multiline':
        return externObject.multiline;
      case 'scopesRoute':
        return externObject.scopesRoute;
      case 'namesRoute':
        return externObject.namesRoute;
      case 'hidden':
        return externObject.hidden;
      case 'image':
        return externObject.image;
      case 'liveRegion':
        return externObject.liveRegion;
      case 'maxValueLength':
        return externObject.maxValueLength;
      case 'currentValueLength':
        return externObject.currentValueLength;
      case 'toggled':
        return externObject.toggled;
      case 'label':
        return externObject.label;
      case 'value':
        return externObject.value;
      case 'increasedValue':
        return externObject.increasedValue;
      case 'decreasedValue':
        return externObject.decreasedValue;
      case 'hint':
        return externObject.hint;
      case 'hintOverrides':
        return externObject.hintOverrides;
      case 'textDirection':
        return externObject.textDirection;
      case 'sortKey':
        return externObject.sortKey;
      case 'tagForChildren':
        return externObject.tagForChildren;
      case 'onTap':
        return externObject.onTap;
      case 'onDismiss':
        return externObject.onDismiss;
      case 'onLongPress':
        return externObject.onLongPress;
      case 'onScrollLeft':
        return externObject.onScrollLeft;
      case 'onScrollRight':
        return externObject.onScrollRight;
      case 'onScrollUp':
        return externObject.onScrollUp;
      case 'onScrollDown':
        return externObject.onScrollDown;
      case 'onIncrease':
        return externObject.onIncrease;
      case 'onDecrease':
        return externObject.onDecrease;
      case 'onCopy':
        return externObject.onCopy;
      case 'onCut':
        return externObject.onCut;
      case 'onPaste':
        return externObject.onPaste;
      case 'onMoveCursorForwardByCharacter':
        return externObject.onMoveCursorForwardByCharacter;
      case 'onMoveCursorBackwardByCharacter':
        return externObject.onMoveCursorBackwardByCharacter;
      case 'onMoveCursorForwardByWord':
        return externObject.onMoveCursorForwardByWord;
      case 'onMoveCursorBackwardByWord':
        return externObject.onMoveCursorBackwardByWord;
      case 'onSetSelection':
        return externObject.onSetSelection;
      case 'onDidGainAccessibilityFocus':
        return externObject.onDidGainAccessibilityFocus;
      case 'onDidLoseAccessibilityFocus':
        return externObject.onDidLoseAccessibilityFocus;
      case 'customSemanticsActions':
        return externObject.customSemanticsActions;
      case 'visitChildrenForSemantics':
        return externObject.visitChildrenForSemantics;
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'container':
        externObject.container = value;
        break;
      case 'explicitChildNodes':
        externObject.explicitChildNodes = value;
        break;
      case 'excludeSemantics':
        externObject.excludeSemantics = value;
        break;
      case 'checked':
        externObject.checked = value;
        break;
      case 'enabled':
        externObject.enabled = value;
        break;
      case 'selected':
        externObject.selected = value;
        break;
      case 'button':
        externObject.button = value;
        break;
      case 'slider':
        externObject.slider = value;
        break;
      case 'link':
        externObject.link = value;
        break;
      case 'header':
        externObject.header = value;
        break;
      case 'textField':
        externObject.textField = value;
        break;
      case 'readOnly':
        externObject.readOnly = value;
        break;
      case 'focusable':
        externObject.focusable = value;
        break;
      case 'focused':
        externObject.focused = value;
        break;
      case 'inMutuallyExclusiveGroup':
        externObject.inMutuallyExclusiveGroup = value;
        break;
      case 'obscured':
        externObject.obscured = value;
        break;
      case 'multiline':
        externObject.multiline = value;
        break;
      case 'scopesRoute':
        externObject.scopesRoute = value;
        break;
      case 'namesRoute':
        externObject.namesRoute = value;
        break;
      case 'hidden':
        externObject.hidden = value;
        break;
      case 'image':
        externObject.image = value;
        break;
      case 'liveRegion':
        externObject.liveRegion = value;
        break;
      case 'maxValueLength':
        externObject.maxValueLength = value;
        break;
      case 'currentValueLength':
        externObject.currentValueLength = value;
        break;
      case 'toggled':
        externObject.toggled = value;
        break;
      case 'label':
        externObject.label = value;
        break;
      case 'value':
        externObject.value = value;
        break;
      case 'increasedValue':
        externObject.increasedValue = value;
        break;
      case 'decreasedValue':
        externObject.decreasedValue = value;
        break;
      case 'hint':
        externObject.hint = value;
        break;
      case 'hintOverrides':
        externObject.hintOverrides = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'sortKey':
        externObject.sortKey = value;
        break;
      case 'tagForChildren':
        externObject.tagForChildren = value;
        break;
      case 'onTap':
        externObject.onTap = value;
        break;
      case 'onDismiss':
        externObject.onDismiss = value;
        break;
      case 'onLongPress':
        externObject.onLongPress = value;
        break;
      case 'onScrollLeft':
        externObject.onScrollLeft = value;
        break;
      case 'onScrollRight':
        externObject.onScrollRight = value;
        break;
      case 'onScrollUp':
        externObject.onScrollUp = value;
        break;
      case 'onScrollDown':
        externObject.onScrollDown = value;
        break;
      case 'onIncrease':
        externObject.onIncrease = value;
        break;
      case 'onDecrease':
        externObject.onDecrease = value;
        break;
      case 'onCopy':
        externObject.onCopy = value;
        break;
      case 'onCut':
        externObject.onCut = value;
        break;
      case 'onPaste':
        externObject.onPaste = value;
        break;
      case 'onMoveCursorForwardByCharacter':
        externObject.onMoveCursorForwardByCharacter = value;
        break;
      case 'onMoveCursorBackwardByCharacter':
        externObject.onMoveCursorBackwardByCharacter = value;
        break;
      case 'onMoveCursorForwardByWord':
        externObject.onMoveCursorForwardByWord = value;
        break;
      case 'onMoveCursorBackwardByWord':
        externObject.onMoveCursorBackwardByWord = value;
        break;
      case 'onSetSelection':
        externObject.onSetSelection = value;
        break;
      case 'onDidGainAccessibilityFocus':
        externObject.onDidGainAccessibilityFocus = value;
        break;
      case 'onDidLoseAccessibilityFocus':
        externObject.onDidLoseAccessibilityFocus = value;
        break;
      case 'customSemanticsActions':
        externObject.customSemanticsActions = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderBlockSemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderBlockSemantics':
        return ({child, blocking = true}) => RenderBlockSemanticsObjectBinding(RenderBlockSemantics(child : child, blocking : blocking));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderBlockSemanticsObjectBinding extends HT_ExternObject<RenderBlockSemantics> {
  RenderBlockSemanticsObjectBinding(RenderBlockSemantics value) : super(value);

  @override
  final typeid = HT_TypeId('RenderBlockSemantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'blocking':
        return externObject.blocking;
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'blocking':
        externObject.blocking = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderMergeSemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderMergeSemantics':
        return ({child}) => RenderMergeSemanticsObjectBinding(RenderMergeSemantics(child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderMergeSemanticsObjectBinding extends HT_ExternObject<RenderMergeSemantics> {
  RenderMergeSemanticsObjectBinding(RenderMergeSemantics value) : super(value);

  @override
  final typeid = HT_TypeId('RenderMergeSemantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderExcludeSemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderExcludeSemantics':
        return ({child, excluding = true}) => RenderExcludeSemanticsObjectBinding(RenderExcludeSemantics(child : child, excluding : excluding));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderExcludeSemanticsObjectBinding extends HT_ExternObject<RenderExcludeSemantics> {
  RenderExcludeSemanticsObjectBinding(RenderExcludeSemantics value) : super(value);

  @override
  final typeid = HT_TypeId('RenderExcludeSemantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'excluding':
        return externObject.excluding;
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
      case 'excluding':
        externObject.excluding = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderIndexedSemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderIndexedSemantics':
        return ({child, index}) => RenderIndexedSemanticsObjectBinding(RenderIndexedSemantics(child : child, index : index));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderIndexedSemanticsObjectBinding extends HT_ExternObject<RenderIndexedSemantics> {
  RenderIndexedSemanticsObjectBinding(RenderIndexedSemantics value) : super(value);

  @override
  final typeid = HT_TypeId('RenderIndexedSemantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'index':
        return externObject.index;
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'index':
        externObject.index = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderLeaderLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderLeaderLayer':
        return ({link, child}) => RenderLeaderLayerObjectBinding(RenderLeaderLayer(link : link, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderLeaderLayerObjectBinding extends HT_ExternObject<RenderLeaderLayer> {
  RenderLeaderLayerObjectBinding(RenderLeaderLayer value) : super(value);

  @override
  final typeid = HT_TypeId('RenderLeaderLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'link':
        return externObject.link;
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'performLayout':
        return externObject.performLayout;
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
      case 'link':
        externObject.link = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFollowerLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderFollowerLayer':
        return ({link, showWhenUnlinked = true, offset = Offset.zero, leaderAnchor = Alignment.topLeft, followerAnchor = Alignment.topLeft, child}) => RenderFollowerLayerObjectBinding(RenderFollowerLayer(link : link, showWhenUnlinked : showWhenUnlinked, offset : offset, leaderAnchor : leaderAnchor, followerAnchor : followerAnchor, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFollowerLayerObjectBinding extends HT_ExternObject<RenderFollowerLayer> {
  RenderFollowerLayerObjectBinding(RenderFollowerLayer value) : super(value);

  @override
  final typeid = HT_TypeId('RenderFollowerLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'link':
        return externObject.link;
      case 'showWhenUnlinked':
        return externObject.showWhenUnlinked;
      case 'offset':
        return externObject.offset;
      case 'leaderAnchor':
        return externObject.leaderAnchor;
      case 'followerAnchor':
        return externObject.followerAnchor;
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'layer':
        return externObject.layer;
      case 'detach':
        return externObject.detach;
      case 'getCurrentTransform':
        return externObject.getCurrentTransform;
      case 'hitTest':
        return externObject.hitTest;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'paint':
        return externObject.paint;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'link':
        externObject.link = value;
        break;
      case 'showWhenUnlinked':
        externObject.showWhenUnlinked = value;
        break;
      case 'offset':
        externObject.offset = value;
        break;
      case 'leaderAnchor':
        externObject.leaderAnchor = value;
        break;
      case 'followerAnchor':
        externObject.followerAnchor = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAnnotatedRegionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderAnnotatedRegion':
        return ({value, sized, child}) => RenderAnnotatedRegionObjectBinding(RenderAnnotatedRegion<Object>(value : value, sized : sized, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderAnnotatedRegionObjectBinding extends HT_ExternObject<RenderAnnotatedRegion> {
  RenderAnnotatedRegionObjectBinding(RenderAnnotatedRegion value) : super(value);

  @override
  final typeid = HT_TypeId('RenderAnnotatedRegion');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'value':
        return externObject.value;
      case 'sized':
        return externObject.sized;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'value':
        externObject.value = value;
        break;
      case 'sized':
        externObject.sized = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

