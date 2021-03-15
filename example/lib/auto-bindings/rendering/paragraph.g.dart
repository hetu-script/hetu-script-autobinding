import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:collection';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';

class TextOverflowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clip':
        return TextOverflow.clip;
      case 'fade':
        return TextOverflow.fade;
      case 'ellipsis':
        return TextOverflow.ellipsis;
      case 'visible':
        return TextOverflow.visible;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextParentData':
        return () => TextParentDataObjectBinding(TextParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextParentDataObjectBinding extends HT_ExternObject<TextParentData> {
  TextParentDataObjectBinding(TextParentData value) : super(value);

  @override
  final typeid = HT_TypeId('TextParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scale':
        return externObject.scale;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'scale':
        externObject.scale = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlaceholderSpanIndexSemanticsTagClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PlaceholderSpanIndexSemanticsTag':
        return (index) => PlaceholderSpanIndexSemanticsTagObjectBinding(PlaceholderSpanIndexSemanticsTag(index));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlaceholderSpanIndexSemanticsTagObjectBinding extends HT_ExternObject<PlaceholderSpanIndexSemanticsTag> {
  PlaceholderSpanIndexSemanticsTagObjectBinding(PlaceholderSpanIndexSemanticsTag value) : super(value);

  @override
  final typeid = HT_TypeId('PlaceholderSpanIndexSemanticsTag');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'index':
        return externObject.index;
      case 'hashCode':
        return externObject.hashCode;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderParagraphClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderParagraph':
        return (text, {textAlign = TextAlign.start, textDirection, softWrap = true, overflow = TextOverflow.clip, textScaleFactor = 1.0, maxLines, locale, strutStyle, textWidthBasis = TextWidthBasis.parent, textHeightBehavior, children}) => RenderParagraphObjectBinding(RenderParagraph(text, textAlign : textAlign, textDirection : textDirection, softWrap : softWrap, overflow : overflow, textScaleFactor : textScaleFactor, maxLines : maxLines, locale : locale, strutStyle : strutStyle, textWidthBasis : textWidthBasis, textHeightBehavior : textHeightBehavior, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderParagraphObjectBinding extends HT_ExternObject<RenderParagraph> {
  RenderParagraphObjectBinding(RenderParagraph value) : super(value);

  @override
  final typeid = HT_TypeId('RenderParagraph');

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
      case 'debugHasOverflowShader':
        return externObject.debugHasOverflowShader;
      case 'textSize':
        return externObject.textSize;
      case 'setupParentData':
        return externObject.setupParentData;
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
      case 'hitTestSelf':
        return externObject.hitTestSelf;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'handleEvent':
        return externObject.handleEvent;
      case 'systemFontsDidChange':
        return externObject.systemFontsDidChange;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'paint':
        return externObject.paint;
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
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      case 'assembleSemanticsNode':
        return externObject.assembleSemanticsNode;
      case 'clearSemantics':
        return externObject.clearSemantics;
      case 'debugDescribeChildren':
        return externObject.debugDescribeChildren;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
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
      case 'softWrap':
        externObject.softWrap = value;
        break;
      case 'overflow':
        externObject.overflow = value;
        break;
      case 'textScaleFactor':
        externObject.textScaleFactor = value;
        break;
      case 'maxLines':
        externObject.maxLines = value;
        break;
      case 'locale':
        externObject.locale = value;
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

