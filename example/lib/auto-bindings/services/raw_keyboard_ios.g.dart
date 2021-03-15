import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


class RawKeyEventDataIosClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyEventDataIos':
        return ({characters = '', charactersIgnoringModifiers = '', keyCode = 0, modifiers = 0}) => RawKeyEventDataIosObjectBinding(RawKeyEventDataIos(characters : characters, charactersIgnoringModifiers : charactersIgnoringModifiers, keyCode : keyCode, modifiers : modifiers));
      case 'RawKeyEventDataIos.modifierCapsLock':
        return RawKeyEventDataIos.modifierCapsLock;
      case 'RawKeyEventDataIos.modifierShift':
        return RawKeyEventDataIos.modifierShift;
      case 'RawKeyEventDataIos.modifierLeftShift':
        return RawKeyEventDataIos.modifierLeftShift;
      case 'RawKeyEventDataIos.modifierRightShift':
        return RawKeyEventDataIos.modifierRightShift;
      case 'RawKeyEventDataIos.modifierControl':
        return RawKeyEventDataIos.modifierControl;
      case 'RawKeyEventDataIos.modifierLeftControl':
        return RawKeyEventDataIos.modifierLeftControl;
      case 'RawKeyEventDataIos.modifierRightControl':
        return RawKeyEventDataIos.modifierRightControl;
      case 'RawKeyEventDataIos.modifierOption':
        return RawKeyEventDataIos.modifierOption;
      case 'RawKeyEventDataIos.modifierLeftOption':
        return RawKeyEventDataIos.modifierLeftOption;
      case 'RawKeyEventDataIos.modifierRightOption':
        return RawKeyEventDataIos.modifierRightOption;
      case 'RawKeyEventDataIos.modifierCommand':
        return RawKeyEventDataIos.modifierCommand;
      case 'RawKeyEventDataIos.modifierLeftCommand':
        return RawKeyEventDataIos.modifierLeftCommand;
      case 'RawKeyEventDataIos.modifierRightCommand':
        return RawKeyEventDataIos.modifierRightCommand;
      case 'RawKeyEventDataIos.modifierNumericPad':
        return RawKeyEventDataIos.modifierNumericPad;
      case 'RawKeyEventDataIos.modifierHelp':
        return RawKeyEventDataIos.modifierHelp;
      case 'RawKeyEventDataIos.modifierFunction':
        return RawKeyEventDataIos.modifierFunction;
      case 'RawKeyEventDataIos.deviceIndependentMask':
        return RawKeyEventDataIos.deviceIndependentMask;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyEventDataIosObjectBinding extends HT_ExternObject<RawKeyEventDataIos> {
  RawKeyEventDataIosObjectBinding(RawKeyEventDataIos value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyEventDataIos');

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

