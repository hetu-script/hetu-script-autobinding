import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class ColorSchemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ColorScheme':
        return ({primary, primaryVariant, secondary, secondaryVariant, surface, background, error, onPrimary, onSecondary, onSurface, onBackground, onError, brightness}) => ColorSchemeObjectBinding(ColorScheme(primary : primary, primaryVariant : primaryVariant, secondary : secondary, secondaryVariant : secondaryVariant, surface : surface, background : background, error : error, onPrimary : onPrimary, onSecondary : onSecondary, onSurface : onSurface, onBackground : onBackground, onError : onError, brightness : brightness));
      case 'ColorScheme.light':
        return ({primary = const Color(0xff6200ee), primaryVariant = const Color(0xff3700b3), secondary = const Color(0xff03dac6), secondaryVariant = const Color(0xff018786), surface = Colors.white, background = Colors.white, error = const Color(0xffb00020), onPrimary = Colors.white, onSecondary = Colors.black, onSurface = Colors.black, onBackground = Colors.black, onError = Colors.white, brightness = Brightness.light}) => ColorSchemeObjectBinding(ColorScheme.light(primary : primary, primaryVariant : primaryVariant, secondary : secondary, secondaryVariant : secondaryVariant, surface : surface, background : background, error : error, onPrimary : onPrimary, onSecondary : onSecondary, onSurface : onSurface, onBackground : onBackground, onError : onError, brightness : brightness));
      case 'ColorScheme.dark':
        return ({primary = const Color(0xffbb86fc), primaryVariant = const Color(0xff3700B3), secondary = const Color(0xff03dac6), secondaryVariant = const Color(0xff03dac6), surface = const Color(0xff121212), background = const Color(0xff121212), error = const Color(0xffcf6679), onPrimary = Colors.black, onSecondary = Colors.black, onSurface = Colors.white, onBackground = Colors.white, onError = Colors.black, brightness = Brightness.dark}) => ColorSchemeObjectBinding(ColorScheme.dark(primary : primary, primaryVariant : primaryVariant, secondary : secondary, secondaryVariant : secondaryVariant, surface : surface, background : background, error : error, onPrimary : onPrimary, onSecondary : onSecondary, onSurface : onSurface, onBackground : onBackground, onError : onError, brightness : brightness));
      case 'ColorScheme.highContrastLight':
        return ({primary = const Color(0xff0000ba), primaryVariant = const Color(0xff000088), secondary = const Color(0xff66fff9), secondaryVariant = const Color(0xff018786), surface = Colors.white, background = Colors.white, error = const Color(0xff790000), onPrimary = Colors.white, onSecondary = Colors.black, onSurface = Colors.black, onBackground = Colors.black, onError = Colors.white, brightness = Brightness.light}) => ColorSchemeObjectBinding(ColorScheme.highContrastLight(primary : primary, primaryVariant : primaryVariant, secondary : secondary, secondaryVariant : secondaryVariant, surface : surface, background : background, error : error, onPrimary : onPrimary, onSecondary : onSecondary, onSurface : onSurface, onBackground : onBackground, onError : onError, brightness : brightness));
      case 'ColorScheme.highContrastDark':
        return ({primary = const Color(0xffefb7ff), primaryVariant = const Color(0xffbe9eff), secondary = const Color(0xff66fff9), secondaryVariant = const Color(0xff66fff9), surface = const Color(0xff121212), background = const Color(0xff121212), error = const Color(0xff9b374d), onPrimary = Colors.black, onSecondary = Colors.black, onSurface = Colors.white, onBackground = Colors.white, onError = Colors.black, brightness = Brightness.dark}) => ColorSchemeObjectBinding(ColorScheme.highContrastDark(primary : primary, primaryVariant : primaryVariant, secondary : secondary, secondaryVariant : secondaryVariant, surface : surface, background : background, error : error, onPrimary : onPrimary, onSecondary : onSecondary, onSurface : onSurface, onBackground : onBackground, onError : onError, brightness : brightness));
      case 'lerp':
        return (a, b, t) => ColorScheme.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorSchemeObjectBinding extends HT_ExternObject<ColorScheme> {
  ColorSchemeObjectBinding(ColorScheme value) : super(value);

  @override
  final typeid = HT_TypeId('ColorScheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'primary':
        return externObject.primary;
      case 'primaryVariant':
        return externObject.primaryVariant;
      case 'secondary':
        return externObject.secondary;
      case 'secondaryVariant':
        return externObject.secondaryVariant;
      case 'surface':
        return externObject.surface;
      case 'background':
        return externObject.background;
      case 'error':
        return externObject.error;
      case 'onPrimary':
        return externObject.onPrimary;
      case 'onSecondary':
        return externObject.onSecondary;
      case 'onSurface':
        return externObject.onSurface;
      case 'onBackground':
        return externObject.onBackground;
      case 'onError':
        return externObject.onError;
      case 'brightness':
        return externObject.brightness;
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

