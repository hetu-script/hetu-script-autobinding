import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';

class FramePhaseClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'vsyncStart':
        return FramePhase.vsyncStart;
      case 'buildStart':
        return FramePhase.buildStart;
      case 'buildFinish':
        return FramePhase.buildFinish;
      case 'rasterStart':
        return FramePhase.rasterStart;
      case 'rasterFinish':
        return FramePhase.rasterFinish;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class AppLifecycleStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'resumed':
        return AppLifecycleState.resumed;
      case 'inactive':
        return AppLifecycleState.inactive;
      case 'paused':
        return AppLifecycleState.paused;
      case 'detached':
        return AppLifecycleState.detached;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformDispatcherClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'instance':
        return () => PlatformDispatcher.instance;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class WindowPaddingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WindowPadding.zero':
        return WindowPadding.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class LocaleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Locale':
        return (_languageCode, [_countryCode]) => LocaleObjectBinding(Locale(_languageCode, _countryCode));
      case 'Locale.fromSubtags':
        return ({languageCode = 'und', scriptCode, countryCode}) => LocaleObjectBinding(Locale.fromSubtags(languageCode : languageCode, scriptCode : scriptCode, countryCode : countryCode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LocaleObjectBinding extends HT_ExternObject<Locale> {
  LocaleObjectBinding(Locale value) : super(value);

  @override
  final typeid = HT_TypeId('Locale');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scriptCode':
        return externObject.scriptCode;
      case 'languageCode':
        return externObject.languageCode;
      case 'countryCode':
        return externObject.countryCode;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      case 'toLanguageTag':
        return externObject.toLanguageTag;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

