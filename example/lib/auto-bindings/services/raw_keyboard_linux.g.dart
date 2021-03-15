import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


class RawKeyEventDataLinuxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyEventDataLinux':
        return ({keyHelper, unicodeScalarValues = 0, scanCode = 0, keyCode = 0, modifiers = 0, isDown}) => RawKeyEventDataLinuxObjectBinding(RawKeyEventDataLinux(keyHelper : keyHelper, unicodeScalarValues : unicodeScalarValues, scanCode : scanCode, keyCode : keyCode, modifiers : modifiers, isDown : isDown));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyEventDataLinuxObjectBinding extends HT_ExternObject<RawKeyEventDataLinux> {
  RawKeyEventDataLinuxObjectBinding(RawKeyEventDataLinux value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyEventDataLinux');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'keyHelper':
        return externObject.keyHelper;
      case 'unicodeScalarValues':
        return externObject.unicodeScalarValues;
      case 'scanCode':
        return externObject.scanCode;
      case 'keyCode':
        return externObject.keyCode;
      case 'modifiers':
        return externObject.modifiers;
      case 'isDown':
        return externObject.isDown;
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

class GLFWKeyHelperClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GLFWKeyHelper':
        return () => GLFWKeyHelperObjectBinding(GLFWKeyHelper());
      case 'GLFWKeyHelper.modifierCapsLock':
        return GLFWKeyHelper.modifierCapsLock;
      case 'GLFWKeyHelper.modifierShift':
        return GLFWKeyHelper.modifierShift;
      case 'GLFWKeyHelper.modifierControl':
        return GLFWKeyHelper.modifierControl;
      case 'GLFWKeyHelper.modifierAlt':
        return GLFWKeyHelper.modifierAlt;
      case 'GLFWKeyHelper.modifierMeta':
        return GLFWKeyHelper.modifierMeta;
      case 'GLFWKeyHelper.modifierNumericPad':
        return GLFWKeyHelper.modifierNumericPad;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GLFWKeyHelperObjectBinding extends HT_ExternObject<GLFWKeyHelper> {
  GLFWKeyHelperObjectBinding(GLFWKeyHelper value) : super(value);

  @override
  final typeid = HT_TypeId('GLFWKeyHelper');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isModifierPressed':
        return externObject.isModifierPressed;
      case 'getModifierSide':
        return externObject.getModifierSide;
      case 'numpadKey':
        return externObject.numpadKey;
      case 'logicalKey':
        return externObject.logicalKey;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class GtkKeyHelperClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GtkKeyHelper':
        return () => GtkKeyHelperObjectBinding(GtkKeyHelper());
      case 'GtkKeyHelper.modifierShift':
        return GtkKeyHelper.modifierShift;
      case 'GtkKeyHelper.modifierCapsLock':
        return GtkKeyHelper.modifierCapsLock;
      case 'GtkKeyHelper.modifierControl':
        return GtkKeyHelper.modifierControl;
      case 'GtkKeyHelper.modifierMod1':
        return GtkKeyHelper.modifierMod1;
      case 'GtkKeyHelper.modifierMod2':
        return GtkKeyHelper.modifierMod2;
      case 'GtkKeyHelper.modifierMeta':
        return GtkKeyHelper.modifierMeta;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GtkKeyHelperObjectBinding extends HT_ExternObject<GtkKeyHelper> {
  GtkKeyHelperObjectBinding(GtkKeyHelper value) : super(value);

  @override
  final typeid = HT_TypeId('GtkKeyHelper');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isModifierPressed':
        return externObject.isModifierPressed;
      case 'getModifierSide':
        return externObject.getModifierSide;
      case 'numpadKey':
        return externObject.numpadKey;
      case 'logicalKey':
        return externObject.logicalKey;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

