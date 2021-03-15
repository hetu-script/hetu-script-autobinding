import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class ButtonBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ButtonBar':
        return ({key, alignment, mainAxisSize, buttonTextTheme, buttonMinWidth, buttonHeight, buttonPadding, buttonAlignedDropdown, layoutBehavior, overflowDirection, overflowButtonSpacing, children = const <Widget>[]}) => ButtonBarObjectBinding(ButtonBar(key : key, alignment : alignment, mainAxisSize : mainAxisSize, buttonTextTheme : buttonTextTheme, buttonMinWidth : buttonMinWidth, buttonHeight : buttonHeight, buttonPadding : buttonPadding, buttonAlignedDropdown : buttonAlignedDropdown, layoutBehavior : layoutBehavior, overflowDirection : overflowDirection, overflowButtonSpacing : overflowButtonSpacing, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ButtonBarObjectBinding extends HT_ExternObject<ButtonBar> {
  ButtonBarObjectBinding(ButtonBar value) : super(value);

  @override
  final typeid = HT_TypeId('ButtonBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'mainAxisSize':
        return externObject.mainAxisSize;
      case 'buttonTextTheme':
        return externObject.buttonTextTheme;
      case 'buttonMinWidth':
        return externObject.buttonMinWidth;
      case 'buttonHeight':
        return externObject.buttonHeight;
      case 'buttonPadding':
        return externObject.buttonPadding;
      case 'buttonAlignedDropdown':
        return externObject.buttonAlignedDropdown;
      case 'layoutBehavior':
        return externObject.layoutBehavior;
      case 'overflowDirection':
        return externObject.overflowDirection;
      case 'overflowButtonSpacing':
        return externObject.overflowButtonSpacing;
      case 'children':
        return externObject.children;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

