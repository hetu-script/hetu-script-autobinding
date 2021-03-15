import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class MaterialBannerThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialBannerThemeData':
        return ({backgroundColor, contentTextStyle, padding, leadingPadding}) => MaterialBannerThemeDataObjectBinding(MaterialBannerThemeData(backgroundColor : backgroundColor, contentTextStyle : contentTextStyle, padding : padding, leadingPadding : leadingPadding));
      case 'lerp':
        return (a, b, t) => MaterialBannerThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialBannerThemeDataObjectBinding extends HT_ExternObject<MaterialBannerThemeData> {
  MaterialBannerThemeDataObjectBinding(MaterialBannerThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialBannerThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'contentTextStyle':
        return externObject.contentTextStyle;
      case 'padding':
        return externObject.padding;
      case 'leadingPadding':
        return externObject.leadingPadding;
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

class MaterialBannerThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialBannerTheme':
        return ({key, data, child}) => MaterialBannerThemeObjectBinding(MaterialBannerTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => MaterialBannerTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialBannerThemeObjectBinding extends HT_ExternObject<MaterialBannerTheme> {
  MaterialBannerThemeObjectBinding(MaterialBannerTheme value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialBannerTheme');

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

