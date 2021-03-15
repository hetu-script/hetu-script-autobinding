import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class CupertinoIconThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoIconThemeData':
        return ({color, opacity, size}) => CupertinoIconThemeDataObjectBinding(CupertinoIconThemeData(color : color, opacity : opacity, size : size));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoIconThemeDataObjectBinding extends HT_ExternObject<CupertinoIconThemeData> {
  CupertinoIconThemeDataObjectBinding(CupertinoIconThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoIconThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'resolve':
        return externObject.resolve;
      case 'copyWith':
        return externObject.copyWith;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

