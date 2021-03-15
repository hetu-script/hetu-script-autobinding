import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


class RawKeyEventDataMacOsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyEventDataMacOs':
        return ({characters = '', charactersIgnoringModifiers = '', keyCode = 0, modifiers = 0}) => RawKeyEventDataMacOsObjectBinding(RawKeyEventDataMacOs(characters : characters, charactersIgnoringModifiers : charactersIgnoringModifiers, keyCode : keyCode, modifiers : modifiers));
      case 'RawKeyEventDataMacOs.modifierCapsLock':
        return RawKeyEventDataMacOs.modifierCapsLock;
      case 'RawKeyEventDataMacOs.modifierShift':
        return RawKeyEventDataMacOs.modifierShift;
      case 'RawKeyEventDataMacOs.modifierLeftShift':
        return RawKeyEventDataMacOs.modifierLeftShift;
      case 'RawKeyEventDataMacOs.modifierRightShift':
        return RawKeyEventDataMacOs.modifierRightShift;
      case 'RawKeyEventDataMacOs.modifierControl':
        return RawKeyEventDataMacOs.modifierControl;
      case 'RawKeyEventDataMacOs.modifierLeftControl':
        return RawKeyEventDataMacOs.modifierLeftControl;
      case 'RawKeyEventDataMacOs.modifierRightControl':
        return RawKeyEventDataMacOs.modifierRightControl;
      case 'RawKeyEventDataMacOs.modifierOption':
        return RawKeyEventDataMacOs.modifierOption;
      case 'RawKeyEventDataMacOs.modifierLeftOption':
        return RawKeyEventDataMacOs.modifierLeftOption;
      case 'RawKeyEventDataMacOs.modifierRightOption':
        return RawKeyEventDataMacOs.modifierRightOption;
      case 'RawKeyEventDataMacOs.modifierCommand':
        return RawKeyEventDataMacOs.modifierCommand;
      case 'RawKeyEventDataMacOs.modifierLeftCommand':
        return RawKeyEventDataMacOs.modifierLeftCommand;
      case 'RawKeyEventDataMacOs.modifierRightCommand':
        return RawKeyEventDataMacOs.modifierRightCommand;
      case 'RawKeyEventDataMacOs.modifierNumericPad':
        return RawKeyEventDataMacOs.modifierNumericPad;
      case 'RawKeyEventDataMacOs.modifierHelp':
        return RawKeyEventDataMacOs.modifierHelp;
      case 'RawKeyEventDataMacOs.modifierFunction':
        return RawKeyEventDataMacOs.modifierFunction;
      case 'RawKeyEventDataMacOs.deviceIndependentMask':
        return RawKeyEventDataMacOs.deviceIndependentMask;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyEventDataMacOsObjectBinding extends HT_ExternObject<RawKeyEventDataMacOs> {
  RawKeyEventDataMacOsObjectBinding(RawKeyEventDataMacOs value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyEventDataMacOs');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'characters':
        return externObject.characters;
      case 'charactersIgnoringModifiers':
        return externObject.charactersIgnoringModifiers;
      case 'keyCode':
        return externObject.keyCode;
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
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

