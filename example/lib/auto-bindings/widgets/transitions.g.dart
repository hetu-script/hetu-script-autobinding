import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/rendering.dart';


class SlideTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SlideTransition':
        return ({key, position, transformHitTests = true, textDirection, child}) => SlideTransitionObjectBinding(SlideTransition(key : key, position : position, transformHitTests : transformHitTests, textDirection : textDirection, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SlideTransitionObjectBinding extends HT_ExternObject<SlideTransition> {
  SlideTransitionObjectBinding(SlideTransition value) : super(value);

  @override
  final typeid = HT_TypeId('SlideTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textDirection':
        return externObject.textDirection;
      case 'transformHitTests':
        return externObject.transformHitTests;
      case 'child':
        return externObject.child;
      case 'position':
        return externObject.position;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScaleTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaleTransition':
        return ({key, scale, alignment = Alignment.center, child}) => ScaleTransitionObjectBinding(ScaleTransition(key : key, scale : scale, alignment : alignment, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaleTransitionObjectBinding extends HT_ExternObject<ScaleTransition> {
  ScaleTransitionObjectBinding(ScaleTransition value) : super(value);

  @override
  final typeid = HT_TypeId('ScaleTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'child':
        return externObject.child;
      case 'scale':
        return externObject.scale;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RotationTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RotationTransition':
        return ({key, turns, alignment = Alignment.center, child}) => RotationTransitionObjectBinding(RotationTransition(key : key, turns : turns, alignment : alignment, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RotationTransitionObjectBinding extends HT_ExternObject<RotationTransition> {
  RotationTransitionObjectBinding(RotationTransition value) : super(value);

  @override
  final typeid = HT_TypeId('RotationTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'child':
        return externObject.child;
      case 'turns':
        return externObject.turns;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SizeTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SizeTransition':
        return ({key, axis = Axis.vertical, sizeFactor, axisAlignment = 0.0, child}) => SizeTransitionObjectBinding(SizeTransition(key : key, axis : axis, sizeFactor : sizeFactor, axisAlignment : axisAlignment, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SizeTransitionObjectBinding extends HT_ExternObject<SizeTransition> {
  SizeTransitionObjectBinding(SizeTransition value) : super(value);

  @override
  final typeid = HT_TypeId('SizeTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'axis':
        return externObject.axis;
      case 'axisAlignment':
        return externObject.axisAlignment;
      case 'child':
        return externObject.child;
      case 'sizeFactor':
        return externObject.sizeFactor;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FadeTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FadeTransition':
        return ({key, opacity, alwaysIncludeSemantics = false, child}) => FadeTransitionObjectBinding(FadeTransition(key : key, opacity : opacity, alwaysIncludeSemantics : alwaysIncludeSemantics, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FadeTransitionObjectBinding extends HT_ExternObject<FadeTransition> {
  FadeTransitionObjectBinding(FadeTransition value) : super(value);

  @override
  final typeid = HT_TypeId('FadeTransition');

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

class SliverFadeTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverFadeTransition':
        return ({key, opacity, alwaysIncludeSemantics = false, sliver}) => SliverFadeTransitionObjectBinding(SliverFadeTransition(key : key, opacity : opacity, alwaysIncludeSemantics : alwaysIncludeSemantics, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverFadeTransitionObjectBinding extends HT_ExternObject<SliverFadeTransition> {
  SliverFadeTransitionObjectBinding(SliverFadeTransition value) : super(value);

  @override
  final typeid = HT_TypeId('SliverFadeTransition');

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

class RelativeRectTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RelativeRectTween':
        return ({begin, end}) => RelativeRectTweenObjectBinding(RelativeRectTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RelativeRectTweenObjectBinding extends HT_ExternObject<RelativeRectTween> {
  RelativeRectTweenObjectBinding(RelativeRectTween value) : super(value);

  @override
  final typeid = HT_TypeId('RelativeRectTween');

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

class PositionedTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PositionedTransition':
        return ({key, rect, child}) => PositionedTransitionObjectBinding(PositionedTransition(key : key, rect : rect, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PositionedTransitionObjectBinding extends HT_ExternObject<PositionedTransition> {
  PositionedTransitionObjectBinding(PositionedTransition value) : super(value);

  @override
  final typeid = HT_TypeId('PositionedTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'rect':
        return externObject.rect;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RelativePositionedTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RelativePositionedTransition':
        return ({key, rect, size, child}) => RelativePositionedTransitionObjectBinding(RelativePositionedTransition(key : key, rect : rect, size : size, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RelativePositionedTransitionObjectBinding extends HT_ExternObject<RelativePositionedTransition> {
  RelativePositionedTransitionObjectBinding(RelativePositionedTransition value) : super(value);

  @override
  final typeid = HT_TypeId('RelativePositionedTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'size':
        return externObject.size;
      case 'child':
        return externObject.child;
      case 'rect':
        return externObject.rect;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DecoratedBoxTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DecoratedBoxTransition':
        return ({key, decoration, position = DecorationPosition.background, child}) => DecoratedBoxTransitionObjectBinding(DecoratedBoxTransition(key : key, decoration : decoration, position : position, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DecoratedBoxTransitionObjectBinding extends HT_ExternObject<DecoratedBoxTransition> {
  DecoratedBoxTransitionObjectBinding(DecoratedBoxTransition value) : super(value);

  @override
  final typeid = HT_TypeId('DecoratedBoxTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decoration':
        return externObject.decoration;
      case 'position':
        return externObject.position;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AlignTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AlignTransition':
        return ({key, alignment, child, widthFactor, heightFactor}) => AlignTransitionObjectBinding(AlignTransition(key : key, alignment : alignment, child : child, widthFactor : widthFactor, heightFactor : heightFactor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AlignTransitionObjectBinding extends HT_ExternObject<AlignTransition> {
  AlignTransitionObjectBinding(AlignTransition value) : super(value);

  @override
  final typeid = HT_TypeId('AlignTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widthFactor':
        return externObject.widthFactor;
      case 'heightFactor':
        return externObject.heightFactor;
      case 'child':
        return externObject.child;
      case 'alignment':
        return externObject.alignment;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DefaultTextStyleTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultTextStyleTransition':
        return ({key, style, child, textAlign, softWrap = true, overflow = TextOverflow.clip, maxLines}) => DefaultTextStyleTransitionObjectBinding(DefaultTextStyleTransition(key : key, style : style, child : child, textAlign : textAlign, softWrap : softWrap, overflow : overflow, maxLines : maxLines));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultTextStyleTransitionObjectBinding extends HT_ExternObject<DefaultTextStyleTransition> {
  DefaultTextStyleTransitionObjectBinding(DefaultTextStyleTransition value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultTextStyleTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textAlign':
        return externObject.textAlign;
      case 'softWrap':
        return externObject.softWrap;
      case 'overflow':
        return externObject.overflow;
      case 'maxLines':
        return externObject.maxLines;
      case 'child':
        return externObject.child;
      case 'style':
        return externObject.style;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedBuilder':
        return ({key, animation, builder, child}) => AnimatedBuilderObjectBinding(AnimatedBuilder(key : key, animation : animation, builder : builder, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedBuilderObjectBinding extends HT_ExternObject<AnimatedBuilder> {
  AnimatedBuilderObjectBinding(AnimatedBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

