import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


class RawKeyEventDataAndroidClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyEventDataAndroid':
        return ({flags = 0, codePoint = 0, plainCodePoint = 0, keyCode = 0, scanCode = 0, metaState = 0, eventSource = 0, vendorId = 0, productId = 0, deviceId = 0, repeatCount = 0}) => RawKeyEventDataAndroidObjectBinding(RawKeyEventDataAndroid(flags : flags, codePoint : codePoint, plainCodePoint : plainCodePoint, keyCode : keyCode, scanCode : scanCode, metaState : metaState, eventSource : eventSource, vendorId : vendorId, productId : productId, deviceId : deviceId, repeatCount : repeatCount));
      case 'RawKeyEventDataAndroid.modifierNone':
        return RawKeyEventDataAndroid.modifierNone;
      case 'RawKeyEventDataAndroid.modifierAlt':
        return RawKeyEventDataAndroid.modifierAlt;
      case 'RawKeyEventDataAndroid.modifierLeftAlt':
        return RawKeyEventDataAndroid.modifierLeftAlt;
      case 'RawKeyEventDataAndroid.modifierRightAlt':
        return RawKeyEventDataAndroid.modifierRightAlt;
      case 'RawKeyEventDataAndroid.modifierShift':
        return RawKeyEventDataAndroid.modifierShift;
      case 'RawKeyEventDataAndroid.modifierLeftShift':
        return RawKeyEventDataAndroid.modifierLeftShift;
      case 'RawKeyEventDataAndroid.modifierRightShift':
        return RawKeyEventDataAndroid.modifierRightShift;
      case 'RawKeyEventDataAndroid.modifierSym':
        return RawKeyEventDataAndroid.modifierSym;
      case 'RawKeyEventDataAndroid.modifierFunction':
        return RawKeyEventDataAndroid.modifierFunction;
      case 'RawKeyEventDataAndroid.modifierControl':
        return RawKeyEventDataAndroid.modifierControl;
      case 'RawKeyEventDataAndroid.modifierLeftControl':
        return RawKeyEventDataAndroid.modifierLeftControl;
      case 'RawKeyEventDataAndroid.modifierRightControl':
        return RawKeyEventDataAndroid.modifierRightControl;
      case 'RawKeyEventDataAndroid.modifierMeta':
        return RawKeyEventDataAndroid.modifierMeta;
      case 'RawKeyEventDataAndroid.modifierLeftMeta':
        return RawKeyEventDataAndroid.modifierLeftMeta;
      case 'RawKeyEventDataAndroid.modifierRightMeta':
        return RawKeyEventDataAndroid.modifierRightMeta;
      case 'RawKeyEventDataAndroid.modifierCapsLock':
        return RawKeyEventDataAndroid.modifierCapsLock;
      case 'RawKeyEventDataAndroid.modifierNumLock':
        return RawKeyEventDataAndroid.modifierNumLock;
      case 'RawKeyEventDataAndroid.modifierScrollLock':
        return RawKeyEventDataAndroid.modifierScrollLock;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyEventDataAndroidObjectBinding extends HT_ExternObject<RawKeyEventDataAndroid> {
  RawKeyEventDataAndroidObjectBinding(RawKeyEventDataAndroid value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyEventDataAndroid');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'flags':
        return externObject.flags;
      case 'codePoint':
        return externObject.codePoint;
      case 'plainCodePoint':
        return externObject.plainCodePoint;
      case 'keyCode':
        return externObject.keyCode;
      case 'scanCode':
        return externObject.scanCode;
      case 'metaState':
        return externObject.metaState;
      case 'eventSource':
        return externObject.eventSource;
      case 'vendorId':
        return externObject.vendorId;
      case 'productId':
        return externObject.productId;
      case 'deviceId':
        return externObject.deviceId;
      case 'repeatCount':
        return externObject.repeatCount;
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

