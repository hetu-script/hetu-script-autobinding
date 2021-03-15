import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class TextSelectionToolbarTextButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelectionToolbarTextButton':
        return ({key, child, padding, onPressed}) => TextSelectionToolbarTextButtonObjectBinding(TextSelectionToolbarTextButton(key : key, child : child, padding : padding, onPressed : onPressed));
      case 'getPadding':
        return (index, total) => TextSelectionToolbarTextButton.getPadding(index, total);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionToolbarTextButtonObjectBinding extends HT_ExternObject<TextSelectionToolbarTextButton> {
  TextSelectionToolbarTextButtonObjectBinding(TextSelectionToolbarTextButton value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelectionToolbarTextButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'onPressed':
        return externObject.onPressed;
      case 'padding':
        return externObject.padding;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

