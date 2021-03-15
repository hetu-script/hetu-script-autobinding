import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
const _kDefaultRoundedBorderSide = BorderSide(color: CupertinoDynamicColor.withBrightness(color: Color(0x33000000), darkColor: Color(0x33FFFFFF)), style: BorderStyle.solid, width: 0.0);
const _kDefaultRoundedBorder = Border(top: _kDefaultRoundedBorderSide, bottom: _kDefaultRoundedBorderSide, left: _kDefaultRoundedBorderSide, right: _kDefaultRoundedBorderSide);
const _kDefaultRoundedBorderDecoration = BoxDecoration(color: CupertinoDynamicColor.withBrightness(color: CupertinoColors.white, darkColor: CupertinoColors.black), border: _kDefaultRoundedBorder, borderRadius: BorderRadius.all(Radius.circular(5.0)));
const _kDefaultPlaceholderStyle = TextStyle(fontWeight: FontWeight.w400, color: CupertinoColors.placeholderText);

class OverlayVisibilityModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'never':
        return OverlayVisibilityMode.never;
      case 'editing':
        return OverlayVisibilityMode.editing;
      case 'notEditing':
        return OverlayVisibilityMode.notEditing;
      case 'always':
        return OverlayVisibilityMode.always;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTextFieldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTextField':
        return ({key, controller, focusNode, decoration = _kDefaultRoundedBorderDecoration, padding = const EdgeInsets.all(6.0), placeholder, placeholderStyle = const TextStyle(fontWeight: FontWeight.w400, color: CupertinoColors.placeholderText), prefix, prefixMode = OverlayVisibilityMode.always, suffix, suffixMode = OverlayVisibilityMode.always, clearButtonMode = OverlayVisibilityMode.never, keyboardType, textInputAction, textCapitalization = TextCapitalization.none, style, strutStyle, textAlign = TextAlign.start, textAlignVertical, readOnly = false, toolbarOptions, showCursor, autofocus = false, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, maxLines = 1, minLines, expands = false, maxLength, maxLengthEnforced = true, maxLengthEnforcement, onChanged, onEditingComplete, onSubmitted, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorRadius = const Radius.circular(2.0), cursorColor, selectionHeightStyle = ui.BoxHeightStyle.tight, selectionWidthStyle = ui.BoxWidthStyle.tight, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, scrollController, scrollPhysics, autofillHints, restorationId}) => CupertinoTextFieldObjectBinding(CupertinoTextField(key : key, controller : controller, focusNode : focusNode, decoration : decoration, padding : padding, placeholder : placeholder, placeholderStyle : placeholderStyle, prefix : prefix, prefixMode : prefixMode, suffix : suffix, suffixMode : suffixMode, clearButtonMode : clearButtonMode, keyboardType : keyboardType, textInputAction : textInputAction, textCapitalization : textCapitalization, style : style, strutStyle : strutStyle, textAlign : textAlign, textAlignVertical : textAlignVertical, readOnly : readOnly, toolbarOptions : toolbarOptions, showCursor : showCursor, autofocus : autofocus, obscuringCharacter : obscuringCharacter, obscureText : obscureText, autocorrect : autocorrect, smartDashesType : smartDashesType, smartQuotesType : smartQuotesType, enableSuggestions : enableSuggestions, maxLines : maxLines, minLines : minLines, expands : expands, maxLength : maxLength, maxLengthEnforced : maxLengthEnforced, maxLengthEnforcement : maxLengthEnforcement, onChanged : onChanged, onEditingComplete : onEditingComplete, onSubmitted : onSubmitted, inputFormatters : inputFormatters, enabled : enabled, cursorWidth : cursorWidth, cursorHeight : cursorHeight, cursorRadius : cursorRadius, cursorColor : cursorColor, selectionHeightStyle : selectionHeightStyle, selectionWidthStyle : selectionWidthStyle, keyboardAppearance : keyboardAppearance, scrollPadding : scrollPadding, dragStartBehavior : dragStartBehavior, enableInteractiveSelection : enableInteractiveSelection, selectionControls : selectionControls, onTap : onTap, scrollController : scrollController, scrollPhysics : scrollPhysics, autofillHints : autofillHints, restorationId : restorationId));
      case 'CupertinoTextField.borderless':
        return ({key, controller, focusNode, decoration, padding = const EdgeInsets.all(6.0), placeholder, placeholderStyle = _kDefaultPlaceholderStyle, prefix, prefixMode = OverlayVisibilityMode.always, suffix, suffixMode = OverlayVisibilityMode.always, clearButtonMode = OverlayVisibilityMode.never, keyboardType, textInputAction, textCapitalization = TextCapitalization.none, style, strutStyle, textAlign = TextAlign.start, textAlignVertical, readOnly = false, toolbarOptions, showCursor, autofocus = false, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, maxLines = 1, minLines, expands = false, maxLength, maxLengthEnforced = true, maxLengthEnforcement, onChanged, onEditingComplete, onSubmitted, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorRadius = const Radius.circular(2.0), cursorColor, selectionHeightStyle = ui.BoxHeightStyle.tight, selectionWidthStyle = ui.BoxWidthStyle.tight, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, scrollController, scrollPhysics, autofillHints, restorationId}) => CupertinoTextFieldObjectBinding(CupertinoTextField.borderless(key : key, controller : controller, focusNode : focusNode, decoration : decoration, padding : padding, placeholder : placeholder, placeholderStyle : placeholderStyle, prefix : prefix, prefixMode : prefixMode, suffix : suffix, suffixMode : suffixMode, clearButtonMode : clearButtonMode, keyboardType : keyboardType, textInputAction : textInputAction, textCapitalization : textCapitalization, style : style, strutStyle : strutStyle, textAlign : textAlign, textAlignVertical : textAlignVertical, readOnly : readOnly, toolbarOptions : toolbarOptions, showCursor : showCursor, autofocus : autofocus, obscuringCharacter : obscuringCharacter, obscureText : obscureText, autocorrect : autocorrect, smartDashesType : smartDashesType, smartQuotesType : smartQuotesType, enableSuggestions : enableSuggestions, maxLines : maxLines, minLines : minLines, expands : expands, maxLength : maxLength, maxLengthEnforced : maxLengthEnforced, maxLengthEnforcement : maxLengthEnforcement, onChanged : onChanged, onEditingComplete : onEditingComplete, onSubmitted : onSubmitted, inputFormatters : inputFormatters, enabled : enabled, cursorWidth : cursorWidth, cursorHeight : cursorHeight, cursorRadius : cursorRadius, cursorColor : cursorColor, selectionHeightStyle : selectionHeightStyle, selectionWidthStyle : selectionWidthStyle, keyboardAppearance : keyboardAppearance, scrollPadding : scrollPadding, dragStartBehavior : dragStartBehavior, enableInteractiveSelection : enableInteractiveSelection, selectionControls : selectionControls, onTap : onTap, scrollController : scrollController, scrollPhysics : scrollPhysics, autofillHints : autofillHints, restorationId : restorationId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTextFieldObjectBinding extends HT_ExternObject<CupertinoTextField> {
  CupertinoTextFieldObjectBinding(CupertinoTextField value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTextField');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'focusNode':
        return externObject.focusNode;
      case 'decoration':
        return externObject.decoration;
      case 'padding':
        return externObject.padding;
      case 'placeholder':
        return externObject.placeholder;
      case 'placeholderStyle':
        return externObject.placeholderStyle;
      case 'prefix':
        return externObject.prefix;
      case 'prefixMode':
        return externObject.prefixMode;
      case 'suffix':
        return externObject.suffix;
      case 'suffixMode':
        return externObject.suffixMode;
      case 'clearButtonMode':
        return externObject.clearButtonMode;
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
      case 'toolbarOptions':
        return externObject.toolbarOptions;
      case 'textAlignVertical':
        return externObject.textAlignVertical;
      case 'readOnly':
        return externObject.readOnly;
      case 'showCursor':
        return externObject.showCursor;
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
      case 'scrollController':
        return externObject.scrollController;
      case 'scrollPhysics':
        return externObject.scrollPhysics;
      case 'onTap':
        return externObject.onTap;
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

