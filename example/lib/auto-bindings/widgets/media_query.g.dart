import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'dart:ui';
import 'package:flutter/foundation.dart';

class OrientationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'portrait':
        return Orientation.portrait;
      case 'landscape':
        return Orientation.landscape;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class NavigationModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'traditional':
        return NavigationMode.traditional;
      case 'directional':
        return NavigationMode.directional;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MediaQueryDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MediaQueryData':
        return ({size = Size.zero, devicePixelRatio = 1.0, textScaleFactor = 1.0, platformBrightness = Brightness.light, padding = EdgeInsets.zero, viewInsets = EdgeInsets.zero, systemGestureInsets = EdgeInsets.zero, viewPadding = EdgeInsets.zero, alwaysUse24HourFormat = false, accessibleNavigation = false, invertColors = false, highContrast = false, disableAnimations = false, boldText = false, navigationMode = NavigationMode.traditional}) => MediaQueryDataObjectBinding(MediaQueryData(size : size, devicePixelRatio : devicePixelRatio, textScaleFactor : textScaleFactor, platformBrightness : platformBrightness, padding : padding, viewInsets : viewInsets, systemGestureInsets : systemGestureInsets, viewPadding : viewPadding, alwaysUse24HourFormat : alwaysUse24HourFormat, accessibleNavigation : accessibleNavigation, invertColors : invertColors, highContrast : highContrast, disableAnimations : disableAnimations, boldText : boldText, navigationMode : navigationMode));
      case 'MediaQueryData.fromWindow':
        return (window) => MediaQueryDataObjectBinding(MediaQueryData.fromWindow(window));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MediaQueryDataObjectBinding extends HT_ExternObject<MediaQueryData> {
  MediaQueryDataObjectBinding(MediaQueryData value) : super(value);

  @override
  final typeid = HT_TypeId('MediaQueryData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'size':
        return externObject.size;
      case 'devicePixelRatio':
        return externObject.devicePixelRatio;
      case 'textScaleFactor':
        return externObject.textScaleFactor;
      case 'platformBrightness':
        return externObject.platformBrightness;
      case 'viewInsets':
        return externObject.viewInsets;
      case 'padding':
        return externObject.padding;
      case 'viewPadding':
        return externObject.viewPadding;
      case 'systemGestureInsets':
        return externObject.systemGestureInsets;
      case 'alwaysUse24HourFormat':
        return externObject.alwaysUse24HourFormat;
      case 'accessibleNavigation':
        return externObject.accessibleNavigation;
      case 'invertColors':
        return externObject.invertColors;
      case 'highContrast':
        return externObject.highContrast;
      case 'disableAnimations':
        return externObject.disableAnimations;
      case 'boldText':
        return externObject.boldText;
      case 'navigationMode':
        return externObject.navigationMode;
      case 'orientation':
        return externObject.orientation;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'removePadding':
        return externObject.removePadding;
      case 'removeViewInsets':
        return externObject.removeViewInsets;
      case 'removeViewPadding':
        return externObject.removeViewPadding;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MediaQueryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MediaQuery':
        return ({key, data, child}) => MediaQueryObjectBinding(MediaQuery(key : key, data : data, child : child));
      case 'of':
        return (context) => MediaQuery.of(context);
      case 'maybeOf':
        return (context) => MediaQuery.maybeOf(context);
      case 'textScaleFactorOf':
        return (context) => MediaQuery.textScaleFactorOf(context);
      case 'platformBrightnessOf':
        return (context) => MediaQuery.platformBrightnessOf(context);
      case 'highContrastOf':
        return (context) => MediaQuery.highContrastOf(context);
      case 'boldTextOverride':
        return (context) => MediaQuery.boldTextOverride(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MediaQueryObjectBinding extends HT_ExternObject<MediaQuery> {
  MediaQueryObjectBinding(MediaQuery value) : super(value);

  @override
  final typeid = HT_TypeId('MediaQuery');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

