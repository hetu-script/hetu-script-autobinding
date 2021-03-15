import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


class RawKeyEventDataWindowsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyEventDataWindows':
        return ({keyCode = 0, scanCode = 0, characterCodePoint = 0, modifiers = 0}) => RawKeyEventDataWindowsObjectBinding(RawKeyEventDataWindows(keyCode : keyCode, scanCode : scanCode, characterCodePoint : characterCodePoint, modifiers : modifiers));
      case 'RawKeyEventDataWindows.modifierShift':
        return RawKeyEventDataWindows.modifierShift;
      case 'RawKeyEventDataWindows.modifierLeftShift':
        return RawKeyEventDataWindows.modifierLeftShift;
      case 'RawKeyEventDataWindows.modifierRightShift':
        return RawKeyEventDataWindows.modifierRightShift;
      case 'RawKeyEventDataWindows.modifierControl':
        return RawKeyEventDataWindows.modifierControl;
      case 'RawKeyEventDataWindows.modifierLeftControl':
        return RawKeyEventDataWindows.modifierLeftControl;
      case 'RawKeyEventDataWindows.modifierRightControl':
        return RawKeyEventDataWindows.modifierRightControl;
      case 'RawKeyEventDataWindows.modifierAlt':
        return RawKeyEventDataWindows.modifierAlt;
      case 'RawKeyEventDataWindows.modifierLeftAlt':
        return RawKeyEventDataWindows.modifierLeftAlt;
      case 'RawKeyEventDataWindows.modifierRightAlt':
        return RawKeyEventDataWindows.modifierRightAlt;
      case 'RawKeyEventDataWindows.modifierLeftMeta':
        return RawKeyEventDataWindows.modifierLeftMeta;
      case 'RawKeyEventDataWindows.modifierRightMeta':
        return RawKeyEventDataWindows.modifierRightMeta;
      case 'RawKeyEventDataWindows.modifierCaps':
        return RawKeyEventDataWindows.modifierCaps;
      case 'RawKeyEventDataWindows.modifierNumLock':
        return RawKeyEventDataWindows.modifierNumLock;
      case 'RawKeyEventDataWindows.modifierScrollLock':
        return RawKeyEventDataWindows.modifierScrollLock;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyEventDataWindowsObjectBinding extends HT_ExternObject<RawKeyEventDataWindows> {
  RawKeyEventDataWindowsObjectBinding(RawKeyEventDataWindows value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyEventDataWindows');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'keyCode':
        return externObject.keyCode;
      case 'scanCode':
        return externObject.scanCode;
      case 'characterCodePoint':
        return externObject.characterCodePoint;
      case 'modifiers':
        return externObject.modifiers;
      case 'keyLabel':
        return externObject.keyLabel;
      case 'physicalKey':
        return externObject.physicalKey;
      case 'logicalKey':
        return externObject.logicalKey;
      case 'isModifierPressed':
        return externObject.isModifierPressed;
      case 'getModifierSide':
        return externObject.getModifierSide;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

