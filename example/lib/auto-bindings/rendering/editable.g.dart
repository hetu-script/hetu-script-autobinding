import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';

class SelectionChangedCauseClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tap':
        return SelectionChangedCause.tap;
      case 'doubleTap':
        return SelectionChangedCause.doubleTap;
      case 'longPress':
        return SelectionChangedCause.longPress;
      case 'forcePress':
        return SelectionChangedCause.forcePress;
      case 'keyboard':
        return SelectionChangedCause.keyboard;
      case 'drag':
        return SelectionChangedCause.drag;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionPointClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelectionPoint':
        return (point, direction) => TextSelectionPointObjectBinding(TextSelectionPoint(point, direction));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionPointObjectBinding extends HT_ExternObject<TextSelectionPoint> {
  TextSelectionPointObjectBinding(TextSelectionPoint value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelectionPoint');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'point':
        return externObject.point;
      case 'direction':
        return externObject.direction;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderEditableClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderEditable':
        return ({text, textDirection, textAlign = TextAlign.start, cursorColor, backgroundCursorColor, showCursor, hasFocus, startHandleLayerLink, endHandleLayerLink, maxLines = 1, minLines, expands = false, strutStyle, selectionColor, textScaleFactor = 1.0, selection, offset, onSelectionChanged, onCaretChanged, ignorePointer = false, readOnly = false, forceLine = true, textHeightBehavior, textWidthBasis = TextWidthBasis.parent, obscuringCharacter = '•', obscureText = false, locale, cursorWidth = 1.0, cursorHeight, cursorRadius, paintCursorAboveText = false, cursorOffset, devicePixelRatio = 1.0, selectionHeightStyle = ui.BoxHeightStyle.tight, selectionWidthStyle = ui.BoxWidthStyle.tight, enableInteractiveSelection, floatingCursorAddedMargin = const EdgeInsets.fromLTRB(4, 4, 4, 5), promptRectRange, promptRectColor, clipBehavior = Clip.hardEdge, textSelectionDelegate}) => RenderEditableObjectBinding(RenderEditable(text : text, textDirection : textDirection, textAlign : textAlign, cursorColor : cursorColor, backgroundCursorColor : backgroundCursorColor, showCursor : showCursor, hasFocus : hasFocus, startHandleLayerLink : startHandleLayerLink, endHandleLayerLink : endHandleLayerLink, maxLines : maxLines, minLines : minLines, expands : expands, strutStyle : strutStyle, selectionColor : selectionColor, textScaleFactor : textScaleFactor, selection : selection, offset : offset, onSelectionChanged : onSelectionChanged, onCaretChanged : onCaretChanged, ignorePointer : ignorePointer, readOnly : readOnly, forceLine : forceLine, textHeightBehavior : textHeightBehavior, textWidthBasis : textWidthBasis, obscuringCharacter : obscuringCharacter, obscureText : obscureText, locale : locale, cursorWidth : cursorWidth, cursorHeight : cursorHeight, cursorRadius : cursorRadius, paintCursorAboveText : paintCursorAboveText, cursorOffset : cursorOffset, devicePixelRatio : devicePixelRatio, selectionHeightStyle : selectionHeightStyle, selectionWidthStyle : selectionWidthStyle, enableInteractiveSelection : enableInteractiveSelection, floatingCursorAddedMargin : floatingCursorAddedMargin, promptRectRange : promptRectRange, promptRectColor : promptRectColor, clipBehavior : clipBehavior, textSelectionDelegate : textSelectionDelegate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderEditableObjectBinding extends HT_ExternObject<RenderEditable> {
  RenderEditableObjectBinding(RenderEditable value) : super(value);

  @override
  final typeid = HT_TypeId('RenderEditable');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onSelectionChanged':
        return externObject.onSelectionChanged;
      case 'onCaretChanged':
        return externObject.onCaretChanged;
      case 'ignorePointer':
        return externObject.ignorePointer;
      case 'textSelectionDelegate':
        return externObject.textSelectionDelegate;
      case 'textHeightBehavior':
        return externObject.textHeightBehavior;
      case 'textWidthBasis':
        return externObject.textWidthBasis;
      case 'devicePixelRatio':
        return externObject.devicePixelRatio;
      case 'obscuringCharacter':
        return externObject.obscuringCharacter;
      case 'obscureText':
        return externObject.obscureText;
      case 'selectionStartInViewport':
        return externObject.selectionStartInViewport;
      case 'selectionEndInViewport':
        return externObject.selectionEndInViewport;
      case 'text':
        return externObject.text;
      case 'textAlign':
        return externObject.textAlign;
      case 'textDirection':
        return externObject.textDirection;
      case 'locale':
        return externObject.locale;
      case 'strutStyle':
        return externObject.strutStyle;
      case 'cursorColor':
        return externObject.cursorColor;
      case 'backgroundCursorColor':
        return externObject.backgroundCursorColor;
      case 'showCursor':
        return externObject.showCursor;
      case 'hasFocus':
        return externObject.hasFocus;
      case 'forceLine':
        return externObject.forceLine;
      case 'readOnly':
        return externObject.readOnly;
      case 'maxLines':
        return externObject.maxLines;
      case 'minLines':
        return externObject.minLines;
      case 'expands':
        return externObject.expands;
      case 'selectionColor':
        return externObject.selectionColor;
      case 'textScaleFactor':
        return externObject.textScaleFactor;
      case 'selection':
        return externObject.selection;
      case 'offset':
        return externObject.offset;
      case 'cursorWidth':
        return externObject.cursorWidth;
      case 'cursorHeight':
        return externObject.cursorHeight;
      case 'paintCursorAboveText':
        return externObject.paintCursorAboveText;
      case 'cursorOffset':
        return externObject.cursorOffset;
      case 'cursorRadius':
        return externObject.cursorRadius;
      case 'startHandleLayerLink':
        return externObject.startHandleLayerLink;
      case 'endHandleLayerLink':
        return externObject.endHandleLayerLink;
      case 'floatingCursorAddedMargin':
        return externObject.floatingCursorAddedMargin;
      case 'selectionHeightStyle':
        return externObject.selectionHeightStyle;
      case 'selectionWidthStyle':
        return externObject.selectionWidthStyle;
      case 'enableInteractiveSelection':
        return externObject.enableInteractiveSelection;
      case 'selectionEnabled':
        return externObject.selectionEnabled;
      case 'promptRectColor':
        return externObject.promptRectColor;
      case 'maxScrollExtent':
        return externObject.maxScrollExtent;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'preferredLineHeight':
        return externObject.preferredLineHeight;
      case 'lastSecondaryTapDownPosition':
        return externObject.lastSecondaryTapDownPosition;
      case 'markNeedsTextLayout':
        return externObject.markNeedsTextLayout;
      case 'systemFontsDidChange':
        return externObject.systemFontsDidChange;
      case 'setPromptRectRange':
        return externObject.setPromptRectRange;
      case 'describeSemanticsConfiguration':
        return externObject.describeSemanticsConfiguration;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'getEndpointsForSelection':
        return externObject.getEndpointsForSelection;
      case 'getRectForComposingRange':
        return externObject.getRectForComposingRange;
      case 'getPositionForPoint':
        return externObject.getPositionForPoint;
      case 'getLocalRectForCaret':
        return externObject.getLocalRectForCaret;
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
      case 'handleEvent':
        return externObject.handleEvent;
      case 'handleSecondaryTapDown':
        return externObject.handleSecondaryTapDown;
      case 'handleTapDown':
        return externObject.handleTapDown;
      case 'handleTap':
        return externObject.handleTap;
      case 'handleDoubleTap':
        return externObject.handleDoubleTap;
      case 'handleLongPress':
        return externObject.handleLongPress;
      case 'selectPosition':
        return externObject.selectPosition;
      case 'selectPositionAt':
        return externObject.selectPositionAt;
      case 'selectWord':
        return externObject.selectWord;
      case 'selectWordsInRange':
        return externObject.selectWordsInRange;
      case 'selectWordEdge':
        return externObject.selectWordEdge;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'setFloatingCursor':
        return externObject.setFloatingCursor;
      case 'calculateBoundedFloatingCursorOffset':
        return externObject.calculateBoundedFloatingCursorOffset;
      case 'paint':
        return externObject.paint;
      case 'describeApproximatePaintClip':
        return externObject.describeApproximatePaintClip;
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
      case 'onSelectionChanged':
        externObject.onSelectionChanged = value;
        break;
      case 'onCaretChanged':
        externObject.onCaretChanged = value;
        break;
      case 'ignorePointer':
        externObject.ignorePointer = value;
        break;
      case 'textSelectionDelegate':
        externObject.textSelectionDelegate = value;
        break;
      case 'textHeightBehavior':
        externObject.textHeightBehavior = value;
        break;
      case 'textWidthBasis':
        externObject.textWidthBasis = value;
        break;
      case 'devicePixelRatio':
        externObject.devicePixelRatio = value;
        break;
      case 'obscuringCharacter':
        externObject.obscuringCharacter = value;
        break;
      case 'obscureText':
        externObject.obscureText = value;
        break;
      case 'text':
        externObject.text = value;
        break;
      case 'textAlign':
        externObject.textAlign = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'locale':
        externObject.locale = value;
        break;
      case 'strutStyle':
        externObject.strutStyle = value;
        break;
      case 'cursorColor':
        externObject.cursorColor = value;
        break;
      case 'backgroundCursorColor':
        externObject.backgroundCursorColor = value;
        break;
      case 'showCursor':
        externObject.showCursor = value;
        break;
      case 'hasFocus':
        externObject.hasFocus = value;
        break;
      case 'forceLine':
        externObject.forceLine = value;
        break;
      case 'readOnly':
        externObject.readOnly = value;
        break;
      case 'maxLines':
        externObject.maxLines = value;
        break;
      case 'minLines':
        externObject.minLines = value;
        break;
      case 'expands':
        externObject.expands = value;
        break;
      case 'selectionColor':
        externObject.selectionColor = value;
        break;
      case 'textScaleFactor':
        externObject.textScaleFactor = value;
        break;
      case 'selection':
        externObject.selection = value;
        break;
      case 'offset':
        externObject.offset = value;
        break;
      case 'cursorWidth':
        externObject.cursorWidth = value;
        break;
      case 'cursorHeight':
        externObject.cursorHeight = value;
        break;
      case 'paintCursorAboveText':
        externObject.paintCursorAboveText = value;
        break;
      case 'cursorOffset':
        externObject.cursorOffset = value;
        break;
      case 'cursorRadius':
        externObject.cursorRadius = value;
        break;
      case 'startHandleLayerLink':
        externObject.startHandleLayerLink = value;
        break;
      case 'endHandleLayerLink':
        externObject.endHandleLayerLink = value;
        break;
      case 'floatingCursorAddedMargin':
        externObject.floatingCursorAddedMargin = value;
        break;
      case 'selectionHeightStyle':
        externObject.selectionHeightStyle = value;
        break;
      case 'selectionWidthStyle':
        externObject.selectionWidthStyle = value;
        break;
      case 'enableInteractiveSelection':
        externObject.enableInteractiveSelection = value;
        break;
      case 'promptRectColor':
        externObject.promptRectColor = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

