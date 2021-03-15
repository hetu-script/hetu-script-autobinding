import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class DefaultWidgetsLocalizationsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultWidgetsLocalizations':
        return () => DefaultWidgetsLocalizationsObjectBinding(DefaultWidgetsLocalizations());
      case 'load':
        return (locale) => DefaultWidgetsLocalizations.load(locale);
      case 'DefaultWidgetsLocalizations.delegate':
        return DefaultWidgetsLocalizations.delegate;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultWidgetsLocalizationsObjectBinding extends HT_ExternObject<DefaultWidgetsLocalizations> {
  DefaultWidgetsLocalizationsObjectBinding(DefaultWidgetsLocalizations value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultWidgetsLocalizations');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textDirection':
        return externObject.textDirection;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LocalizationsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Localizations':
        return ({key, locale, delegates, child}) => LocalizationsObjectBinding(Localizations(key : key, locale : locale, delegates : delegates, child : child));
      case 'localeOf':
        return (context) => Localizations.localeOf(context);
      case 'maybeLocaleOf':
        return (context) => Localizations.maybeLocaleOf(context);
      case 'of':
        return (context, type) => Localizations.of(context, type);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LocalizationsObjectBinding extends HT_ExternObject<Localizations> {
  LocalizationsObjectBinding(Localizations value) : super(value);

  @override
  final typeid = HT_TypeId('Localizations');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'locale':
        return externObject.locale;
      case 'delegates':
        return externObject.delegates;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

