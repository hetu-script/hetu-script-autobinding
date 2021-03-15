import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class OutlinedButtonThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OutlinedButtonThemeData':
        return ({style}) => OutlinedButtonThemeDataObjectBinding(OutlinedButtonThemeData(style : style));
      case 'lerp':
        return (a, b, t) => OutlinedButtonThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OutlinedButtonThemeDataObjectBinding extends HT_ExternObject<OutlinedButtonThemeData> {
  OutlinedButtonThemeDataObjectBinding(OutlinedButtonThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('OutlinedButtonThemeData');

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

class OutlinedButtonThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OutlinedButtonTheme':
        return ({key, data, child}) => OutlinedButtonThemeObjectBinding(OutlinedButtonTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => OutlinedButtonTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OutlinedButtonThemeObjectBinding extends HT_ExternObject<OutlinedButtonTheme> {
  OutlinedButtonThemeObjectBinding(OutlinedButtonTheme value) : super(value);

  @override
  final typeid = HT_TypeId('OutlinedButtonTheme');

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

