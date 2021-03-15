import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';

class DeviceOrientationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'portraitUp':
        return DeviceOrientation.portraitUp;
      case 'landscapeLeft':
        return DeviceOrientation.landscapeLeft;
      case 'portraitDown':
        return DeviceOrientation.portraitDown;
      case 'landscapeRight':
        return DeviceOrientation.landscapeRight;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class SystemUiOverlayClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'top':
        return SystemUiOverlay.top;
      case 'bottom':
        return SystemUiOverlay.bottom;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ApplicationSwitcherDescriptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ApplicationSwitcherDescription':
        return ({label, primaryColor}) => ApplicationSwitcherDescriptionObjectBinding(ApplicationSwitcherDescription(label : label, primaryColor : primaryColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ApplicationSwitcherDescriptionObjectBinding extends HT_ExternObject<ApplicationSwitcherDescription> {
  ApplicationSwitcherDescriptionObjectBinding(ApplicationSwitcherDescription value) : super(value);

  @override
  final typeid = HT_TypeId('ApplicationSwitcherDescription');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'label':
        return externObject.label;
      case 'primaryColor':
        return externObject.primaryColor;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SystemUiOverlayStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SystemUiOverlayStyle':
        return ({systemNavigationBarColor, systemNavigationBarDividerColor, systemNavigationBarIconBrightness, statusBarColor, statusBarBrightness, statusBarIconBrightness}) => SystemUiOverlayStyleObjectBinding(SystemUiOverlayStyle(systemNavigationBarColor : systemNavigationBarColor, systemNavigationBarDividerColor : systemNavigationBarDividerColor, systemNavigationBarIconBrightness : systemNavigationBarIconBrightness, statusBarColor : statusBarColor, statusBarBrightness : statusBarBrightness, statusBarIconBrightness : statusBarIconBrightness));
      case 'SystemUiOverlayStyle.light':
        return SystemUiOverlayStyle.light;
      case 'SystemUiOverlayStyle.dark':
        return SystemUiOverlayStyle.dark;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SystemUiOverlayStyleObjectBinding extends HT_ExternObject<SystemUiOverlayStyle> {
  SystemUiOverlayStyleObjectBinding(SystemUiOverlayStyle value) : super(value);

  @override
  final typeid = HT_TypeId('SystemUiOverlayStyle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'systemNavigationBarColor':
        return externObject.systemNavigationBarColor;
      case 'systemNavigationBarDividerColor':
        return externObject.systemNavigationBarDividerColor;
      case 'systemNavigationBarIconBrightness':
        return externObject.systemNavigationBarIconBrightness;
      case 'statusBarColor':
        return externObject.statusBarColor;
      case 'statusBarBrightness':
        return externObject.statusBarBrightness;
      case 'statusBarIconBrightness':
        return externObject.statusBarIconBrightness;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SystemChromeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'setPreferredOrientations':
        return (orientations) => SystemChrome.setPreferredOrientations(orientations);
      case 'setApplicationSwitcherDescription':
        return (description) => SystemChrome.setApplicationSwitcherDescription(description);
      case 'setEnabledSystemUIOverlays':
        return (overlays) => SystemChrome.setEnabledSystemUIOverlays(overlays);
      case 'restoreSystemUIOverlays':
        return () => SystemChrome.restoreSystemUIOverlays();
      case 'setSystemUIOverlayStyle':
        return (style) => SystemChrome.setSystemUIOverlayStyle(style);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


