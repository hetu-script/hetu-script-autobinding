import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class CupertinoTextThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTextThemeData':
        return ({primaryColor = CupertinoColors.systemBlue, textStyle, actionTextStyle, tabLabelTextStyle, navTitleTextStyle, navLargeTitleTextStyle, navActionTextStyle, pickerTextStyle, dateTimePickerTextStyle}) => CupertinoTextThemeDataObjectBinding(CupertinoTextThemeData(primaryColor : primaryColor, textStyle : textStyle, actionTextStyle : actionTextStyle, tabLabelTextStyle : tabLabelTextStyle, navTitleTextStyle : navTitleTextStyle, navLargeTitleTextStyle : navLargeTitleTextStyle, navActionTextStyle : navActionTextStyle, pickerTextStyle : pickerTextStyle, dateTimePickerTextStyle : dateTimePickerTextStyle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTextThemeDataObjectBinding extends HT_ExternObject<CupertinoTextThemeData> {
  CupertinoTextThemeDataObjectBinding(CupertinoTextThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTextThemeData');


}

