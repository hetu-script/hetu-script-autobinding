import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';


class HapticFeedbackClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'vibrate':
        return () => HapticFeedback.vibrate();
      case 'lightImpact':
        return () => HapticFeedback.lightImpact();
      case 'mediumImpact':
        return () => HapticFeedback.mediumImpact();
      case 'heavyImpact':
        return () => HapticFeedback.heavyImpact();
      case 'selectionClick':
        return () => HapticFeedback.selectionClick();
      default:
        throw HTErr_Undefined(id);
    }
  }
}


