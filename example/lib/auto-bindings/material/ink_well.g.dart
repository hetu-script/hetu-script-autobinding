import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class InkResponseClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InkResponse':
        return ({key, child, onTap, onTapDown, onTapCancel, onDoubleTap, onLongPress, onHighlightChanged, onHover, mouseCursor, containedInkWell = false, highlightShape = BoxShape.circle, radius, borderRadius, customBorder, focusColor, hoverColor, highlightColor, overlayColor, splashColor, splashFactory, enableFeedback = true, excludeFromSemantics = false, focusNode, canRequestFocus = true, onFocusChange, autofocus = false}) => InkResponseObjectBinding(InkResponse(key : key, child : child, onTap : onTap, onTapDown : onTapDown, onTapCancel : onTapCancel, onDoubleTap : onDoubleTap, onLongPress : onLongPress, onHighlightChanged : onHighlightChanged, onHover : onHover, mouseCursor : mouseCursor, containedInkWell : containedInkWell, highlightShape : highlightShape, radius : radius, borderRadius : borderRadius, customBorder : customBorder, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, overlayColor : overlayColor, splashColor : splashColor, splashFactory : splashFactory, enableFeedback : enableFeedback, excludeFromSemantics : excludeFromSemantics, focusNode : focusNode, canRequestFocus : canRequestFocus, onFocusChange : onFocusChange, autofocus : autofocus));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InkResponseObjectBinding extends HT_ExternObject<InkResponse> {
  InkResponseObjectBinding(InkResponse value) : super(value);

  @override
  final typeid = HT_TypeId('InkResponse');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'onTap':
        return externObject.onTap;
      case 'onTapDown':
        return externObject.onTapDown;
      case 'onTapCancel':
        return externObject.onTapCancel;
      case 'onDoubleTap':
        return externObject.onDoubleTap;
      case 'onLongPress':
        return externObject.onLongPress;
      case 'onHighlightChanged':
        return externObject.onHighlightChanged;
      case 'onHover':
        return externObject.onHover;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'containedInkWell':
        return externObject.containedInkWell;
      case 'highlightShape':
        return externObject.highlightShape;
      case 'radius':
        return externObject.radius;
      case 'borderRadius':
        return externObject.borderRadius;
      case 'customBorder':
        return externObject.customBorder;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'highlightColor':
        return externObject.highlightColor;
      case 'overlayColor':
        return externObject.overlayColor;
      case 'splashColor':
        return externObject.splashColor;
      case 'splashFactory':
        return externObject.splashFactory;
      case 'enableFeedback':
        return externObject.enableFeedback;
      case 'excludeFromSemantics':
        return externObject.excludeFromSemantics;
      case 'onFocusChange':
        return externObject.onFocusChange;
      case 'autofocus':
        return externObject.autofocus;
      case 'focusNode':
        return externObject.focusNode;
      case 'canRequestFocus':
        return externObject.canRequestFocus;
      case 'getRectCallback':
        return externObject.getRectCallback;
      case 'build':
        return externObject.build;
      case 'debugCheckContext':
        return externObject.debugCheckContext;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class InkWellClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InkWell':
        return ({key, child, onTap, onDoubleTap, onLongPress, onTapDown, onTapCancel, onHighlightChanged, onHover, mouseCursor, focusColor, hoverColor, highlightColor, overlayColor, splashColor, splashFactory, radius, borderRadius, customBorder, enableFeedback = true, excludeFromSemantics = false, focusNode, canRequestFocus = true, onFocusChange, autofocus = false}) => InkWellObjectBinding(InkWell(key : key, child : child, onTap : onTap, onDoubleTap : onDoubleTap, onLongPress : onLongPress, onTapDown : onTapDown, onTapCancel : onTapCancel, onHighlightChanged : onHighlightChanged, onHover : onHover, mouseCursor : mouseCursor, focusColor : focusColor, hoverColor : hoverColor, highlightColor : highlightColor, overlayColor : overlayColor, splashColor : splashColor, splashFactory : splashFactory, radius : radius, borderRadius : borderRadius, customBorder : customBorder, enableFeedback : enableFeedback, excludeFromSemantics : excludeFromSemantics, focusNode : focusNode, canRequestFocus : canRequestFocus, onFocusChange : onFocusChange, autofocus : autofocus));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InkWellObjectBinding extends HT_ExternObject<InkWell> {
  InkWellObjectBinding(InkWell value) : super(value);

  @override
  final typeid = HT_TypeId('InkWell');


}

