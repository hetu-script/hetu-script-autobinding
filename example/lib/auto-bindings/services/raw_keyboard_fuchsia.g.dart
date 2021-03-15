import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


class RawKeyEventDataFuchsiaClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyEventDataFuchsia':
        return ({hidUsage = 0, codePoint = 0, modifiers = 0}) => RawKeyEventDataFuchsiaObjectBinding(RawKeyEventDataFuchsia(hidUsage : hidUsage, codePoint : codePoint, modifiers : modifiers));
      case 'RawKeyEventDataFuchsia.modifierNone':
        return RawKeyEventDataFuchsia.modifierNone;
      case 'RawKeyEventDataFuchsia.modifierCapsLock':
        return RawKeyEventDataFuchsia.modifierCapsLock;
      case 'RawKeyEventDataFuchsia.modifierLeftShift':
        return RawKeyEventDataFuchsia.modifierLeftShift;
      case 'RawKeyEventDataFuchsia.modifierRightShift':
        return RawKeyEventDataFuchsia.modifierRightShift;
      case 'RawKeyEventDataFuchsia.modifierShift':
        return RawKeyEventDataFuchsia.modifierShift;
      case 'RawKeyEventDataFuchsia.modifierLeftControl':
        return RawKeyEventDataFuchsia.modifierLeftControl;
      case 'RawKeyEventDataFuchsia.modifierRightControl':
        return RawKeyEventDataFuchsia.modifierRightControl;
      case 'RawKeyEventDataFuchsia.modifierControl':
        return RawKeyEventDataFuchsia.modifierControl;
      case 'RawKeyEventDataFuchsia.modifierLeftAlt':
        return RawKeyEventDataFuchsia.modifierLeftAlt;
      case 'RawKeyEventDataFuchsia.modifierRightAlt':
        return RawKeyEventDataFuchsia.modifierRightAlt;
      case 'RawKeyEventDataFuchsia.modifierAlt':
        return RawKeyEventDataFuchsia.modifierAlt;
      case 'RawKeyEventDataFuchsia.modifierLeftMeta':
        return RawKeyEventDataFuchsia.modifierLeftMeta;
      case 'RawKeyEventDataFuchsia.modifierRightMeta':
        return RawKeyEventDataFuchsia.modifierRightMeta;
      case 'RawKeyEventDataFuchsia.modifierMeta':
        return RawKeyEventDataFuchsia.modifierMeta;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyEventDataFuchsiaObjectBinding extends HT_ExternObject<RawKeyEventDataFuchsia> {
  RawKeyEventDataFuchsiaObjectBinding(RawKeyEventDataFuchsia value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyEventDataFuchsia');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hidUsage':
        return externObject.hidUsage;
      case 'codePoint':
        return externObject.codePoint;
      case 'modifiers':
        return externObject.modifiers;
      case 'keyLabel':
        return externObject.keyLabel;
      case 'logicalKey':
        return externObject.logicalKey;
      case 'physicalKey':
        return externObject.physicalKey;
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

