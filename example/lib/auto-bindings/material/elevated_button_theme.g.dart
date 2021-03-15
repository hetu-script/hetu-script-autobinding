import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class ElevatedButtonThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ElevatedButtonThemeData':
        return ({style}) => ElevatedButtonThemeDataObjectBinding(ElevatedButtonThemeData(style : style));
      case 'lerp':
        return (a, b, t) => ElevatedButtonThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ElevatedButtonThemeDataObjectBinding extends HT_ExternObject<ElevatedButtonThemeData> {
  ElevatedButtonThemeDataObjectBinding(ElevatedButtonThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('ElevatedButtonThemeData');

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

class ElevatedButtonThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ElevatedButtonTheme':
        return ({key, data, child}) => ElevatedButtonThemeObjectBinding(ElevatedButtonTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => ElevatedButtonTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ElevatedButtonThemeObjectBinding extends HT_ExternObject<ElevatedButtonTheme> {
  ElevatedButtonThemeObjectBinding(ElevatedButtonTheme value) : super(value);

  @override
  final typeid = HT_TypeId('ElevatedButtonTheme');

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

