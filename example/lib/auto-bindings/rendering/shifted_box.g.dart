import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';


class RenderPaddingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderPadding':
        return ({padding, textDirection, child}) => RenderPaddingObjectBinding(RenderPadding(padding : padding, textDirection : textDirection, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPaddingObjectBinding extends HT_ExternObject<RenderPadding> {
  RenderPaddingObjectBinding(RenderPadding value) : super(value);

  @override
  final typeid = HT_TypeId('RenderPadding');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'padding':
        return externObject.padding;
      case 'textDirection':
        return externObject.textDirection;
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
      case 'padding':
        externObject.padding = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPositionedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderPositionedBox':
        return ({child, widthFactor, heightFactor, alignment = Alignment.center, textDirection}) => RenderPositionedBoxObjectBinding(RenderPositionedBox(child : child, widthFactor : widthFactor, heightFactor : heightFactor, alignment : alignment, textDirection : textDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPositionedBoxObjectBinding extends HT_ExternObject<RenderPositionedBox> {
  RenderPositionedBoxObjectBinding(RenderPositionedBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderPositionedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widthFactor':
        return externObject.widthFactor;
      case 'heightFactor':
        return externObject.heightFactor;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
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
      case 'widthFactor':
        externObject.widthFactor = value;
        break;
      case 'heightFactor':
        externObject.heightFactor = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderConstrainedOverflowBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderConstrainedOverflowBox':
        return ({child, minWidth, maxWidth, minHeight, maxHeight, alignment = Alignment.center, textDirection}) => RenderConstrainedOverflowBoxObjectBinding(RenderConstrainedOverflowBox(child : child, minWidth : minWidth, maxWidth : maxWidth, minHeight : minHeight, maxHeight : maxHeight, alignment : alignment, textDirection : textDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderConstrainedOverflowBoxObjectBinding extends HT_ExternObject<RenderConstrainedOverflowBox> {
  RenderConstrainedOverflowBoxObjectBinding(RenderConstrainedOverflowBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderConstrainedOverflowBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'minWidth':
        return externObject.minWidth;
      case 'maxWidth':
        return externObject.maxWidth;
      case 'minHeight':
        return externObject.minHeight;
      case 'maxHeight':
        return externObject.maxHeight;
      case 'sizedByParent':
        return externObject.sizedByParent;
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
      case 'minWidth':
        externObject.minWidth = value;
        break;
      case 'maxWidth':
        externObject.maxWidth = value;
        break;
      case 'minHeight':
        externObject.minHeight = value;
        break;
      case 'maxHeight':
        externObject.maxHeight = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderUnconstrainedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderUnconstrainedBox':
        return ({alignment, textDirection, constrainedAxis, child, clipBehavior = Clip.none}) => RenderUnconstrainedBoxObjectBinding(RenderUnconstrainedBox(alignment : alignment, textDirection : textDirection, constrainedAxis : constrainedAxis, child : child, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderUnconstrainedBoxObjectBinding extends HT_ExternObject<RenderUnconstrainedBox> {
  RenderUnconstrainedBoxObjectBinding(RenderUnconstrainedBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderUnconstrainedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'constrainedAxis':
        return externObject.constrainedAxis;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'paint':
        return externObject.paint;
      case 'describeApproximatePaintClip':
        return externObject.describeApproximatePaintClip;
      case 'toStringShort':
        return externObject.toStringShort;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'constrainedAxis':
        externObject.constrainedAxis = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSizedOverflowBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSizedOverflowBox':
        return ({child, requestedSize, alignment = Alignment.center, textDirection}) => RenderSizedOverflowBoxObjectBinding(RenderSizedOverflowBox(child : child, requestedSize : requestedSize, alignment : alignment, textDirection : textDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSizedOverflowBoxObjectBinding extends HT_ExternObject<RenderSizedOverflowBox> {
  RenderSizedOverflowBoxObjectBinding(RenderSizedOverflowBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSizedOverflowBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'requestedSize':
        return externObject.requestedSize;
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
      case 'performLayout':
        return externObject.performLayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'requestedSize':
        externObject.requestedSize = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFractionallySizedOverflowBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderFractionallySizedOverflowBox':
        return ({child, widthFactor, heightFactor, alignment = Alignment.center, textDirection}) => RenderFractionallySizedOverflowBoxObjectBinding(RenderFractionallySizedOverflowBox(child : child, widthFactor : widthFactor, heightFactor : heightFactor, alignment : alignment, textDirection : textDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderFractionallySizedOverflowBoxObjectBinding extends HT_ExternObject<RenderFractionallySizedOverflowBox> {
  RenderFractionallySizedOverflowBoxObjectBinding(RenderFractionallySizedOverflowBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderFractionallySizedOverflowBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widthFactor':
        return externObject.widthFactor;
      case 'heightFactor':
        return externObject.heightFactor;
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
      case 'widthFactor':
        externObject.widthFactor = value;
        break;
      case 'heightFactor':
        externObject.heightFactor = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderCustomSingleChildLayoutBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderCustomSingleChildLayoutBox':
        return ({child, delegate}) => RenderCustomSingleChildLayoutBoxObjectBinding(RenderCustomSingleChildLayoutBox(child : child, delegate : delegate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderCustomSingleChildLayoutBoxObjectBinding extends HT_ExternObject<RenderCustomSingleChildLayoutBox> {
  RenderCustomSingleChildLayoutBoxObjectBinding(RenderCustomSingleChildLayoutBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderCustomSingleChildLayoutBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'delegate':
        return externObject.delegate;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
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
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'delegate':
        externObject.delegate = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderBaselineClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderBaseline':
        return ({child, baseline, baselineType}) => RenderBaselineObjectBinding(RenderBaseline(child : child, baseline : baseline, baselineType : baselineType));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderBaselineObjectBinding extends HT_ExternObject<RenderBaseline> {
  RenderBaselineObjectBinding(RenderBaseline value) : super(value);

  @override
  final typeid = HT_TypeId('RenderBaseline');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'baseline':
        return externObject.baseline;
      case 'baselineType':
        return externObject.baselineType;
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
      case 'baseline':
        externObject.baseline = value;
        break;
      case 'baselineType':
        externObject.baselineType = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

