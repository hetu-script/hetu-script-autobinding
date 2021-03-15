import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui'as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';


class TextFieldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextField':
        return ({key, controller, focusNode, decoration = const InputDecoration(), keyboardType, textInputAction, textCapitalization = TextCapitalization.none, style, strutStyle, textAlign = TextAlign.start, textAlignVertical, textDirection, readOnly = false, toolbarOptions, showCursor, autofocus = false, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, maxLines = 1, minLines, expands = false, maxLength, maxLengthEnforced = true, maxLengthEnforcement, onChanged, onEditingComplete, onSubmitted, onAppPrivateCommand, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorColor, selectionHeightStyle = ui.BoxHeightStyle.tight, selectionWidthStyle = ui.BoxWidthStyle.tight, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, mouseCursor, buildCounter, scrollController, scrollPhysics, autofillHints, restorationId}) => TextFieldObjectBinding(TextField(key : key, controller : controller, focusNode : focusNode, decoration : decoration, keyboardType : keyboardType, textInputAction : textInputAction, textCapitalization : textCapitalization, style : style, strutStyle : strutStyle, textAlign : textAlign, textAlignVertical : textAlignVertical, textDirection : textDirection, readOnly : readOnly, toolbarOptions : toolbarOptions, showCursor : showCursor, autofocus : autofocus, obscuringCharacter : obscuringCharacter, obscureText : obscureText, autocorrect : autocorrect, smartDashesType : smartDashesType, smartQuotesType : smartQuotesType, enableSuggestions : enableSuggestions, maxLines : maxLines, minLines : minLines, expands : expands, maxLength : maxLength, maxLengthEnforced : maxLengthEnforced, maxLengthEnforcement : maxLengthEnforcement, onChanged : onChanged, onEditingComplete : onEditingComplete, onSubmitted : onSubmitted, onAppPrivateCommand : onAppPrivateCommand, inputFormatters : inputFormatters, enabled : enabled, cursorWidth : cursorWidth, cursorHeight : cursorHeight, cursorRadius : cursorRadius, cursorColor : cursorColor, selectionHeightStyle : selectionHeightStyle, selectionWidthStyle : selectionWidthStyle, keyboardAppearance : keyboardAppearance, scrollPadding : scrollPadding, dragStartBehavior : dragStartBehavior, enableInteractiveSelection : enableInteractiveSelection, selectionControls : selectionControls, onTap : onTap, mouseCursor : mouseCursor, buildCounter : buildCounter, scrollController : scrollController, scrollPhysics : scrollPhysics, autofillHints : autofillHints, restorationId : restorationId));
      case 'TextField.noMaxLength':
        return TextField.noMaxLength;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextFieldObjectBinding extends HT_ExternObject<TextField> {
  TextFieldObjectBinding(TextField value) : super(value);

  @override
  final typeid = HT_TypeId('TextField');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'focusNode':
        return externObject.focusNode;
      case 'decoration':
        return externObject.decoration;
      case 'keyboardType':
        return externObject.keyboardType;
      case 'textInputAction':
        return externObject.textInputAction;
      case 'textCapitalization':
        return externObject.textCapitalization;
      case 'style':
        return externObject.style;
      case 'strutStyle':
        return externObject.strutStyle;
      case 'textAlign':
        return externObject.textAlign;
      case 'textAlignVertical':
        return externObject.textAlignVertical;
      case 'textDirection':
        return externObject.textDirection;
      case 'autofocus':
        return externObject.autofocus;
      case 'obscuringCharacter':
        return externObject.obscuringCharacter;
      case 'obscureText':
        return externObject.obscureText;
      case 'autocorrect':
        return externObject.autocorrect;
      case 'smartDashesType':
        return externObject.smartDashesType;
      case 'smartQuotesType':
        return externObject.smartQuotesType;
      case 'enableSuggestions':
        return externObject.enableSuggestions;
      case 'maxLines':
        return externObject.maxLines;
      case 'minLines':
        return externObject.minLines;
      case 'expands':
        return externObject.expands;
      case 'readOnly':
        return externObject.readOnly;
      case 'toolbarOptions':
        return externObject.toolbarOptions;
      case 'showCursor':
        return externObject.showCursor;
      case 'maxLength':
        return externObject.maxLength;
      case 'maxLengthEnforced':
        return externObject.maxLengthEnforced;
      case 'maxLengthEnforcement':
        return externObject.maxLengthEnforcement;
      case 'onChanged':
        return externObject.onChanged;
      case 'onEditingComplete':
        return externObject.onEditingComplete;
      case 'onSubmitted':
        return externObject.onSubmitted;
      case 'onAppPrivateCommand':
        return externObject.onAppPrivateCommand;
      case 'inputFormatters':
        return externObject.inputFormatters;
      case 'enabled':
        return externObject.enabled;
      case 'cursorWidth':
        return externObject.cursorWidth;
      case 'cursorHeight':
        return externObject.cursorHeight;
      case 'cursorRadius':
        return externObject.cursorRadius;
      case 'cursorColor':
        return externObject.cursorColor;
      case 'selectionHeightStyle':
        return externObject.selectionHeightStyle;
      case 'selectionWidthStyle':
        return externObject.selectionWidthStyle;
      case 'keyboardAppearance':
        return externObject.keyboardAppearance;
      case 'scrollPadding':
        return externObject.scrollPadding;
      case 'enableInteractiveSelection':
        return externObject.enableInteractiveSelection;
      case 'selectionControls':
        return externObject.selectionControls;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'onTap':
        return externObject.onTap;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'buildCounter':
        return externObject.buildCounter;
      case 'scrollPhysics':
        return externObject.scrollPhysics;
      case 'scrollController':
        return externObject.scrollController;
      case 'autofillHints':
        return externObject.autofillHints;
      case 'restorationId':
        return externObject.restorationId;
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

