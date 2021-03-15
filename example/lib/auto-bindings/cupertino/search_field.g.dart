import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class CupertinoSearchTextFieldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoSearchTextField':
        return ({key, controller, onChanged, onSubmitted, style, placeholder, placeholderStyle, decoration, backgroundColor, borderRadius, padding = const EdgeInsetsDirectional.fromSTEB(3.8, 8, 5, 8), itemColor = CupertinoColors.secondaryLabel, itemSize = 20.0, prefixInsets = const EdgeInsetsDirectional.fromSTEB(6, 0, 0, 4), suffixInsets = const EdgeInsetsDirectional.fromSTEB(0, 0, 5, 2), suffixIcon = const Icon(CupertinoIcons.xmark_circle_fill), suffixMode = OverlayVisibilityMode.editing, onSuffixTap, restorationId, focusNode}) => CupertinoSearchTextFieldObjectBinding(CupertinoSearchTextField(key : key, controller : controller, onChanged : onChanged, onSubmitted : onSubmitted, style : style, placeholder : placeholder, placeholderStyle : placeholderStyle, decoration : decoration, backgroundColor : backgroundColor, borderRadius : borderRadius, padding : padding, itemColor : itemColor, itemSize : itemSize, prefixInsets : prefixInsets, suffixInsets : suffixInsets, suffixIcon : suffixIcon, suffixMode : suffixMode, onSuffixTap : onSuffixTap, restorationId : restorationId, focusNode : focusNode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoSearchTextFieldObjectBinding extends HT_ExternObject<CupertinoSearchTextField> {
  CupertinoSearchTextFieldObjectBinding(CupertinoSearchTextField value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoSearchTextField');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'onChanged':
        return externObject.onChanged;
      case 'onSubmitted':
        return externObject.onSubmitted;
      case 'style':
        return externObject.style;
      case 'placeholder':
        return externObject.placeholder;
      case 'placeholderStyle':
        return externObject.placeholderStyle;
      case 'decoration':
        return externObject.decoration;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'borderRadius':
        return externObject.borderRadius;
      case 'padding':
        return externObject.padding;
      case 'itemColor':
        return externObject.itemColor;
      case 'itemSize':
        return externObject.itemSize;
      case 'prefixInsets':
        return externObject.prefixInsets;
      case 'suffixInsets':
        return externObject.suffixInsets;
      case 'suffixIcon':
        return externObject.suffixIcon;
      case 'suffixMode':
        return externObject.suffixMode;
      case 'onSuffixTap':
        return externObject.onSuffixTap;
      case 'restorationId':
        return externObject.restorationId;
      case 'focusNode':
        return externObject.focusNode;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

