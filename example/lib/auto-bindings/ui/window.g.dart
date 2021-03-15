import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';

class BrightnessClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dark':
        return Brightness.dark;
      case 'light':
        return Brightness.light;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

