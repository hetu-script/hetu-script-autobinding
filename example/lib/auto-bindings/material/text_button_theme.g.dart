import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class TextButtonThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextButtonThemeData':
        return ({style}) => TextButtonThemeDataObjectBinding(TextButtonThemeData(style : style));
      case 'lerp':
        return (a, b, t) => TextButtonThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextButtonThemeDataObjectBinding extends HT_ExternObject<TextButtonThemeData> {
  TextButtonThemeDataObjectBinding(TextButtonThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('TextButtonThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'style':
        return externObject.style;
      case 'hashCode':
        return externObject.hashCode;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextButtonThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextButtonTheme':
        return ({key, data, child}) => TextButtonThemeObjectBinding(TextButtonTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => TextButtonTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextButtonThemeObjectBinding extends HT_ExternObject<TextButtonTheme> {
  TextButtonThemeObjectBinding(TextButtonTheme value) : super(value);

  @override
  final typeid = HT_TypeId('TextButtonTheme');

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

