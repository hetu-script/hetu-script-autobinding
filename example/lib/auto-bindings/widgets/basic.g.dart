import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


class DirectionalityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Directionality':
        return ({key, textDirection, child}) => DirectionalityObjectBinding(Directionality(key : key, textDirection : textDirection, child : child));
      case 'of':
        return (context) => Directionality.of(context);
      case 'maybeOf':
        return (context) => Directionality.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DirectionalityObjectBinding extends HT_ExternObject<Directionality> {
  DirectionalityObjectBinding(Directionality value) : super(value);

  @override
  final typeid = HT_TypeId('Directionality');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textDirection':
        return externObject.textDirection;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class OpacityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Opacity':
        return ({key, opacity, alwaysIncludeSemantics = false, child}) => OpacityObjectBinding(Opacity(key : key, opacity : opacity, alwaysIncludeSemantics : alwaysIncludeSemantics, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OpacityObjectBinding extends HT_ExternObject<Opacity> {
  OpacityObjectBinding(Opacity value) : super(value);

  @override
  final typeid = HT_TypeId('Opacity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'opacity':
        return externObject.opacity;
      case 'alwaysIncludeSemantics':
        return externObject.alwaysIncludeSemantics;
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

class ShaderMaskClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ShaderMask':
        return ({key, shaderCallback, blendMode = BlendMode.modulate, child}) => ShaderMaskObjectBinding(ShaderMask(key : key, shaderCallback : shaderCallback, blendMode : blendMode, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShaderMaskObjectBinding extends HT_ExternObject<ShaderMask> {
  ShaderMaskObjectBinding(ShaderMask value) : super(value);

  @override
  final typeid = HT_TypeId('ShaderMask');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'shaderCallback':
        return externObject.shaderCallback;
      case 'blendMode':
        return externObject.blendMode;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BackdropFilterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BackdropFilter':
        return ({key, filter, child}) => BackdropFilterObjectBinding(BackdropFilter(key : key, filter : filter, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BackdropFilterObjectBinding extends HT_ExternObject<BackdropFilter> {
  BackdropFilterObjectBinding(BackdropFilter value) : super(value);

  @override
  final typeid = HT_TypeId('BackdropFilter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'filter':
        return externObject.filter;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CustomPaintClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CustomPaint':
        return ({key, painter, foregroundPainter, size = Size.zero, isComplex = false, willChange = false, child}) => CustomPaintObjectBinding(CustomPaint(key : key, painter : painter, foregroundPainter : foregroundPainter, size : size, isComplex : isComplex, willChange : willChange, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CustomPaintObjectBinding extends HT_ExternObject<CustomPaint> {
  CustomPaintObjectBinding(CustomPaint value) : super(value);

  @override
  final typeid = HT_TypeId('CustomPaint');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'painter':
        return externObject.painter;
      case 'foregroundPainter':
        return externObject.foregroundPainter;
      case 'size':
        return externObject.size;
      case 'isComplex':
        return externObject.isComplex;
      case 'willChange':
        return externObject.willChange;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'didUnmountRenderObject':
        return externObject.didUnmountRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ClipRectClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClipRect':
        return ({key, clipper, clipBehavior = Clip.hardEdge, child}) => ClipRectObjectBinding(ClipRect(key : key, clipper : clipper, clipBehavior : clipBehavior, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipRectObjectBinding extends HT_ExternObject<ClipRect> {
  ClipRectObjectBinding(ClipRect value) : super(value);

  @override
  final typeid = HT_TypeId('ClipRect');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipper':
        return externObject.clipper;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'didUnmountRenderObject':
        return externObject.didUnmountRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ClipRRectClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClipRRect':
        return ({key, borderRadius = BorderRadius.zero, clipper, clipBehavior = Clip.antiAlias, child}) => ClipRRectObjectBinding(ClipRRect(key : key, borderRadius : borderRadius, clipper : clipper, clipBehavior : clipBehavior, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipRRectObjectBinding extends HT_ExternObject<ClipRRect> {
  ClipRRectObjectBinding(ClipRRect value) : super(value);

  @override
  final typeid = HT_TypeId('ClipRRect');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'borderRadius':
        return externObject.borderRadius;
      case 'clipper':
        return externObject.clipper;
      case 'clipBehavior':
        return externObject.clipBehavior;
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

class ClipOvalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClipOval':
        return ({key, clipper, clipBehavior = Clip.antiAlias, child}) => ClipOvalObjectBinding(ClipOval(key : key, clipper : clipper, clipBehavior : clipBehavior, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipOvalObjectBinding extends HT_ExternObject<ClipOval> {
  ClipOvalObjectBinding(ClipOval value) : super(value);

  @override
  final typeid = HT_TypeId('ClipOval');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipper':
        return externObject.clipper;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'didUnmountRenderObject':
        return externObject.didUnmountRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ClipPathClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClipPath':
        return ({key, clipper, clipBehavior = Clip.antiAlias, child}) => ClipPathObjectBinding(ClipPath(key : key, clipper : clipper, clipBehavior : clipBehavior, child : child));
      case 'shape':
        return ({key, shape, clipBehavior = Clip.antiAlias, child}) => ClipPath.shape(key : key, shape : shape, clipBehavior : clipBehavior, child : child);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipPathObjectBinding extends HT_ExternObject<ClipPath> {
  ClipPathObjectBinding(ClipPath value) : super(value);

  @override
  final typeid = HT_TypeId('ClipPath');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipper':
        return externObject.clipper;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'didUnmountRenderObject':
        return externObject.didUnmountRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PhysicalModelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PhysicalModel':
        return ({key, shape = BoxShape.rectangle, clipBehavior = Clip.none, borderRadius, elevation = 0.0, color, shadowColor = const Color(0xFF000000), child}) => PhysicalModelObjectBinding(PhysicalModel(key : key, shape : shape, clipBehavior : clipBehavior, borderRadius : borderRadius, elevation : elevation, color : color, shadowColor : shadowColor, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PhysicalModelObjectBinding extends HT_ExternObject<PhysicalModel> {
  PhysicalModelObjectBinding(PhysicalModel value) : super(value);

  @override
  final typeid = HT_TypeId('PhysicalModel');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'borderRadius':
        return externObject.borderRadius;
      case 'elevation':
        return externObject.elevation;
      case 'color':
        return externObject.color;
      case 'shadowColor':
        return externObject.shadowColor;
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

class PhysicalShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PhysicalShape':
        return ({key, clipper, clipBehavior = Clip.none, elevation = 0.0, color, shadowColor = const Color(0xFF000000), child}) => PhysicalShapeObjectBinding(PhysicalShape(key : key, clipper : clipper, clipBehavior : clipBehavior, elevation : elevation, color : color, shadowColor : shadowColor, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PhysicalShapeObjectBinding extends HT_ExternObject<PhysicalShape> {
  PhysicalShapeObjectBinding(PhysicalShape value) : super(value);

  @override
  final typeid = HT_TypeId('PhysicalShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipper':
        return externObject.clipper;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'elevation':
        return externObject.elevation;
      case 'color':
        return externObject.color;
      case 'shadowColor':
        return externObject.shadowColor;
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

class TransformClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Transform':
        return ({key, transform, origin, alignment, transformHitTests = true, child}) => TransformObjectBinding(Transform(key : key, transform : transform, origin : origin, alignment : alignment, transformHitTests : transformHitTests, child : child));
      case 'Transform.rotate':
        return ({key, angle, origin, alignment = Alignment.center, transformHitTests = true, child}) => TransformObjectBinding(Transform.rotate(key : key, angle : angle, origin : origin, alignment : alignment, transformHitTests : transformHitTests, child : child));
      case 'Transform.translate':
        return ({key, offset, transformHitTests = true, child}) => TransformObjectBinding(Transform.translate(key : key, offset : offset, transformHitTests : transformHitTests, child : child));
      case 'Transform.scale':
        return ({key, scale, origin, alignment = Alignment.center, transformHitTests = true, child}) => TransformObjectBinding(Transform.scale(key : key, scale : scale, origin : origin, alignment : alignment, transformHitTests : transformHitTests, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TransformObjectBinding extends HT_ExternObject<Transform> {
  TransformObjectBinding(Transform value) : super(value);

  @override
  final typeid = HT_TypeId('Transform');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transform':
        return externObject.transform;
      case 'origin':
        return externObject.origin;
      case 'alignment':
        return externObject.alignment;
      case 'transformHitTests':
        return externObject.transformHitTests;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CompositedTransformTargetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CompositedTransformTarget':
        return ({key, link, child}) => CompositedTransformTargetObjectBinding(CompositedTransformTarget(key : key, link : link, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CompositedTransformTargetObjectBinding extends HT_ExternObject<CompositedTransformTarget> {
  CompositedTransformTargetObjectBinding(CompositedTransformTarget value) : super(value);

  @override
  final typeid = HT_TypeId('CompositedTransformTarget');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'link':
        return externObject.link;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CompositedTransformFollowerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CompositedTransformFollower':
        return ({key, link, showWhenUnlinked = true, offset = Offset.zero, targetAnchor = Alignment.topLeft, followerAnchor = Alignment.topLeft, child}) => CompositedTransformFollowerObjectBinding(CompositedTransformFollower(key : key, link : link, showWhenUnlinked : showWhenUnlinked, offset : offset, targetAnchor : targetAnchor, followerAnchor : followerAnchor, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CompositedTransformFollowerObjectBinding extends HT_ExternObject<CompositedTransformFollower> {
  CompositedTransformFollowerObjectBinding(CompositedTransformFollower value) : super(value);

  @override
  final typeid = HT_TypeId('CompositedTransformFollower');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'link':
        return externObject.link;
      case 'showWhenUnlinked':
        return externObject.showWhenUnlinked;
      case 'targetAnchor':
        return externObject.targetAnchor;
      case 'followerAnchor':
        return externObject.followerAnchor;
      case 'offset':
        return externObject.offset;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FittedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FittedBox':
        return ({key, fit = BoxFit.contain, alignment = Alignment.center, clipBehavior = Clip.none, child}) => FittedBoxObjectBinding(FittedBox(key : key, fit : fit, alignment : alignment, clipBehavior : clipBehavior, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FittedBoxObjectBinding extends HT_ExternObject<FittedBox> {
  FittedBoxObjectBinding(FittedBox value) : super(value);

  @override
  final typeid = HT_TypeId('FittedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'fit':
        return externObject.fit;
      case 'alignment':
        return externObject.alignment;
      case 'clipBehavior':
        return externObject.clipBehavior;
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

class FractionalTranslationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FractionalTranslation':
        return ({key, translation, transformHitTests = true, child}) => FractionalTranslationObjectBinding(FractionalTranslation(key : key, translation : translation, transformHitTests : transformHitTests, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FractionalTranslationObjectBinding extends HT_ExternObject<FractionalTranslation> {
  FractionalTranslationObjectBinding(FractionalTranslation value) : super(value);

  @override
  final typeid = HT_TypeId('FractionalTranslation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'translation':
        return externObject.translation;
      case 'transformHitTests':
        return externObject.transformHitTests;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RotatedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RotatedBox':
        return ({key, quarterTurns, child}) => RotatedBoxObjectBinding(RotatedBox(key : key, quarterTurns : quarterTurns, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RotatedBoxObjectBinding extends HT_ExternObject<RotatedBox> {
  RotatedBoxObjectBinding(RotatedBox value) : super(value);

  @override
  final typeid = HT_TypeId('RotatedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'quarterTurns':
        return externObject.quarterTurns;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PaddingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Padding':
        return ({key, padding, child}) => PaddingObjectBinding(Padding(key : key, padding : padding, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PaddingObjectBinding extends HT_ExternObject<Padding> {
  PaddingObjectBinding(Padding value) : super(value);

  @override
  final typeid = HT_TypeId('Padding');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'padding':
        return externObject.padding;
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

class AlignClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Align':
        return ({key, alignment = Alignment.center, widthFactor, heightFactor, child}) => AlignObjectBinding(Align(key : key, alignment : alignment, widthFactor : widthFactor, heightFactor : heightFactor, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AlignObjectBinding extends HT_ExternObject<Align> {
  AlignObjectBinding(Align value) : super(value);

  @override
  final typeid = HT_TypeId('Align');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'widthFactor':
        return externObject.widthFactor;
      case 'heightFactor':
        return externObject.heightFactor;
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

class CenterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Center':
        return ({key, widthFactor, heightFactor, child}) => CenterObjectBinding(Center(key : key, widthFactor : widthFactor, heightFactor : heightFactor, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CenterObjectBinding extends HT_ExternObject<Center> {
  CenterObjectBinding(Center value) : super(value);

  @override
  final typeid = HT_TypeId('Center');


}

class CustomSingleChildLayoutClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CustomSingleChildLayout':
        return ({key, delegate, child}) => CustomSingleChildLayoutObjectBinding(CustomSingleChildLayout(key : key, delegate : delegate, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CustomSingleChildLayoutObjectBinding extends HT_ExternObject<CustomSingleChildLayout> {
  CustomSingleChildLayoutObjectBinding(CustomSingleChildLayout value) : super(value);

  @override
  final typeid = HT_TypeId('CustomSingleChildLayout');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'delegate':
        return externObject.delegate;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LayoutIdClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LayoutId':
        return ({key, id, child}) => LayoutIdObjectBinding(LayoutId(key : key, id : id, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LayoutIdObjectBinding extends HT_ExternObject<LayoutId> {
  LayoutIdObjectBinding(LayoutId value) : super(value);

  @override
  final typeid = HT_TypeId('LayoutId');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'id':
        return externObject.id;
      case 'debugTypicalAncestorWidgetClass':
        return externObject.debugTypicalAncestorWidgetClass;
      case 'applyParentData':
        return externObject.applyParentData;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CustomMultiChildLayoutClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CustomMultiChildLayout':
        return ({key, delegate, children = const <Widget>[]}) => CustomMultiChildLayoutObjectBinding(CustomMultiChildLayout(key : key, delegate : delegate, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CustomMultiChildLayoutObjectBinding extends HT_ExternObject<CustomMultiChildLayout> {
  CustomMultiChildLayoutObjectBinding(CustomMultiChildLayout value) : super(value);

  @override
  final typeid = HT_TypeId('CustomMultiChildLayout');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'delegate':
        return externObject.delegate;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SizedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SizedBox':
        return ({key, width, height, child}) => SizedBoxObjectBinding(SizedBox(key : key, width : width, height : height, child : child));
      case 'SizedBox.expand':
        return ({key, child}) => SizedBoxObjectBinding(SizedBox.expand(key : key, child : child));
      case 'SizedBox.shrink':
        return ({key, child}) => SizedBoxObjectBinding(SizedBox.shrink(key : key, child : child));
      case 'SizedBox.fromSize':
        return ({key, child, size}) => SizedBoxObjectBinding(SizedBox.fromSize(key : key, child : child, size : size));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SizedBoxObjectBinding extends HT_ExternObject<SizedBox> {
  SizedBoxObjectBinding(SizedBox value) : super(value);

  @override
  final typeid = HT_TypeId('SizedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'toStringShort':
        return externObject.toStringShort;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ConstrainedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ConstrainedBox':
        return ({key, constraints, child}) => ConstrainedBoxObjectBinding(ConstrainedBox(key : key, constraints : constraints, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ConstrainedBoxObjectBinding extends HT_ExternObject<ConstrainedBox> {
  ConstrainedBoxObjectBinding(ConstrainedBox value) : super(value);

  @override
  final typeid = HT_TypeId('ConstrainedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'constraints':
        return externObject.constraints;
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

class UnconstrainedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'UnconstrainedBox':
        return ({key, child, textDirection, alignment = Alignment.center, constrainedAxis, clipBehavior = Clip.none}) => UnconstrainedBoxObjectBinding(UnconstrainedBox(key : key, child : child, textDirection : textDirection, alignment : alignment, constrainedAxis : constrainedAxis, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class UnconstrainedBoxObjectBinding extends HT_ExternObject<UnconstrainedBox> {
  UnconstrainedBoxObjectBinding(UnconstrainedBox value) : super(value);

  @override
  final typeid = HT_TypeId('UnconstrainedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textDirection':
        return externObject.textDirection;
      case 'alignment':
        return externObject.alignment;
      case 'constrainedAxis':
        return externObject.constrainedAxis;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FractionallySizedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FractionallySizedBox':
        return ({key, alignment = Alignment.center, widthFactor, heightFactor, child}) => FractionallySizedBoxObjectBinding(FractionallySizedBox(key : key, alignment : alignment, widthFactor : widthFactor, heightFactor : heightFactor, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FractionallySizedBoxObjectBinding extends HT_ExternObject<FractionallySizedBox> {
  FractionallySizedBoxObjectBinding(FractionallySizedBox value) : super(value);

  @override
  final typeid = HT_TypeId('FractionallySizedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widthFactor':
        return externObject.widthFactor;
      case 'heightFactor':
        return externObject.heightFactor;
      case 'alignment':
        return externObject.alignment;
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

class LimitedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LimitedBox':
        return ({key, maxWidth = double.infinity, maxHeight = double.infinity, child}) => LimitedBoxObjectBinding(LimitedBox(key : key, maxWidth : maxWidth, maxHeight : maxHeight, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LimitedBoxObjectBinding extends HT_ExternObject<LimitedBox> {
  LimitedBoxObjectBinding(LimitedBox value) : super(value);

  @override
  final typeid = HT_TypeId('LimitedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'maxWidth':
        return externObject.maxWidth;
      case 'maxHeight':
        return externObject.maxHeight;
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

class OverflowBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OverflowBox':
        return ({key, alignment = Alignment.center, minWidth, maxWidth, minHeight, maxHeight, child}) => OverflowBoxObjectBinding(OverflowBox(key : key, alignment : alignment, minWidth : minWidth, maxWidth : maxWidth, minHeight : minHeight, maxHeight : maxHeight, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverflowBoxObjectBinding extends HT_ExternObject<OverflowBox> {
  OverflowBoxObjectBinding(OverflowBox value) : super(value);

  @override
  final typeid = HT_TypeId('OverflowBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'minWidth':
        return externObject.minWidth;
      case 'maxWidth':
        return externObject.maxWidth;
      case 'minHeight':
        return externObject.minHeight;
      case 'maxHeight':
        return externObject.maxHeight;
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

class SizedOverflowBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SizedOverflowBox':
        return ({key, size, alignment = Alignment.center, child}) => SizedOverflowBoxObjectBinding(SizedOverflowBox(key : key, size : size, alignment : alignment, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SizedOverflowBoxObjectBinding extends HT_ExternObject<SizedOverflowBox> {
  SizedOverflowBoxObjectBinding(SizedOverflowBox value) : super(value);

  @override
  final typeid = HT_TypeId('SizedOverflowBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'size':
        return externObject.size;
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

class OffstageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Offstage':
        return ({key, offstage = true, child}) => OffstageObjectBinding(Offstage(key : key, offstage : offstage, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OffstageObjectBinding extends HT_ExternObject<Offstage> {
  OffstageObjectBinding(Offstage value) : super(value);

  @override
  final typeid = HT_TypeId('Offstage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offstage':
        return externObject.offstage;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'createElement':
        return externObject.createElement;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AspectRatioClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AspectRatio':
        return ({key, aspectRatio, child}) => AspectRatioObjectBinding(AspectRatio(key : key, aspectRatio : aspectRatio, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AspectRatioObjectBinding extends HT_ExternObject<AspectRatio> {
  AspectRatioObjectBinding(AspectRatio value) : super(value);

  @override
  final typeid = HT_TypeId('AspectRatio');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'aspectRatio':
        return externObject.aspectRatio;
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

class IntrinsicWidthClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IntrinsicWidth':
        return ({key, stepWidth, stepHeight, child}) => IntrinsicWidthObjectBinding(IntrinsicWidth(key : key, stepWidth : stepWidth, stepHeight : stepHeight, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IntrinsicWidthObjectBinding extends HT_ExternObject<IntrinsicWidth> {
  IntrinsicWidthObjectBinding(IntrinsicWidth value) : super(value);

  @override
  final typeid = HT_TypeId('IntrinsicWidth');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'stepWidth':
        return externObject.stepWidth;
      case 'stepHeight':
        return externObject.stepHeight;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class IntrinsicHeightClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IntrinsicHeight':
        return ({key, child}) => IntrinsicHeightObjectBinding(IntrinsicHeight(key : key, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IntrinsicHeightObjectBinding extends HT_ExternObject<IntrinsicHeight> {
  IntrinsicHeightObjectBinding(IntrinsicHeight value) : super(value);

  @override
  final typeid = HT_TypeId('IntrinsicHeight');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createRenderObject':
        return externObject.createRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BaselineClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Baseline':
        return ({key, baseline, baselineType, child}) => BaselineObjectBinding(Baseline(key : key, baseline : baseline, baselineType : baselineType, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BaselineObjectBinding extends HT_ExternObject<Baseline> {
  BaselineObjectBinding(Baseline value) : super(value);

  @override
  final typeid = HT_TypeId('Baseline');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'baseline':
        return externObject.baseline;
      case 'baselineType':
        return externObject.baselineType;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverToBoxAdapterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverToBoxAdapter':
        return ({key, child}) => SliverToBoxAdapterObjectBinding(SliverToBoxAdapter(key : key, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverToBoxAdapterObjectBinding extends HT_ExternObject<SliverToBoxAdapter> {
  SliverToBoxAdapterObjectBinding(SliverToBoxAdapter value) : super(value);

  @override
  final typeid = HT_TypeId('SliverToBoxAdapter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createRenderObject':
        return externObject.createRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverPaddingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverPadding':
        return ({key, padding, sliver}) => SliverPaddingObjectBinding(SliverPadding(key : key, padding : padding, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverPaddingObjectBinding extends HT_ExternObject<SliverPadding> {
  SliverPaddingObjectBinding(SliverPadding value) : super(value);

  @override
  final typeid = HT_TypeId('SliverPadding');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'padding':
        return externObject.padding;
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

class ListBodyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListBody':
        return ({key, mainAxis = Axis.vertical, reverse = false, children = const <Widget>[]}) => ListBodyObjectBinding(ListBody(key : key, mainAxis : mainAxis, reverse : reverse, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListBodyObjectBinding extends HT_ExternObject<ListBody> {
  ListBodyObjectBinding(ListBody value) : super(value);

  @override
  final typeid = HT_TypeId('ListBody');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'mainAxis':
        return externObject.mainAxis;
      case 'reverse':
        return externObject.reverse;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StackClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Stack':
        return ({key, alignment = AlignmentDirectional.topStart, textDirection, fit = StackFit.loose, overflow = Overflow.clip, clipBehavior = Clip.hardEdge, children = const <Widget>[]}) => StackObjectBinding(Stack(key : key, alignment : alignment, textDirection : textDirection, fit : fit, overflow : overflow, clipBehavior : clipBehavior, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StackObjectBinding extends HT_ExternObject<Stack> {
  StackObjectBinding(Stack value) : super(value);

  @override
  final typeid = HT_TypeId('Stack');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'textDirection':
        return externObject.textDirection;
      case 'fit':
        return externObject.fit;
      case 'overflow':
        return externObject.overflow;
      case 'clipBehavior':
        return externObject.clipBehavior;
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

class IndexedStackClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IndexedStack':
        return ({key, alignment = AlignmentDirectional.topStart, textDirection, sizing = StackFit.loose, index = 0, children = const <Widget>[]}) => IndexedStackObjectBinding(IndexedStack(key : key, alignment : alignment, textDirection : textDirection, sizing : sizing, index : index, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IndexedStackObjectBinding extends HT_ExternObject<IndexedStack> {
  IndexedStackObjectBinding(IndexedStack value) : super(value);

  @override
  final typeid = HT_TypeId('IndexedStack');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'index':
        return externObject.index;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PositionedClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Positioned':
        return ({key, left, top, right, bottom, width, height, child}) => PositionedObjectBinding(Positioned(key : key, left : left, top : top, right : right, bottom : bottom, width : width, height : height, child : child));
      case 'Positioned.fromRect':
        return ({key, rect, child}) => PositionedObjectBinding(Positioned.fromRect(key : key, rect : rect, child : child));
      case 'Positioned.fromRelativeRect':
        return ({key, rect, child}) => PositionedObjectBinding(Positioned.fromRelativeRect(key : key, rect : rect, child : child));
      case 'Positioned.fill':
        return ({key, left = 0.0, top = 0.0, right = 0.0, bottom = 0.0, child}) => PositionedObjectBinding(Positioned.fill(key : key, left : left, top : top, right : right, bottom : bottom, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PositionedObjectBinding extends HT_ExternObject<Positioned> {
  PositionedObjectBinding(Positioned value) : super(value);

  @override
  final typeid = HT_TypeId('Positioned');

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
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'debugTypicalAncestorWidgetClass':
        return externObject.debugTypicalAncestorWidgetClass;
      case 'applyParentData':
        return externObject.applyParentData;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PositionedDirectionalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PositionedDirectional':
        return ({key, start, top, end, bottom, width, height, child}) => PositionedDirectionalObjectBinding(PositionedDirectional(key : key, start : start, top : top, end : end, bottom : bottom, width : width, height : height, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PositionedDirectionalObjectBinding extends HT_ExternObject<PositionedDirectional> {
  PositionedDirectionalObjectBinding(PositionedDirectional value) : super(value);

  @override
  final typeid = HT_TypeId('PositionedDirectional');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return externObject.start;
      case 'top':
        return externObject.top;
      case 'end':
        return externObject.end;
      case 'bottom':
        return externObject.bottom;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FlexClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Flex':
        return ({key, direction, mainAxisAlignment = MainAxisAlignment.start, mainAxisSize = MainAxisSize.max, crossAxisAlignment = CrossAxisAlignment.center, textDirection, verticalDirection = VerticalDirection.down, textBaseline, clipBehavior = Clip.none, children = const <Widget>[]}) => FlexObjectBinding(Flex(key : key, direction : direction, mainAxisAlignment : mainAxisAlignment, mainAxisSize : mainAxisSize, crossAxisAlignment : crossAxisAlignment, textDirection : textDirection, verticalDirection : verticalDirection, textBaseline : textBaseline, clipBehavior : clipBehavior, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlexObjectBinding extends HT_ExternObject<Flex> {
  FlexObjectBinding(Flex value) : super(value);

  @override
  final typeid = HT_TypeId('Flex');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'direction':
        return externObject.direction;
      case 'mainAxisAlignment':
        return externObject.mainAxisAlignment;
      case 'mainAxisSize':
        return externObject.mainAxisSize;
      case 'crossAxisAlignment':
        return externObject.crossAxisAlignment;
      case 'textDirection':
        return externObject.textDirection;
      case 'verticalDirection':
        return externObject.verticalDirection;
      case 'textBaseline':
        return externObject.textBaseline;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'getEffectiveTextDirection':
        return externObject.getEffectiveTextDirection;
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

class RowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Row':
        return ({key, mainAxisAlignment = MainAxisAlignment.start, mainAxisSize = MainAxisSize.max, crossAxisAlignment = CrossAxisAlignment.center, textDirection, verticalDirection = VerticalDirection.down, textBaseline, children = const <Widget>[]}) => RowObjectBinding(Row(key : key, mainAxisAlignment : mainAxisAlignment, mainAxisSize : mainAxisSize, crossAxisAlignment : crossAxisAlignment, textDirection : textDirection, verticalDirection : verticalDirection, textBaseline : textBaseline, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RowObjectBinding extends HT_ExternObject<Row> {
  RowObjectBinding(Row value) : super(value);

  @override
  final typeid = HT_TypeId('Row');


}

class ColumnClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Column':
        return ({key, mainAxisAlignment = MainAxisAlignment.start, mainAxisSize = MainAxisSize.max, crossAxisAlignment = CrossAxisAlignment.center, textDirection, verticalDirection = VerticalDirection.down, textBaseline, children = const <Widget>[]}) => ColumnObjectBinding(Column(key : key, mainAxisAlignment : mainAxisAlignment, mainAxisSize : mainAxisSize, crossAxisAlignment : crossAxisAlignment, textDirection : textDirection, verticalDirection : verticalDirection, textBaseline : textBaseline, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColumnObjectBinding extends HT_ExternObject<Column> {
  ColumnObjectBinding(Column value) : super(value);

  @override
  final typeid = HT_TypeId('Column');


}

class FlexibleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Flexible':
        return ({key, flex = 1, fit = FlexFit.loose, child}) => FlexibleObjectBinding(Flexible(key : key, flex : flex, fit : fit, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlexibleObjectBinding extends HT_ExternObject<Flexible> {
  FlexibleObjectBinding(Flexible value) : super(value);

  @override
  final typeid = HT_TypeId('Flexible');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'flex':
        return externObject.flex;
      case 'fit':
        return externObject.fit;
      case 'debugTypicalAncestorWidgetClass':
        return externObject.debugTypicalAncestorWidgetClass;
      case 'applyParentData':
        return externObject.applyParentData;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ExpandedClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Expanded':
        return ({key, flex = 1, child}) => ExpandedObjectBinding(Expanded(key : key, flex : flex, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExpandedObjectBinding extends HT_ExternObject<Expanded> {
  ExpandedObjectBinding(Expanded value) : super(value);

  @override
  final typeid = HT_TypeId('Expanded');


}

class WrapClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Wrap':
        return ({key, direction = Axis.horizontal, alignment = WrapAlignment.start, spacing = 0.0, runAlignment = WrapAlignment.start, runSpacing = 0.0, crossAxisAlignment = WrapCrossAlignment.start, textDirection, verticalDirection = VerticalDirection.down, clipBehavior = Clip.none, children = const <Widget>[]}) => WrapObjectBinding(Wrap(key : key, direction : direction, alignment : alignment, spacing : spacing, runAlignment : runAlignment, runSpacing : runSpacing, crossAxisAlignment : crossAxisAlignment, textDirection : textDirection, verticalDirection : verticalDirection, clipBehavior : clipBehavior, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WrapObjectBinding extends HT_ExternObject<Wrap> {
  WrapObjectBinding(Wrap value) : super(value);

  @override
  final typeid = HT_TypeId('Wrap');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'direction':
        return externObject.direction;
      case 'alignment':
        return externObject.alignment;
      case 'spacing':
        return externObject.spacing;
      case 'runAlignment':
        return externObject.runAlignment;
      case 'runSpacing':
        return externObject.runSpacing;
      case 'crossAxisAlignment':
        return externObject.crossAxisAlignment;
      case 'textDirection':
        return externObject.textDirection;
      case 'verticalDirection':
        return externObject.verticalDirection;
      case 'clipBehavior':
        return externObject.clipBehavior;
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

class FlowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Flow':
        return ({key, delegate, children = const <Widget>[], clipBehavior = Clip.hardEdge}) => FlowObjectBinding(Flow(key : key, delegate : delegate, children : children, clipBehavior : clipBehavior));
      case 'Flow.unwrapped':
        return ({key, delegate, children = const <Widget>[], clipBehavior = Clip.hardEdge}) => FlowObjectBinding(Flow.unwrapped(key : key, delegate : delegate, children : children, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlowObjectBinding extends HT_ExternObject<Flow> {
  FlowObjectBinding(Flow value) : super(value);

  @override
  final typeid = HT_TypeId('Flow');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'delegate':
        return externObject.delegate;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RichTextClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RichText':
        return ({key, text, textAlign = TextAlign.start, textDirection, softWrap = true, overflow = TextOverflow.clip, textScaleFactor = 1.0, maxLines, locale, strutStyle, textWidthBasis = TextWidthBasis.parent, textHeightBehavior}) => RichTextObjectBinding(RichText(key : key, text : text, textAlign : textAlign, textDirection : textDirection, softWrap : softWrap, overflow : overflow, textScaleFactor : textScaleFactor, maxLines : maxLines, locale : locale, strutStyle : strutStyle, textWidthBasis : textWidthBasis, textHeightBehavior : textHeightBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RichTextObjectBinding extends HT_ExternObject<RichText> {
  RichTextObjectBinding(RichText value) : super(value);

  @override
  final typeid = HT_TypeId('RichText');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'text':
        return externObject.text;
      case 'textAlign':
        return externObject.textAlign;
      case 'textDirection':
        return externObject.textDirection;
      case 'softWrap':
        return externObject.softWrap;
      case 'overflow':
        return externObject.overflow;
      case 'textScaleFactor':
        return externObject.textScaleFactor;
      case 'maxLines':
        return externObject.maxLines;
      case 'locale':
        return externObject.locale;
      case 'strutStyle':
        return externObject.strutStyle;
      case 'textWidthBasis':
        return externObject.textWidthBasis;
      case 'textHeightBehavior':
        return externObject.textHeightBehavior;
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

class RawImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawImage':
        return ({key, image, debugImageLabel, width, height, scale = 1.0, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, invertColors = false, filterQuality = FilterQuality.low, isAntiAlias = false}) => RawImageObjectBinding(RawImage(key : key, image : image, debugImageLabel : debugImageLabel, width : width, height : height, scale : scale, color : color, colorBlendMode : colorBlendMode, fit : fit, alignment : alignment, repeat : repeat, centerSlice : centerSlice, matchTextDirection : matchTextDirection, invertColors : invertColors, filterQuality : filterQuality, isAntiAlias : isAntiAlias));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawImageObjectBinding extends HT_ExternObject<RawImage> {
  RawImageObjectBinding(RawImage value) : super(value);

  @override
  final typeid = HT_TypeId('RawImage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'image':
        return externObject.image;
      case 'debugImageLabel':
        return externObject.debugImageLabel;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'scale':
        return externObject.scale;
      case 'color':
        return externObject.color;
      case 'filterQuality':
        return externObject.filterQuality;
      case 'colorBlendMode':
        return externObject.colorBlendMode;
      case 'fit':
        return externObject.fit;
      case 'alignment':
        return externObject.alignment;
      case 'repeat':
        return externObject.repeat;
      case 'centerSlice':
        return externObject.centerSlice;
      case 'matchTextDirection':
        return externObject.matchTextDirection;
      case 'invertColors':
        return externObject.invertColors;
      case 'isAntiAlias':
        return externObject.isAntiAlias;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'didUnmountRenderObject':
        return externObject.didUnmountRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DefaultAssetBundleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultAssetBundle':
        return ({key, bundle, child}) => DefaultAssetBundleObjectBinding(DefaultAssetBundle(key : key, bundle : bundle, child : child));
      case 'of':
        return (context) => DefaultAssetBundle.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultAssetBundleObjectBinding extends HT_ExternObject<DefaultAssetBundle> {
  DefaultAssetBundleObjectBinding(DefaultAssetBundle value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultAssetBundle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'bundle':
        return externObject.bundle;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class WidgetToRenderBoxAdapterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WidgetToRenderBoxAdapter':
        return ({renderBox, onBuild}) => WidgetToRenderBoxAdapterObjectBinding(WidgetToRenderBoxAdapter(renderBox : renderBox, onBuild : onBuild));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WidgetToRenderBoxAdapterObjectBinding extends HT_ExternObject<WidgetToRenderBoxAdapter> {
  WidgetToRenderBoxAdapterObjectBinding(WidgetToRenderBoxAdapter value) : super(value);

  @override
  final typeid = HT_TypeId('WidgetToRenderBoxAdapter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'renderBox':
        return externObject.renderBox;
      case 'onBuild':
        return externObject.onBuild;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ListenerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Listener':
        return ({key, onPointerDown, onPointerMove, onPointerUp, onPointerHover, onPointerCancel, onPointerSignal, behavior = HitTestBehavior.deferToChild, child}) => ListenerObjectBinding(Listener(key : key, onPointerDown : onPointerDown, onPointerMove : onPointerMove, onPointerUp : onPointerUp, onPointerHover : onPointerHover, onPointerCancel : onPointerCancel, onPointerSignal : onPointerSignal, behavior : behavior, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListenerObjectBinding extends HT_ExternObject<Listener> {
  ListenerObjectBinding(Listener value) : super(value);

  @override
  final typeid = HT_TypeId('Listener');

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
      case 'behavior':
        return externObject.behavior;
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

class MouseRegionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MouseRegion':
        return ({key, onEnter, onExit, onHover, cursor = MouseCursor.defer, opaque = true, child}) => MouseRegionObjectBinding(MouseRegion(key : key, onEnter : onEnter, onExit : onExit, onHover : onHover, cursor : cursor, opaque : opaque, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MouseRegionObjectBinding extends HT_ExternObject<MouseRegion> {
  MouseRegionObjectBinding(MouseRegion value) : super(value);

  @override
  final typeid = HT_TypeId('MouseRegion');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onEnter':
        return externObject.onEnter;
      case 'onHover':
        return externObject.onHover;
      case 'onExit':
        return externObject.onExit;
      case 'cursor':
        return externObject.cursor;
      case 'opaque':
        return externObject.opaque;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RepaintBoundaryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RepaintBoundary':
        return ({key, child}) => RepaintBoundaryObjectBinding(RepaintBoundary(key : key, child : child));
      case 'wrapAll':
        return (widgets) => RepaintBoundary.wrapAll(widgets);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RepaintBoundaryObjectBinding extends HT_ExternObject<RepaintBoundary> {
  RepaintBoundaryObjectBinding(RepaintBoundary value) : super(value);

  @override
  final typeid = HT_TypeId('RepaintBoundary');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createRenderObject':
        return externObject.createRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class IgnorePointerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IgnorePointer':
        return ({key, ignoring = true, ignoringSemantics, child}) => IgnorePointerObjectBinding(IgnorePointer(key : key, ignoring : ignoring, ignoringSemantics : ignoringSemantics, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IgnorePointerObjectBinding extends HT_ExternObject<IgnorePointer> {
  IgnorePointerObjectBinding(IgnorePointer value) : super(value);

  @override
  final typeid = HT_TypeId('IgnorePointer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ignoring':
        return externObject.ignoring;
      case 'ignoringSemantics':
        return externObject.ignoringSemantics;
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

class AbsorbPointerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AbsorbPointer':
        return ({key, absorbing = true, child, ignoringSemantics}) => AbsorbPointerObjectBinding(AbsorbPointer(key : key, absorbing : absorbing, child : child, ignoringSemantics : ignoringSemantics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AbsorbPointerObjectBinding extends HT_ExternObject<AbsorbPointer> {
  AbsorbPointerObjectBinding(AbsorbPointer value) : super(value);

  @override
  final typeid = HT_TypeId('AbsorbPointer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'absorbing':
        return externObject.absorbing;
      case 'ignoringSemantics':
        return externObject.ignoringSemantics;
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

class MetaDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MetaData':
        return ({key, metaData, behavior = HitTestBehavior.deferToChild, child}) => MetaDataObjectBinding(MetaData(key : key, metaData : metaData, behavior : behavior, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MetaDataObjectBinding extends HT_ExternObject<MetaData> {
  MetaDataObjectBinding(MetaData value) : super(value);

  @override
  final typeid = HT_TypeId('MetaData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'metaData':
        return externObject.metaData;
      case 'behavior':
        return externObject.behavior;
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

class SemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Semantics':
        return ({key, child, container = false, explicitChildNodes = false, excludeSemantics = false, enabled, checked, selected, toggled, button, slider, link, header, textField, readOnly, focusable, focused, inMutuallyExclusiveGroup, obscured, multiline, scopesRoute, namesRoute, hidden, image, liveRegion, maxValueLength, currentValueLength, label, value, increasedValue, decreasedValue, hint, onTapHint, onLongPressHint, textDirection, sortKey, tagForChildren, onTap, onLongPress, onScrollLeft, onScrollRight, onScrollUp, onScrollDown, onIncrease, onDecrease, onCopy, onCut, onPaste, onDismiss, onMoveCursorForwardByCharacter, onMoveCursorBackwardByCharacter, onSetSelection, onDidGainAccessibilityFocus, onDidLoseAccessibilityFocus, customSemanticsActions}) => SemanticsObjectBinding(Semantics(key : key, child : child, container : container, explicitChildNodes : explicitChildNodes, excludeSemantics : excludeSemantics, enabled : enabled, checked : checked, selected : selected, toggled : toggled, button : button, slider : slider, link : link, header : header, textField : textField, readOnly : readOnly, focusable : focusable, focused : focused, inMutuallyExclusiveGroup : inMutuallyExclusiveGroup, obscured : obscured, multiline : multiline, scopesRoute : scopesRoute, namesRoute : namesRoute, hidden : hidden, image : image, liveRegion : liveRegion, maxValueLength : maxValueLength, currentValueLength : currentValueLength, label : label, value : value, increasedValue : increasedValue, decreasedValue : decreasedValue, hint : hint, onTapHint : onTapHint, onLongPressHint : onLongPressHint, textDirection : textDirection, sortKey : sortKey, tagForChildren : tagForChildren, onTap : onTap, onLongPress : onLongPress, onScrollLeft : onScrollLeft, onScrollRight : onScrollRight, onScrollUp : onScrollUp, onScrollDown : onScrollDown, onIncrease : onIncrease, onDecrease : onDecrease, onCopy : onCopy, onCut : onCut, onPaste : onPaste, onDismiss : onDismiss, onMoveCursorForwardByCharacter : onMoveCursorForwardByCharacter, onMoveCursorBackwardByCharacter : onMoveCursorBackwardByCharacter, onSetSelection : onSetSelection, onDidGainAccessibilityFocus : onDidGainAccessibilityFocus, onDidLoseAccessibilityFocus : onDidLoseAccessibilityFocus, customSemanticsActions : customSemanticsActions));
      case 'Semantics.fromProperties':
        return ({key, child, container = false, explicitChildNodes = false, excludeSemantics = false, properties}) => SemanticsObjectBinding(Semantics.fromProperties(key : key, child : child, container : container, explicitChildNodes : explicitChildNodes, excludeSemantics : excludeSemantics, properties : properties));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsObjectBinding extends HT_ExternObject<Semantics> {
  SemanticsObjectBinding(Semantics value) : super(value);

  @override
  final typeid = HT_TypeId('Semantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'properties':
        return externObject.properties;
      case 'container':
        return externObject.container;
      case 'explicitChildNodes':
        return externObject.explicitChildNodes;
      case 'excludeSemantics':
        return externObject.excludeSemantics;
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

class MergeSemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MergeSemantics':
        return ({key, child}) => MergeSemanticsObjectBinding(MergeSemantics(key : key, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MergeSemanticsObjectBinding extends HT_ExternObject<MergeSemantics> {
  MergeSemanticsObjectBinding(MergeSemantics value) : super(value);

  @override
  final typeid = HT_TypeId('MergeSemantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createRenderObject':
        return externObject.createRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BlockSemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BlockSemantics':
        return ({key, blocking = true, child}) => BlockSemanticsObjectBinding(BlockSemantics(key : key, blocking : blocking, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BlockSemanticsObjectBinding extends HT_ExternObject<BlockSemantics> {
  BlockSemanticsObjectBinding(BlockSemantics value) : super(value);

  @override
  final typeid = HT_TypeId('BlockSemantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'blocking':
        return externObject.blocking;
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

class ExcludeSemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ExcludeSemantics':
        return ({key, excluding = true, child}) => ExcludeSemanticsObjectBinding(ExcludeSemantics(key : key, excluding : excluding, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExcludeSemanticsObjectBinding extends HT_ExternObject<ExcludeSemantics> {
  ExcludeSemanticsObjectBinding(ExcludeSemantics value) : super(value);

  @override
  final typeid = HT_TypeId('ExcludeSemantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'excluding':
        return externObject.excluding;
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

class IndexedSemanticsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IndexedSemantics':
        return ({key, index, child}) => IndexedSemanticsObjectBinding(IndexedSemantics(key : key, index : index, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IndexedSemanticsObjectBinding extends HT_ExternObject<IndexedSemantics> {
  IndexedSemanticsObjectBinding(IndexedSemantics value) : super(value);

  @override
  final typeid = HT_TypeId('IndexedSemantics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'index':
        return externObject.index;
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

class KeyedSubtreeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'KeyedSubtree':
        return ({key, child}) => KeyedSubtreeObjectBinding(KeyedSubtree(key : key, child : child));
      case 'ensureUniqueKeysForList':
        return (items, {baseIndex = 0}) => KeyedSubtree.ensureUniqueKeysForList(items, baseIndex : baseIndex);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class KeyedSubtreeObjectBinding extends HT_ExternObject<KeyedSubtree> {
  KeyedSubtreeObjectBinding(KeyedSubtree value) : super(value);

  @override
  final typeid = HT_TypeId('KeyedSubtree');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Builder':
        return ({key, builder}) => BuilderObjectBinding(Builder(key : key, builder : builder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BuilderObjectBinding extends HT_ExternObject<Builder> {
  BuilderObjectBinding(Builder value) : super(value);

  @override
  final typeid = HT_TypeId('Builder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StatefulBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StatefulBuilder':
        return ({key, builder}) => StatefulBuilderObjectBinding(StatefulBuilder(key : key, builder : builder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StatefulBuilderObjectBinding extends HT_ExternObject<StatefulBuilder> {
  StatefulBuilderObjectBinding(StatefulBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('StatefulBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ColoredBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ColoredBox':
        return ({color, child, key}) => ColoredBoxObjectBinding(ColoredBox(color : color, child : child, key : key));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColoredBoxObjectBinding extends HT_ExternObject<ColoredBox> {
  ColoredBoxObjectBinding(ColoredBox value) : super(value);

  @override
  final typeid = HT_TypeId('ColoredBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
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

