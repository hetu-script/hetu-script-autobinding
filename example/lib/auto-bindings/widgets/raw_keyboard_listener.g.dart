import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class RawKeyboardListenerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawKeyboardListener':
        return ({key, focusNode, autofocus = false, includeSemantics = true, onKey, child}) => RawKeyboardListenerObjectBinding(RawKeyboardListener(key : key, focusNode : focusNode, autofocus : autofocus, includeSemantics : includeSemantics, onKey : onKey, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawKeyboardListenerObjectBinding extends HT_ExternObject<RawKeyboardListener> {
  RawKeyboardListenerObjectBinding(RawKeyboardListener value) : super(value);

  @override
  final typeid = HT_TypeId('RawKeyboardListener');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'includeSemantics':
        return externObject.includeSemantics;
      case 'onKey':
        return externObject.onKey;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

