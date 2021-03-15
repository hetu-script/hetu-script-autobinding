import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';


class TextEditingControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextEditingController':
        return ({text}) => TextEditingControllerObjectBinding(TextEditingController(text : text));
      case 'TextEditingController.fromValue':
        return (value) => TextEditingControllerObjectBinding(TextEditingController.fromValue(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextEditingControllerObjectBinding extends HT_ExternObject<TextEditingController> {
  TextEditingControllerObjectBinding(TextEditingController value) : super(value);

  @override
  final typeid = HT_TypeId('TextEditingController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'text':
        return externObject.text;
      case 'selection':
        return externObject.selection;
      case 'buildTextSpan':
        return externObject.buildTextSpan;
      case 'clear':
        return externObject.clear;
      case 'clearComposing':
        return externObject.clearComposing;
      case 'isSelectionWithinTextBounds':
        return externObject.isSelectionWithinTextBounds;
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
      case 'value':
        externObject.value = value;
        break;
      case 'selection':
        externObject.selection = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ToolbarOptionsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ToolbarOptions':
        return ({copy = false, cut = false, paste = false, selectAll = false}) => ToolbarOptionsObjectBinding(ToolbarOptions(copy : copy, cut : cut, paste : paste, selectAll : selectAll));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ToolbarOptionsObjectBinding extends HT_ExternObject<ToolbarOptions> {
  ToolbarOptionsObjectBinding(ToolbarOptions value) : super(value);

  @override
  final typeid = HT_TypeId('ToolbarOptions');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'copy':
        return externObject.copy;
      case 'cut':
        return externObject.cut;
      case 'paste':
        return externObject.paste;
      case 'selectAll':
        return externObject.selectAll;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class EditableTextClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'EditableText':
        return ({key, controller, focusNode, readOnly = false, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, style, strutStyle, cursorColor, backgroundCursorColor, textAlign = TextAlign.start, textDirection, locale, textScaleFactor, maxLines = 1, minLines, expands = false, forceLine = true, textHeightBehavior, textWidthBasis = TextWidthBasis.parent, autofocus = false, showCursor, showSelectionHandles = false, selectionColor, selectionControls, keyboardType, textInputAction, textCapitalization = TextCapitalization.none, onChanged, onEditingComplete, onSubmitted, onAppPrivateCommand, onSelectionChanged, onSelectionHandleTapped, inputFormatters, mouseCursor, rendererIgnoresPointer = false, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorOpacityAnimates = false, cursorOffset, paintCursorAboveText = false, selectionHeightStyle = ui.BoxHeightStyle.tight, selectionWidthStyle = ui.BoxWidthStyle.tight, scrollPadding = const EdgeInsets.all(20.0), keyboardAppearance = Brightness.light, dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, scrollController, scrollPhysics, autocorrectionTextRectColor, toolbarOptions = const ToolbarOptions(copy: true, cut: true, paste: true, selectAll: true), autofillHints, clipBehavior = Clip.hardEdge, restorationId}) => EditableTextObjectBinding(EditableText(key : key, controller : controller, focusNode : focusNode, readOnly : readOnly, obscuringCharacter : obscuringCharacter, obscureText : obscureText, autocorrect : autocorrect, smartDashesType : smartDashesType, smartQuotesType : smartQuotesType, enableSuggestions : enableSuggestions, style : style, strutStyle : strutStyle, cursorColor : cursorColor, backgroundCursorColor : backgroundCursorColor, textAlign : textAlign, textDirection : textDirection, locale : locale, textScaleFactor : textScaleFactor, maxLines : maxLines, minLines : minLines, expands : expands, forceLine : forceLine, textHeightBehavior : textHeightBehavior, textWidthBasis : textWidthBasis, autofocus : autofocus, showCursor : showCursor, showSelectionHandles : showSelectionHandles, selectionColor : selectionColor, selectionControls : selectionControls, keyboardType : keyboardType, textInputAction : textInputAction, textCapitalization : textCapitalization, onChanged : onChanged, onEditingComplete : onEditingComplete, onSubmitted : onSubmitted, onAppPrivateCommand : onAppPrivateCommand, onSelectionChanged : onSelectionChanged, onSelectionHandleTapped : onSelectionHandleTapped, inputFormatters : inputFormatters, mouseCursor : mouseCursor, rendererIgnoresPointer : rendererIgnoresPointer, cursorWidth : cursorWidth, cursorHeight : cursorHeight, cursorRadius : cursorRadius, cursorOpacityAnimates : cursorOpacityAnimates, cursorOffset : cursorOffset, paintCursorAboveText : paintCursorAboveText, selectionHeightStyle : selectionHeightStyle, selectionWidthStyle : selectionWidthStyle, scrollPadding : scrollPadding, keyboardAppearance : keyboardAppearance, dragStartBehavior : dragStartBehavior, enableInteractiveSelection : enableInteractiveSelection, scrollController : scrollController, scrollPhysics : scrollPhysics, autocorrectionTextRectColor : autocorrectionTextRectColor, toolbarOptions : toolbarOptions, autofillHints : autofillHints, clipBehavior : clipBehavior, restorationId : restorationId));
      case 'EditableText.debugDeterministicCursor':
        return EditableText.debugDeterministicCursor;
      default:
        throw HTErr_Undefined(id);
    }
  }
  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'EditableText.debugDeterministicCursor':
        return EditableText.debugDeterministicCursor = value;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class EditableTextObjectBinding extends HT_ExternObject<EditableText> {
  EditableTextObjectBinding(EditableText value) : super(value);

  @override
  final typeid = HT_TypeId('EditableText');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'focusNode':
        return externObject.focusNode;
      case 'obscuringCharacter':
        return externObject.obscuringCharacter;
      case 'obscureText':
        return externObject.obscureText;
      case 'textHeightBehavior':
        return externObject.textHeightBehavior;
      case 'textWidthBasis':
        return externObject.textWidthBasis;
      case 'readOnly':
        return externObject.readOnly;
      case 'forceLine':
        return externObject.forceLine;
      case 'toolbarOptions':
        return externObject.toolbarOptions;
      case 'showSelectionHandles':
        return externObject.showSelectionHandles;
      case 'showCursor':
        return externObject.showCursor;
      case 'autocorrect':
        return externObject.autocorrect;
      case 'smartDashesType':
        return externObject.smartDashesType;
      case 'smartQuotesType':
        return externObject.smartQuotesType;
      case 'enableSuggestions':
        return externObject.enableSuggestions;
      case 'style':
        return externObject.style;
      case 'textAlign':
        return externObject.textAlign;
      case 'textDirection':
        return externObject.textDirection;
      case 'textCapitalization':
        return externObject.textCapitalization;
      case 'locale':
        return externObject.locale;
      case 'textScaleFactor':
        return externObject.textScaleFactor;
      case 'cursorColor':
        return externObject.cursorColor;
      case 'autocorrectionTextRectColor':
        return externObject.autocorrectionTextRectColor;
      case 'backgroundCursorColor':
        return externObject.backgroundCursorColor;
      case 'maxLines':
        return externObject.maxLines;
      case 'minLines':
        return externObject.minLines;
      case 'expands':
        return externObject.expands;
      case 'autofocus':
        return externObject.autofocus;
      case 'selectionColor':
        return externObject.selectionColor;
      case 'selectionControls':
        return externObject.selectionControls;
      case 'keyboardType':
        return externObject.keyboardType;
      case 'textInputAction':
        return externObject.textInputAction;
      case 'onChanged':
        return externObject.onChanged;
      case 'onEditingComplete':
        return externObject.onEditingComplete;
      case 'onSubmitted':
        return externObject.onSubmitted;
      case 'onAppPrivateCommand':
        return externObject.onAppPrivateCommand;
      case 'onSelectionChanged':
        return externObject.onSelectionChanged;
      case 'onSelectionHandleTapped':
        return externObject.onSelectionHandleTapped;
      case 'inputFormatters':
        return externObject.inputFormatters;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'rendererIgnoresPointer':
        return externObject.rendererIgnoresPointer;
      case 'cursorWidth':
        return externObject.cursorWidth;
      case 'cursorHeight':
        return externObject.cursorHeight;
      case 'cursorRadius':
        return externObject.cursorRadius;
      case 'cursorOpacityAnimates':
        return externObject.cursorOpacityAnimates;
      case 'cursorOffset':
        return externObject.cursorOffset;
      case 'paintCursorAboveText':
        return externObject.paintCursorAboveText;
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
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'scrollController':
        return externObject.scrollController;
      case 'scrollPhysics':
        return externObject.scrollPhysics;
      case 'autofillHints':
        return externObject.autofillHints;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'restorationId':
        return externObject.restorationId;
      case 'strutStyle':
        return externObject.strutStyle;
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

class EditableTextStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'EditableTextState':
        return () => EditableTextStateObjectBinding(EditableTextState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class EditableTextStateObjectBinding extends HT_ExternObject<EditableTextState> {
  EditableTextStateObjectBinding(EditableTextState value) : super(value);

  @override
  final typeid = HT_TypeId('EditableTextState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'currentAutofillScope':
        return externObject.currentAutofillScope;
      case 'wantKeepAlive':
        return externObject.wantKeepAlive;
      case 'cutEnabled':
        return externObject.cutEnabled;
      case 'copyEnabled':
        return externObject.copyEnabled;
      case 'pasteEnabled':
        return externObject.pasteEnabled;
      case 'selectAllEnabled':
        return externObject.selectAllEnabled;
      case 'currentTextEditingValue':
        return externObject.currentTextEditingValue;
      case 'cursorCurrentlyVisible':
        return externObject.cursorCurrentlyVisible;
      case 'cursorBlinkInterval':
        return externObject.cursorBlinkInterval;
      case 'selectionOverlay':
        return externObject.selectionOverlay;
      case 'renderEditable':
        return externObject.renderEditable;
      case 'textEditingValue':
        return externObject.textEditingValue;
      case 'autofillId':
        return externObject.autofillId;
      case 'textInputConfiguration':
        return externObject.textInputConfiguration;
      case 'initState':
        return externObject.initState;
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'dispose':
        return externObject.dispose;
      case 'updateEditingValue':
        return externObject.updateEditingValue;
      case 'performAction':
        return externObject.performAction;
      case 'performPrivateCommand':
        return externObject.performPrivateCommand;
      case 'updateFloatingCursor':
        return externObject.updateFloatingCursor;
      case 'beginBatchEdit':
        return externObject.beginBatchEdit;
      case 'endBatchEdit':
        return externObject.endBatchEdit;
      case 'connectionClosed':
        return externObject.connectionClosed;
      case 'requestKeyboard':
        return externObject.requestKeyboard;
      case 'didChangeMetrics':
        return externObject.didChangeMetrics;
      case 'bringIntoView':
        return externObject.bringIntoView;
      case 'showToolbar':
        return externObject.showToolbar;
      case 'hideToolbar':
        return externObject.hideToolbar;
      case 'toggleToolbar':
        return externObject.toggleToolbar;
      case 'showAutocorrectionPromptRect':
        return externObject.showAutocorrectionPromptRect;
      case 'build':
        return externObject.build;
      case 'buildTextSpan':
        return externObject.buildTextSpan;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'textEditingValue':
        externObject.textEditingValue = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

