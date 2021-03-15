import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class CupertinoTextFormFieldRowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTextFormFieldRow':
        return ({key, prefix, padding, controller, initialValue, focusNode, decoration, keyboardType, textCapitalization = TextCapitalization.none, textInputAction, style, strutStyle, textAlign = TextAlign.start, textAlignVertical, autofocus = false, readOnly = false, toolbarOptions, showCursor, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, maxLines = 1, minLines, expands = false, maxLength, onChanged, onTap, onEditingComplete, onFieldSubmitted, onSaved, validator, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorColor, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), enableInteractiveSelection = true, selectionControls, scrollPhysics, autofillHints, autovalidateMode = AutovalidateMode.disabled, placeholder, placeholderStyle = const TextStyle(fontWeight: FontWeight.w400, color: CupertinoColors.placeholderText)}) => CupertinoTextFormFieldRowObjectBinding(CupertinoTextFormFieldRow(key : key, prefix : prefix, padding : padding, controller : controller, initialValue : initialValue, focusNode : focusNode, decoration : decoration, keyboardType : keyboardType, textCapitalization : textCapitalization, textInputAction : textInputAction, style : style, strutStyle : strutStyle, textAlign : textAlign, textAlignVertical : textAlignVertical, autofocus : autofocus, readOnly : readOnly, toolbarOptions : toolbarOptions, showCursor : showCursor, obscuringCharacter : obscuringCharacter, obscureText : obscureText, autocorrect : autocorrect, smartDashesType : smartDashesType, smartQuotesType : smartQuotesType, enableSuggestions : enableSuggestions, maxLines : maxLines, minLines : minLines, expands : expands, maxLength : maxLength, onChanged : onChanged, onTap : onTap, onEditingComplete : onEditingComplete, onFieldSubmitted : onFieldSubmitted, onSaved : onSaved, validator : validator, inputFormatters : inputFormatters, enabled : enabled, cursorWidth : cursorWidth, cursorHeight : cursorHeight, cursorColor : cursorColor, keyboardAppearance : keyboardAppearance, scrollPadding : scrollPadding, enableInteractiveSelection : enableInteractiveSelection, selectionControls : selectionControls, scrollPhysics : scrollPhysics, autofillHints : autofillHints, autovalidateMode : autovalidateMode, placeholder : placeholder, placeholderStyle : placeholderStyle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTextFormFieldRowObjectBinding extends HT_ExternObject<CupertinoTextFormFieldRow> {
  CupertinoTextFormFieldRowObjectBinding(CupertinoTextFormFieldRow value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTextFormFieldRow');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'prefix':
        return externObject.prefix;
      case 'padding':
        return externObject.padding;
      case 'controller':
        return externObject.controller;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

