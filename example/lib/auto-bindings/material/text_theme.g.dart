import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';


class TextThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextTheme':
        return ({headline1, headline2, headline3, headline4, headline5, headline6, subtitle1, subtitle2, bodyText1, bodyText2, caption, button, overline, display4, display3, display2, display1, headline, title, subhead, subtitle, body2, body1}) => TextThemeObjectBinding(TextTheme(headline1 : headline1, headline2 : headline2, headline3 : headline3, headline4 : headline4, headline5 : headline5, headline6 : headline6, subtitle1 : subtitle1, subtitle2 : subtitle2, bodyText1 : bodyText1, bodyText2 : bodyText2, caption : caption, button : button, overline : overline, display4 : display4, display3 : display3, display2 : display2, display1 : display1, headline : headline, title : title, subhead : subhead, subtitle : subtitle, body2 : body2, body1 : body1));
      case 'lerp':
        return (a, b, t) => TextTheme.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextThemeObjectBinding extends HT_ExternObject<TextTheme> {
  TextThemeObjectBinding(TextTheme value) : super(value);

  @override
  final typeid = HT_TypeId('TextTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'headline1':
        return externObject.headline1;
      case 'headline2':
        return externObject.headline2;
      case 'headline3':
        return externObject.headline3;
      case 'headline4':
        return externObject.headline4;
      case 'headline5':
        return externObject.headline5;
      case 'headline6':
        return externObject.headline6;
      case 'subtitle1':
        return externObject.subtitle1;
      case 'subtitle2':
        return externObject.subtitle2;
      case 'bodyText1':
        return externObject.bodyText1;
      case 'bodyText2':
        return externObject.bodyText2;
      case 'caption':
        return externObject.caption;
      case 'button':
        return externObject.button;
      case 'overline':
        return externObject.overline;
      case 'display4':
        return externObject.display4;
      case 'display3':
        return externObject.display3;
      case 'display2':
        return externObject.display2;
      case 'display1':
        return externObject.display1;
      case 'headline':
        return externObject.headline;
      case 'title':
        return externObject.title;
      case 'subhead':
        return externObject.subhead;
      case 'subtitle':
        return externObject.subtitle;
      case 'body2':
        return externObject.body2;
      case 'body1':
        return externObject.body1;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'merge':
        return externObject.merge;
      case 'apply':
        return externObject.apply;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

