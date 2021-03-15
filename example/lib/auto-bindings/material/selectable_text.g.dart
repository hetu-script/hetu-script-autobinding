import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';


class SelectableTextClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SelectableText':
        return (data, {key, focusNode, style, strutStyle, textAlign, textDirection, textScaleFactor, showCursor = false, autofocus = false, toolbarOptions, minLines, maxLines, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorColor, dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, scrollPhysics, textHeightBehavior, textWidthBasis, onSelectionChanged}) => SelectableTextObjectBinding(SelectableText(data, key : key, focusNode : focusNode, style : style, strutStyle : strutStyle, textAlign : textAlign, textDirection : textDirection, textScaleFactor : textScaleFactor, showCursor : showCursor, autofocus : autofocus, toolbarOptions : toolbarOptions, minLines : minLines, maxLines : maxLines, cursorWidth : cursorWidth, cursorHeight : cursorHeight, cursorRadius : cursorRadius, cursorColor : cursorColor, dragStartBehavior : dragStartBehavior, enableInteractiveSelection : enableInteractiveSelection, selectionControls : selectionControls, onTap : onTap, scrollPhysics : scrollPhysics, textHeightBehavior : textHeightBehavior, textWidthBasis : textWidthBasis, onSelectionChanged : onSelectionChanged));
      case 'SelectableText.rich':
        return (textSpan, {key, focusNode, style, strutStyle, textAlign, textDirection, textScaleFactor, showCursor = false, autofocus = false, toolbarOptions, minLines, maxLines, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorColor, dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, scrollPhysics, textHeightBehavior, textWidthBasis, onSelectionChanged}) => SelectableTextObjectBinding(SelectableText.rich(textSpan, key : key, focusNode : focusNode, style : style, strutStyle : strutStyle, textAlign : textAlign, textDirection : textDirection, textScaleFactor : textScaleFactor, showCursor : showCursor, autofocus : autofocus, toolbarOptions : toolbarOptions, minLines : minLines, maxLines : maxLines, cursorWidth : cursorWidth, cursorHeight : cursorHeight, cursorRadius : cursorRadius, cursorColor : cursorColor, dragStartBehavior : dragStartBehavior, enableInteractiveSelection : enableInteractiveSelection, selectionControls : selectionControls, onTap : onTap, scrollPhysics : scrollPhysics, textHeightBehavior : textHeightBehavior, textWidthBasis : textWidthBasis, onSelectionChanged : onSelectionChanged));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SelectableTextObjectBinding extends HT_ExternObject<SelectableText> {
  SelectableTextObjectBinding(SelectableText value) : super(value);

  @override
  final typeid = HT_TypeId('SelectableText');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'textSpan':
        return externObject.textSpan;
      case 'focusNode':
        return externObject.focusNode;
      case 'style':
        return externObject.style;
      case 'strutStyle':
        return externObject.strutStyle;
      case 'textAlign':
        return externObject.textAlign;
      case 'textDirection':
        return externObject.textDirection;
      case 'textScaleFactor':
        return externObject.textScaleFactor;
      case 'autofocus':
        return externObject.autofocus;
      case 'minLines':
        return externObject.minLines;
      case 'maxLines':
        return externObject.maxLines;
      case 'showCursor':
        return externObject.showCursor;
      case 'cursorWidth':
        return externObject.cursorWidth;
      case 'cursorHeight':
        return externObject.cursorHeight;
      case 'cursorRadius':
        return externObject.cursorRadius;
      case 'cursorColor':
        return externObject.cursorColor;
      case 'enableInteractiveSelection':
        return externObject.enableInteractiveSelection;
      case 'selectionControls':
        return externObject.selectionControls;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'toolbarOptions':
        return externObject.toolbarOptions;
      case 'onTap':
        return externObject.onTap;
      case 'scrollPhysics':
        return externObject.scrollPhysics;
      case 'textHeightBehavior':
        return externObject.textHeightBehavior;
      case 'textWidthBasis':
        return externObject.textWidthBasis;
      case 'onSelectionChanged':
        return externObject.onSelectionChanged;
      case 'selectionEnabled':
        return externObject.selectionEnabled;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

