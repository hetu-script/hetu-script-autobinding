import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';

class FontStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'normal':
        return FontStyle.normal;
      case 'italic':
        return FontStyle.italic;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class TextAlignClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'left':
        return TextAlign.left;
      case 'right':
        return TextAlign.right;
      case 'center':
        return TextAlign.center;
      case 'justify':
        return TextAlign.justify;
      case 'start':
        return TextAlign.start;
      case 'end':
        return TextAlign.end;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class TextBaselineClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alphabetic':
        return TextBaseline.alphabetic;
      case 'ideographic':
        return TextBaseline.ideographic;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class TextDecorationStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'solid':
        return TextDecorationStyle.solid;
      case 'double':
        return TextDecorationStyle.double;
      case 'dotted':
        return TextDecorationStyle.dotted;
      case 'dashed':
        return TextDecorationStyle.dashed;
      case 'wavy':
        return TextDecorationStyle.wavy;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class TextDirectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'rtl':
        return TextDirection.rtl;
      case 'ltr':
        return TextDirection.ltr;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class TextAffinityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'upstream':
        return TextAffinity.upstream;
      case 'downstream':
        return TextAffinity.downstream;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class BoxHeightStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tight':
        return BoxHeightStyle.tight;
      case 'max':
        return BoxHeightStyle.max;
      case 'includeLineSpacingMiddle':
        return BoxHeightStyle.includeLineSpacingMiddle;
      case 'includeLineSpacingTop':
        return BoxHeightStyle.includeLineSpacingTop;
      case 'includeLineSpacingBottom':
        return BoxHeightStyle.includeLineSpacingBottom;
      case 'strut':
        return BoxHeightStyle.strut;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class BoxWidthStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tight':
        return BoxWidthStyle.tight;
      case 'max':
        return BoxWidthStyle.max;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class PlaceholderAlignmentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'baseline':
        return PlaceholderAlignment.baseline;
      case 'aboveBaseline':
        return PlaceholderAlignment.aboveBaseline;
      case 'belowBaseline':
        return PlaceholderAlignment.belowBaseline;
      case 'top':
        return PlaceholderAlignment.top;
      case 'bottom':
        return PlaceholderAlignment.bottom;
      case 'middle':
        return PlaceholderAlignment.middle;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FontWeightClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return (a, b, t) => FontWeight.lerp(a, b, t);
      case 'FontWeight.w100':
        return FontWeight.w100;
      case 'FontWeight.w200':
        return FontWeight.w200;
      case 'FontWeight.w300':
        return FontWeight.w300;
      case 'FontWeight.w400':
        return FontWeight.w400;
      case 'FontWeight.w500':
        return FontWeight.w500;
      case 'FontWeight.w600':
        return FontWeight.w600;
      case 'FontWeight.w700':
        return FontWeight.w700;
      case 'FontWeight.w800':
        return FontWeight.w800;
      case 'FontWeight.w900':
        return FontWeight.w900;
      case 'FontWeight.normal':
        return FontWeight.normal;
      case 'FontWeight.bold':
        return FontWeight.bold;
      case 'FontWeight.values':
        return FontWeight.values;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class FontFeatureClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FontFeature':
        return (feature, [value = 1]) => FontFeatureObjectBinding(FontFeature(feature, value));
      case 'FontFeature.enable':
        return (feature) => FontFeatureObjectBinding(FontFeature.enable(feature));
      case 'FontFeature.disable':
        return (feature) => FontFeatureObjectBinding(FontFeature.disable(feature));
      case 'FontFeature.randomize':
        return () => FontFeatureObjectBinding(FontFeature.randomize());
      case 'FontFeature.slashedZero':
        return () => FontFeatureObjectBinding(FontFeature.slashedZero());
      case 'FontFeature.oldstyleFigures':
        return () => FontFeatureObjectBinding(FontFeature.oldstyleFigures());
      case 'FontFeature.proportionalFigures':
        return () => FontFeatureObjectBinding(FontFeature.proportionalFigures());
      case 'FontFeature.tabularFigures':
        return () => FontFeatureObjectBinding(FontFeature.tabularFigures());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FontFeatureObjectBinding extends HT_ExternObject<FontFeature> {
  FontFeatureObjectBinding(FontFeature value) : super(value);

  @override
  final typeid = HT_TypeId('FontFeature');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'feature':
        return externObject.feature;
      case 'value':
        return externObject.value;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextDecorationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextDecoration.none':
        return TextDecoration.none;
      case 'TextDecoration.underline':
        return TextDecoration.underline;
      case 'TextDecoration.overline':
        return TextDecoration.overline;
      case 'TextDecoration.lineThrough':
        return TextDecoration.lineThrough;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class TextHeightBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextHeightBehavior':
        return ({applyHeightToFirstAscent = true, applyHeightToLastDescent = true}) => TextHeightBehaviorObjectBinding(TextHeightBehavior(applyHeightToFirstAscent : applyHeightToFirstAscent, applyHeightToLastDescent : applyHeightToLastDescent));
      case 'TextHeightBehavior.fromEncoded':
        return (encoded) => TextHeightBehaviorObjectBinding(TextHeightBehavior.fromEncoded(encoded));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextHeightBehaviorObjectBinding extends HT_ExternObject<TextHeightBehavior> {
  TextHeightBehaviorObjectBinding(TextHeightBehavior value) : super(value);

  @override
  final typeid = HT_TypeId('TextHeightBehavior');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'applyHeightToFirstAscent':
        return externObject.applyHeightToFirstAscent;
      case 'applyHeightToLastDescent':
        return externObject.applyHeightToLastDescent;
      case 'hashCode':
        return externObject.hashCode;
      case 'encode':
        return externObject.encode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ParagraphStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ParagraphStyle':
        return ({textAlign, textDirection, maxLines, fontFamily, fontSize, height, textHeightBehavior, fontWeight, fontStyle, strutStyle, ellipsis, locale}) => ParagraphStyleObjectBinding(ParagraphStyle(textAlign : textAlign, textDirection : textDirection, maxLines : maxLines, fontFamily : fontFamily, fontSize : fontSize, height : height, textHeightBehavior : textHeightBehavior, fontWeight : fontWeight, fontStyle : fontStyle, strutStyle : strutStyle, ellipsis : ellipsis, locale : locale));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ParagraphStyleObjectBinding extends HT_ExternObject<ParagraphStyle> {
  ParagraphStyleObjectBinding(ParagraphStyle value) : super(value);

  @override
  final typeid = HT_TypeId('ParagraphStyle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextBox.fromLTRBD':
        return (left, top, right, bottom, direction) => TextBoxObjectBinding(TextBox.fromLTRBD(left, top, right, bottom, direction));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextBoxObjectBinding extends HT_ExternObject<TextBox> {
  TextBoxObjectBinding(TextBox value) : super(value);

  @override
  final typeid = HT_TypeId('TextBox');

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
      case 'direction':
        return externObject.direction;
      case 'start':
        return externObject.start;
      case 'end':
        return externObject.end;
      case 'hashCode':
        return externObject.hashCode;
      case 'toRect':
        return externObject.toRect;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextPositionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextPosition':
        return ({offset, affinity = TextAffinity.downstream}) => TextPositionObjectBinding(TextPosition(offset : offset, affinity : affinity));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextPositionObjectBinding extends HT_ExternObject<TextPosition> {
  TextPositionObjectBinding(TextPosition value) : super(value);

  @override
  final typeid = HT_TypeId('TextPosition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offset':
        return externObject.offset;
      case 'affinity':
        return externObject.affinity;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextRangeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextRange':
        return ({start, end}) => TextRangeObjectBinding(TextRange(start : start, end : end));
      case 'TextRange.collapsed':
        return (offset) => TextRangeObjectBinding(TextRange.collapsed(offset));
      case 'TextRange.empty':
        return TextRange.empty;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextRangeObjectBinding extends HT_ExternObject<TextRange> {
  TextRangeObjectBinding(TextRange value) : super(value);

  @override
  final typeid = HT_TypeId('TextRange');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return externObject.start;
      case 'end':
        return externObject.end;
      case 'isValid':
        return externObject.isValid;
      case 'isCollapsed':
        return externObject.isCollapsed;
      case 'isNormalized':
        return externObject.isNormalized;
      case 'hashCode':
        return externObject.hashCode;
      case 'textBefore':
        return externObject.textBefore;
      case 'textAfter':
        return externObject.textAfter;
      case 'textInside':
        return externObject.textInside;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ParagraphConstraintsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ParagraphConstraints':
        return ({width}) => ParagraphConstraintsObjectBinding(ParagraphConstraints(width : width));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ParagraphConstraintsObjectBinding extends HT_ExternObject<ParagraphConstraints> {
  ParagraphConstraintsObjectBinding(ParagraphConstraints value) : super(value);

  @override
  final typeid = HT_TypeId('ParagraphConstraints');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'width':
        return externObject.width;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LineMetricsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LineMetrics':
        return ({hardBreak, ascent, descent, unscaledAscent, height, width, left, baseline, lineNumber}) => LineMetricsObjectBinding(LineMetrics(hardBreak : hardBreak, ascent : ascent, descent : descent, unscaledAscent : unscaledAscent, height : height, width : width, left : left, baseline : baseline, lineNumber : lineNumber));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LineMetricsObjectBinding extends HT_ExternObject<LineMetrics> {
  LineMetricsObjectBinding(LineMetrics value) : super(value);

  @override
  final typeid = HT_TypeId('LineMetrics');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hardBreak':
        return externObject.hardBreak;
      case 'ascent':
        return externObject.ascent;
      case 'descent':
        return externObject.descent;
      case 'unscaledAscent':
        return externObject.unscaledAscent;
      case 'height':
        return externObject.height;
      case 'width':
        return externObject.width;
      case 'left':
        return externObject.left;
      case 'baseline':
        return externObject.baseline;
      case 'lineNumber':
        return externObject.lineNumber;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ParagraphBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ParagraphBuilder':
        return (style) => ParagraphBuilderObjectBinding(ParagraphBuilder(style));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ParagraphBuilderObjectBinding extends HT_ExternObject<ParagraphBuilder> {
  ParagraphBuilderObjectBinding(ParagraphBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('ParagraphBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'placeholderCount':
        return externObject.placeholderCount;
      case 'placeholderScales':
        return externObject.placeholderScales;
      case 'pushStyle':
        return externObject.pushStyle;
      case 'pop':
        return externObject.pop;
      case 'addText':
        return externObject.addText;
      case 'addPlaceholder':
        return externObject.addPlaceholder;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

