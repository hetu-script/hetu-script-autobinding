import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class TextSelectionThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelectionThemeData':
        return ({cursorColor, selectionColor, selectionHandleColor}) => TextSelectionThemeDataObjectBinding(TextSelectionThemeData(cursorColor : cursorColor, selectionColor : selectionColor, selectionHandleColor : selectionHandleColor));
      case 'lerp':
        return (a, b, t) => TextSelectionThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionThemeDataObjectBinding extends HT_ExternObject<TextSelectionThemeData> {
  TextSelectionThemeDataObjectBinding(TextSelectionThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelectionThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'cursorColor':
        return externObject.cursorColor;
      case 'selectionColor':
        return externObject.selectionColor;
      case 'selectionHandleColor':
        return externObject.selectionHandleColor;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextSelectionThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelectionTheme':
        return ({key, data, child}) => TextSelectionThemeObjectBinding(TextSelectionTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => TextSelectionTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionThemeObjectBinding extends HT_ExternObject<TextSelectionTheme> {
  TextSelectionThemeObjectBinding(TextSelectionTheme value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelectionTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'wrap':
        return externObject.wrap;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

