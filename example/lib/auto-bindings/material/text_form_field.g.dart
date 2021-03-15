import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class TextFormFieldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextFormField':
        return ({key, controller, initialValue, focusNode, decoration = const InputDecoration(), keyboardType, textCapitalization = TextCapitalization.none, textInputAction, style, strutStyle, textDirection, textAlign = TextAlign.start, textAlignVertical, autofocus = false, readOnly = false, toolbarOptions, showCursor, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, autovalidate = false, maxLengthEnforced = true, maxLengthEnforcement, maxLines = 1, minLines, expands = false, maxLength, onChanged, onTap, onEditingComplete, onFieldSubmitted, onSaved, validator, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorColor, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), enableInteractiveSelection = true, selectionControls, buildCounter, scrollPhysics, autofillHints, autovalidateMode}) => TextFormFieldObjectBinding(TextFormField(key : key, controller : controller, initialValue : initialValue, focusNode : focusNode, decoration : decoration, keyboardType : keyboardType, textCapitalization : textCapitalization, textInputAction : textInputAction, style : style, strutStyle : strutStyle, textDirection : textDirection, textAlign : textAlign, textAlignVertical : textAlignVertical, autofocus : autofocus, readOnly : readOnly, toolbarOptions : toolbarOptions, showCursor : showCursor, obscuringCharacter : obscuringCharacter, obscureText : obscureText, autocorrect : autocorrect, smartDashesType : smartDashesType, smartQuotesType : smartQuotesType, enableSuggestions : enableSuggestions, autovalidate : autovalidate, maxLengthEnforced : maxLengthEnforced, maxLengthEnforcement : maxLengthEnforcement, maxLines : maxLines, minLines : minLines, expands : expands, maxLength : maxLength, onChanged : onChanged, onTap : onTap, onEditingComplete : onEditingComplete, onFieldSubmitted : onFieldSubmitted, onSaved : onSaved, validator : validator, inputFormatters : inputFormatters, enabled : enabled, cursorWidth : cursorWidth, cursorHeight : cursorHeight, cursorRadius : cursorRadius, cursorColor : cursorColor, keyboardAppearance : keyboardAppearance, scrollPadding : scrollPadding, enableInteractiveSelection : enableInteractiveSelection, selectionControls : selectionControls, buildCounter : buildCounter, scrollPhysics : scrollPhysics, autofillHints : autofillHints, autovalidateMode : autovalidateMode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextFormFieldObjectBinding extends HT_ExternObject<TextFormField> {
  TextFormFieldObjectBinding(TextFormField value) : super(value);

  @override
  final typeid = HT_TypeId('TextFormField');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

