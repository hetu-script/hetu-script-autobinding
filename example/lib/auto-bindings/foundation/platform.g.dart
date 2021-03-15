import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';

class TargetPlatformClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'android':
        return TargetPlatform.android;
      case 'fuchsia':
        return TargetPlatform.fuchsia;
      case 'iOS':
        return TargetPlatform.iOS;
      case 'linux':
        return TargetPlatform.linux;
      case 'macOS':
        return TargetPlatform.macOS;
      case 'windows':
        return TargetPlatform.windows;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

