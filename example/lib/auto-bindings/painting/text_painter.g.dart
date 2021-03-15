import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class TextWidthBasisClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'parent':
        return TextWidthBasis.parent;
      case 'longestLine':
        return TextWidthBasis.longestLine;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlaceholderDimensionsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PlaceholderDimensions':
        return ({size, alignment, baseline, baselineOffset}) => PlaceholderDimensionsObjectBinding(PlaceholderDimensions(size : size, alignment : alignment, baseline : baseline, baselineOffset : baselineOffset));
      case 'PlaceholderDimensions.empty':
        return PlaceholderDimensions.empty;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlaceholderDimensionsObjectBinding extends HT_ExternObject<PlaceholderDimensions> {
  PlaceholderDimensionsObjectBinding(PlaceholderDimensions value) : super(value);

  @override
  final typeid = HT_TypeId('PlaceholderDimensions');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'size':
        return externObject.size;
      case 'alignment':
        return externObject.alignment;
      case 'baselineOffset':
        return externObject.baselineOffset;
      case 'baseline':
        return externObject.baseline;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextPainterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextPainter':
        return ({text, textAlign = TextAlign.start, textDirection, textScaleFactor = 1.0, maxLines, ellipsis, locale, strutStyle, textWidthBasis = TextWidthBasis.parent, textHeightBehavior}) => TextPainterObjectBinding(TextPainter(text : text, textAlign : textAlign, textDirection : textDirection, textScaleFactor : textScaleFactor, maxLines : maxLines, ellipsis : ellipsis, locale : locale, strutStyle : strutStyle, textWidthBasis : textWidthBasis, textHeightBehavior : textHeightBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextPainterObjectBinding extends HT_ExternObject<TextPainter> {
  TextPainterObjectBinding(TextPainter value) : super(value);

  @override
  final typeid = HT_TypeId('TextPainter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'text':
        return externObject.text;
      case 'textAlign':
        return externObject.textAlign;
      case 'textDirection':
        return externObject.textDirection;
      case 'textScaleFactor':
        return externObject.textScaleFactor;
      case 'ellipsis':
        return externObject.ellipsis;
      case 'locale':
        return externObject.locale;
      case 'maxLines':
        return externObject.maxLines;
      case 'strutStyle':
        return externObject.strutStyle;
      case 'textWidthBasis':
        return externObject.textWidthBasis;
      case 'textHeightBehavior':
        return externObject.textHeightBehavior;
      case 'inlinePlaceholderBoxes':
        return externObject.inlinePlaceholderBoxes;
      case 'inlinePlaceholderScales':
        return externObject.inlinePlaceholderScales;
      case 'preferredLineHeight':
        return externObject.preferredLineHeight;
      case 'minIntrinsicWidth':
        return externObject.minIntrinsicWidth;
      case 'maxIntrinsicWidth':
        return externObject.maxIntrinsicWidth;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'size':
        return externObject.size;
      case 'didExceedMaxLines':
        return externObject.didExceedMaxLines;
      case 'markNeedsLayout':
        return externObject.markNeedsLayout;
      case 'setPlaceholderDimensions':
        return externObject.setPlaceholderDimensions;
      case 'computeDistanceToActualBaseline':
        return externObject.computeDistanceToActualBaseline;
      case 'layout':
        return externObject.layout;
      case 'paint':
        return externObject.paint;
      case 'getOffsetAfter':
        return externObject.getOffsetAfter;
      case 'getOffsetBefore':
        return externObject.getOffsetBefore;
      case 'getOffsetForCaret':
        return externObject.getOffsetForCaret;
      case 'getFullHeightForCaret':
        return externObject.getFullHeightForCaret;
      case 'getBoxesForSelection':
        return externObject.getBoxesForSelection;
      case 'getPositionForOffset':
        return externObject.getPositionForOffset;
      case 'getWordBoundary':
        return externObject.getWordBoundary;
      case 'getLineBoundary':
        return externObject.getLineBoundary;
      case 'computeLineMetrics':
        return externObject.computeLineMetrics;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'text':
        externObject.text = value;
        break;
      case 'textAlign':
        externObject.textAlign = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'textScaleFactor':
        externObject.textScaleFactor = value;
        break;
      case 'ellipsis':
        externObject.ellipsis = value;
        break;
      case 'locale':
        externObject.locale = value;
        break;
      case 'maxLines':
        externObject.maxLines = value;
        break;
      case 'strutStyle':
        externObject.strutStyle = value;
        break;
      case 'textWidthBasis':
        externObject.textWidthBasis = value;
        break;
      case 'textHeightBehavior':
        externObject.textHeightBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

