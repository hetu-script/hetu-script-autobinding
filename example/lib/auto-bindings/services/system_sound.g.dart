import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';

class SystemSoundTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'click':
        return SystemSoundType.click;
      case 'alert':
        return SystemSoundType.alert;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SystemSoundClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'play':
        return (type) => SystemSound.play(type);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


