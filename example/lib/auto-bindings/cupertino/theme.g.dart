import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class CupertinoThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTheme':
        return ({key, data, child}) => CupertinoThemeObjectBinding(CupertinoTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => CupertinoTheme.of(context);
      case 'brightnessOf':
        return (context) => CupertinoTheme.brightnessOf(context);
      case 'maybeBrightnessOf':
        return (context) => CupertinoTheme.maybeBrightnessOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoThemeObjectBinding extends HT_ExternObject<CupertinoTheme> {
  CupertinoThemeObjectBinding(CupertinoTheme value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoThemeData':
        return ({brightness, primaryColor, primaryContrastingColor, textTheme, barBackgroundColor, scaffoldBackgroundColor}) => CupertinoThemeDataObjectBinding(CupertinoThemeData(brightness : brightness, primaryColor : primaryColor, primaryContrastingColor : primaryContrastingColor, textTheme : textTheme, barBackgroundColor : barBackgroundColor, scaffoldBackgroundColor : scaffoldBackgroundColor));
      case 'CupertinoThemeData.raw':
        return (brightness, primaryColor, primaryContrastingColor, textTheme, barBackgroundColor, scaffoldBackgroundColor) => CupertinoThemeDataObjectBinding(CupertinoThemeData.raw(brightness, primaryColor, primaryContrastingColor, textTheme, barBackgroundColor, scaffoldBackgroundColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoThemeDataObjectBinding extends HT_ExternObject<CupertinoThemeData> {
  CupertinoThemeDataObjectBinding(CupertinoThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoThemeData');


}

class NoDefaultCupertinoThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NoDefaultCupertinoThemeData':
        return ({brightness, primaryColor, primaryContrastingColor, textTheme, barBackgroundColor, scaffoldBackgroundColor}) => NoDefaultCupertinoThemeDataObjectBinding(NoDefaultCupertinoThemeData(brightness : brightness, primaryColor : primaryColor, primaryContrastingColor : primaryContrastingColor, textTheme : textTheme, barBackgroundColor : barBackgroundColor, scaffoldBackgroundColor : scaffoldBackgroundColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NoDefaultCupertinoThemeDataObjectBinding extends HT_ExternObject<NoDefaultCupertinoThemeData> {
  NoDefaultCupertinoThemeDataObjectBinding(NoDefaultCupertinoThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('NoDefaultCupertinoThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'brightness':
        return externObject.brightness;
      case 'primaryColor':
        return externObject.primaryColor;
      case 'primaryContrastingColor':
        return externObject.primaryContrastingColor;
      case 'textTheme':
        return externObject.textTheme;
      case 'barBackgroundColor':
        return externObject.barBackgroundColor;
      case 'scaffoldBackgroundColor':
        return externObject.scaffoldBackgroundColor;
      case 'noDefault':
        return externObject.noDefault;
      case 'resolveFrom':
        return externObject.resolveFrom;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

