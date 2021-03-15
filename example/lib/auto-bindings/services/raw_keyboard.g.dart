import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';

class KeyboardSideClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'any':
        return KeyboardSide.any;
      case 'left':
        return KeyboardSide.left;
      case 'right':
        return KeyboardSide.right;
      case 'all':
        return KeyboardSide.all;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class ModifierKeyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controlModifier':
        return ModifierKey.controlModifier;
      case 'shiftModifier':
        return ModifierKey.shiftModifier;
      case 'altModifier':
        return ModifierKey.altModifier;
      case 'metaModifier':
        return ModifierKey.metaModifier;
      case 'capsLockModifier':
        return ModifierKey.capsLockModifier;
      case 'numLockModifier':
        return ModifierKey.numLockModifier;
      case 'scrollLockModifier':
        return ModifierKey.scrollLockModifier;
      case 'functionModifier':
        return ModifierKey.functionModifier;
      case 'symbolModifier':
        return ModifierKey.symbolModifier;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyDownEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyDownEvent':
        return ({data, character}) => RawKeyDownEventObjectBinding(RawKeyDownEvent(data : data, character : character));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyDownEventObjectBinding extends HT_ExternObject<RawKeyDownEvent> {
  RawKeyDownEventObjectBinding(RawKeyDownEvent value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyDownEvent');


}

class RawKeyUpEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyUpEvent':
        return ({data, character}) => RawKeyUpEventObjectBinding(RawKeyUpEvent(data : data, character : character));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyUpEventObjectBinding extends HT_ExternObject<RawKeyUpEvent> {
  RawKeyUpEventObjectBinding(RawKeyUpEvent value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyUpEvent');


}

class RawKeyboardClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyboard.instance':
        return RawKeyboard.instance;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


