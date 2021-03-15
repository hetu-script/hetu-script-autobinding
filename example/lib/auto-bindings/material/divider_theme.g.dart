import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class DividerThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DividerThemeData':
        return ({color, space, thickness, indent, endIndent}) => DividerThemeDataObjectBinding(DividerThemeData(color : color, space : space, thickness : thickness, indent : indent, endIndent : endIndent));
      case 'lerp':
        return (a, b, t) => DividerThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DividerThemeDataObjectBinding extends HT_ExternObject<DividerThemeData> {
  DividerThemeDataObjectBinding(DividerThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('DividerThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'space':
        return externObject.space;
      case 'thickness':
        return externObject.thickness;
      case 'indent':
        return externObject.indent;
      case 'endIndent':
        return externObject.endIndent;
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

class DividerThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DividerTheme':
        return ({key, data, child}) => DividerThemeObjectBinding(DividerTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => DividerTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DividerThemeObjectBinding extends HT_ExternObject<DividerTheme> {
  DividerThemeObjectBinding(DividerTheme value) : super(value);

  @override
  final typeid = HT_TypeId('DividerTheme');

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

