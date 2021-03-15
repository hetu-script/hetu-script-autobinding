import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class DataTableThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DataTableThemeData':
        return ({decoration, dataRowColor, dataRowHeight, dataTextStyle, headingRowColor, headingRowHeight, headingTextStyle, horizontalMargin, columnSpacing, dividerThickness}) => DataTableThemeDataObjectBinding(DataTableThemeData(decoration : decoration, dataRowColor : dataRowColor, dataRowHeight : dataRowHeight, dataTextStyle : dataTextStyle, headingRowColor : headingRowColor, headingRowHeight : headingRowHeight, headingTextStyle : headingTextStyle, horizontalMargin : horizontalMargin, columnSpacing : columnSpacing, dividerThickness : dividerThickness));
      case 'lerp':
        return (a, b, t) => DataTableThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DataTableThemeDataObjectBinding extends HT_ExternObject<DataTableThemeData> {
  DataTableThemeDataObjectBinding(DataTableThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('DataTableThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decoration':
        return externObject.decoration;
      case 'dataRowColor':
        return externObject.dataRowColor;
      case 'dataRowHeight':
        return externObject.dataRowHeight;
      case 'dataTextStyle':
        return externObject.dataTextStyle;
      case 'headingRowColor':
        return externObject.headingRowColor;
      case 'headingRowHeight':
        return externObject.headingRowHeight;
      case 'headingTextStyle':
        return externObject.headingTextStyle;
      case 'horizontalMargin':
        return externObject.horizontalMargin;
      case 'columnSpacing':
        return externObject.columnSpacing;
      case 'dividerThickness':
        return externObject.dividerThickness;
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

class DataTableThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DataTableTheme':
        return ({key, data, child}) => DataTableThemeObjectBinding(DataTableTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => DataTableTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DataTableThemeObjectBinding extends HT_ExternObject<DataTableTheme> {
  DataTableThemeObjectBinding(DataTableTheme value) : super(value);

  @override
  final typeid = HT_TypeId('DataTableTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

