import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class BoxConstraintsTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BoxConstraintsTween':
        return ({begin, end}) => BoxConstraintsTweenObjectBinding(BoxConstraintsTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BoxConstraintsTweenObjectBinding extends HT_ExternObject<BoxConstraintsTween> {
  BoxConstraintsTweenObjectBinding(BoxConstraintsTween value) : super(value);

  @override
  final typeid = HT_TypeId('BoxConstraintsTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DecorationTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DecorationTween':
        return ({begin, end}) => DecorationTweenObjectBinding(DecorationTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DecorationTweenObjectBinding extends HT_ExternObject<DecorationTween> {
  DecorationTweenObjectBinding(DecorationTween value) : super(value);

  @override
  final typeid = HT_TypeId('DecorationTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class EdgeInsetsTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'EdgeInsetsTween':
        return ({begin, end}) => EdgeInsetsTweenObjectBinding(EdgeInsetsTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class EdgeInsetsTweenObjectBinding extends HT_ExternObject<EdgeInsetsTween> {
  EdgeInsetsTweenObjectBinding(EdgeInsetsTween value) : super(value);

  @override
  final typeid = HT_TypeId('EdgeInsetsTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class EdgeInsetsGeometryTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'EdgeInsetsGeometryTween':
        return ({begin, end}) => EdgeInsetsGeometryTweenObjectBinding(EdgeInsetsGeometryTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class EdgeInsetsGeometryTweenObjectBinding extends HT_ExternObject<EdgeInsetsGeometryTween> {
  EdgeInsetsGeometryTweenObjectBinding(EdgeInsetsGeometryTween value) : super(value);

  @override
  final typeid = HT_TypeId('EdgeInsetsGeometryTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BorderRadiusTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BorderRadiusTween':
        return ({begin, end}) => BorderRadiusTweenObjectBinding(BorderRadiusTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BorderRadiusTweenObjectBinding extends HT_ExternObject<BorderRadiusTween> {
  BorderRadiusTweenObjectBinding(BorderRadiusTween value) : super(value);

  @override
  final typeid = HT_TypeId('BorderRadiusTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BorderTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BorderTween':
        return ({begin, end}) => BorderTweenObjectBinding(BorderTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BorderTweenObjectBinding extends HT_ExternObject<BorderTween> {
  BorderTweenObjectBinding(BorderTween value) : super(value);

  @override
  final typeid = HT_TypeId('BorderTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class Matrix4TweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Matrix4Tween':
        return ({begin, end}) => Matrix4TweenObjectBinding(Matrix4Tween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Matrix4TweenObjectBinding extends HT_ExternObject<Matrix4Tween> {
  Matrix4TweenObjectBinding(Matrix4Tween value) : super(value);

  @override
  final typeid = HT_TypeId('Matrix4Tween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextStyleTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextStyleTween':
        return ({begin, end}) => TextStyleTweenObjectBinding(TextStyleTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextStyleTweenObjectBinding extends HT_ExternObject<TextStyleTween> {
  TextStyleTweenObjectBinding(TextStyleTween value) : super(value);

  @override
  final typeid = HT_TypeId('TextStyleTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedContainerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedContainer':
        return ({key, alignment, padding, color, decoration, foregroundDecoration, width, height, constraints, margin, transform, transformAlignment, child, clipBehavior = Clip.none, curve = Curves.linear, duration, onEnd}) => AnimatedContainerObjectBinding(AnimatedContainer(key : key, alignment : alignment, padding : padding, color : color, decoration : decoration, foregroundDecoration : foregroundDecoration, width : width, height : height, constraints : constraints, margin : margin, transform : transform, transformAlignment : transformAlignment, child : child, clipBehavior : clipBehavior, curve : curve, duration : duration, onEnd : onEnd));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedContainerObjectBinding extends HT_ExternObject<AnimatedContainer> {
  AnimatedContainerObjectBinding(AnimatedContainer value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedContainer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'alignment':
        return externObject.alignment;
      case 'padding':
        return externObject.padding;
      case 'decoration':
        return externObject.decoration;
      case 'foregroundDecoration':
        return externObject.foregroundDecoration;
      case 'constraints':
        return externObject.constraints;
      case 'margin':
        return externObject.margin;
      case 'transform':
        return externObject.transform;
      case 'transformAlignment':
        return externObject.transformAlignment;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedPaddingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedPadding':
        return ({key, padding, child, curve = Curves.linear, duration, onEnd}) => AnimatedPaddingObjectBinding(AnimatedPadding(key : key, padding : padding, child : child, curve : curve, duration : duration, onEnd : onEnd));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedPaddingObjectBinding extends HT_ExternObject<AnimatedPadding> {
  AnimatedPaddingObjectBinding(AnimatedPadding value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedPadding');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'padding':
        return externObject.padding;
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

class AnimatedAlignClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedAlign':
        return ({key, alignment, child, heightFactor, widthFactor, curve = Curves.linear, duration, onEnd}) => AnimatedAlignObjectBinding(AnimatedAlign(key : key, alignment : alignment, child : child, heightFactor : heightFactor, widthFactor : widthFactor, curve : curve, duration : duration, onEnd : onEnd));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedAlignObjectBinding extends HT_ExternObject<AnimatedAlign> {
  AnimatedAlignObjectBinding(AnimatedAlign value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedAlign');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'child':
        return externObject.child;
      case 'heightFactor':
        return externObject.heightFactor;
      case 'widthFactor':
        return externObject.widthFactor;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedPositionedClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedPositioned':
        return ({key, child, left, top, right, bottom, width, height, curve = Curves.linear, duration, onEnd}) => AnimatedPositionedObjectBinding(AnimatedPositioned(key : key, child : child, left : left, top : top, right : right, bottom : bottom, width : width, height : height, curve : curve, duration : duration, onEnd : onEnd));
      case 'AnimatedPositioned.fromRect':
        return ({key, child, rect, curve = Curves.linear, duration, onEnd}) => AnimatedPositionedObjectBinding(AnimatedPositioned.fromRect(key : key, child : child, rect : rect, curve : curve, duration : duration, onEnd : onEnd));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedPositionedObjectBinding extends HT_ExternObject<AnimatedPositioned> {
  AnimatedPositionedObjectBinding(AnimatedPositioned value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedPositioned');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
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
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedPositionedDirectionalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedPositionedDirectional':
        return ({key, child, start, top, end, bottom, width, height, curve = Curves.linear, duration, onEnd}) => AnimatedPositionedDirectionalObjectBinding(AnimatedPositionedDirectional(key : key, child : child, start : start, top : top, end : end, bottom : bottom, width : width, height : height, curve : curve, duration : duration, onEnd : onEnd));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedPositionedDirectionalObjectBinding extends HT_ExternObject<AnimatedPositionedDirectional> {
  AnimatedPositionedDirectionalObjectBinding(AnimatedPositionedDirectional value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedPositionedDirectional');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
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
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedOpacityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedOpacity':
        return ({key, child, opacity, curve = Curves.linear, duration, onEnd, alwaysIncludeSemantics = false}) => AnimatedOpacityObjectBinding(AnimatedOpacity(key : key, child : child, opacity : opacity, curve : curve, duration : duration, onEnd : onEnd, alwaysIncludeSemantics : alwaysIncludeSemantics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedOpacityObjectBinding extends HT_ExternObject<AnimatedOpacity> {
  AnimatedOpacityObjectBinding(AnimatedOpacity value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedOpacity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'opacity':
        return externObject.opacity;
      case 'alwaysIncludeSemantics':
        return externObject.alwaysIncludeSemantics;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverAnimatedOpacityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverAnimatedOpacity':
        return ({key, sliver, opacity, curve = Curves.linear, duration, onEnd, alwaysIncludeSemantics = false}) => SliverAnimatedOpacityObjectBinding(SliverAnimatedOpacity(key : key, sliver : sliver, opacity : opacity, curve : curve, duration : duration, onEnd : onEnd, alwaysIncludeSemantics : alwaysIncludeSemantics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverAnimatedOpacityObjectBinding extends HT_ExternObject<SliverAnimatedOpacity> {
  SliverAnimatedOpacityObjectBinding(SliverAnimatedOpacity value) : super(value);

  @override
  final typeid = HT_TypeId('SliverAnimatedOpacity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'sliver':
        return externObject.sliver;
      case 'opacity':
        return externObject.opacity;
      case 'alwaysIncludeSemantics':
        return externObject.alwaysIncludeSemantics;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedDefaultTextStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedDefaultTextStyle':
        return ({key, child, style, textAlign, softWrap = true, overflow = TextOverflow.clip, maxLines, textWidthBasis = TextWidthBasis.parent, textHeightBehavior, curve = Curves.linear, duration, onEnd}) => AnimatedDefaultTextStyleObjectBinding(AnimatedDefaultTextStyle(key : key, child : child, style : style, textAlign : textAlign, softWrap : softWrap, overflow : overflow, maxLines : maxLines, textWidthBasis : textWidthBasis, textHeightBehavior : textHeightBehavior, curve : curve, duration : duration, onEnd : onEnd));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedDefaultTextStyleObjectBinding extends HT_ExternObject<AnimatedDefaultTextStyle> {
  AnimatedDefaultTextStyleObjectBinding(AnimatedDefaultTextStyle value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedDefaultTextStyle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'style':
        return externObject.style;
      case 'textAlign':
        return externObject.textAlign;
      case 'softWrap':
        return externObject.softWrap;
      case 'overflow':
        return externObject.overflow;
      case 'maxLines':
        return externObject.maxLines;
      case 'textWidthBasis':
        return externObject.textWidthBasis;
      case 'textHeightBehavior':
        return externObject.textHeightBehavior;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedPhysicalModelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedPhysicalModel':
        return ({key, child, shape, clipBehavior = Clip.none, borderRadius = BorderRadius.zero, elevation, color, animateColor = true, shadowColor, animateShadowColor = true, curve = Curves.linear, duration, onEnd}) => AnimatedPhysicalModelObjectBinding(AnimatedPhysicalModel(key : key, child : child, shape : shape, clipBehavior : clipBehavior, borderRadius : borderRadius, elevation : elevation, color : color, animateColor : animateColor, shadowColor : shadowColor, animateShadowColor : animateShadowColor, curve : curve, duration : duration, onEnd : onEnd));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedPhysicalModelObjectBinding extends HT_ExternObject<AnimatedPhysicalModel> {
  AnimatedPhysicalModelObjectBinding(AnimatedPhysicalModel value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedPhysicalModel');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
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
      case 'animateColor':
        return externObject.animateColor;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'animateShadowColor':
        return externObject.animateShadowColor;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

