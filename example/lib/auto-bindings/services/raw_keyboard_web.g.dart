import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


class RawKeyEventDataWebClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyEventDataWeb':
        return ({code, key, metaState = modifierNone}) => RawKeyEventDataWebObjectBinding(RawKeyEventDataWeb(code : code, key : key, metaState : metaState));
      case 'RawKeyEventDataWeb.modifierNone':
        return RawKeyEventDataWeb.modifierNone;
      case 'RawKeyEventDataWeb.modifierShift':
        return RawKeyEventDataWeb.modifierShift;
      case 'RawKeyEventDataWeb.modifierAlt':
        return RawKeyEventDataWeb.modifierAlt;
      case 'RawKeyEventDataWeb.modifierControl':
        return RawKeyEventDataWeb.modifierControl;
      case 'RawKeyEventDataWeb.modifierMeta':
        return RawKeyEventDataWeb.modifierMeta;
      case 'RawKeyEventDataWeb.modifierNumLock':
        return RawKeyEventDataWeb.modifierNumLock;
      case 'RawKeyEventDataWeb.modifierCapsLock':
        return RawKeyEventDataWeb.modifierCapsLock;
      case 'RawKeyEventDataWeb.modifierScrollLock':
        return RawKeyEventDataWeb.modifierScrollLock;
      default:
        throw HTErr_Undefined(id);
    }
  }
  static const modifierNone = 0;
}

class RawKeyEventDataWebObjectBinding extends HT_ExternObject<RawKeyEventDataWeb> {
  RawKeyEventDataWebObjectBinding(RawKeyEventDataWeb value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyEventDataWeb');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'code':
        return externObject.code;
      case 'key':
        return externObject.key;
      case 'metaState':
        return externObject.metaState;
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

