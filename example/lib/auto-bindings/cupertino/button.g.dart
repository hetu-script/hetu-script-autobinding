import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class CupertinoButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoButton':
        return ({key, child, padding, color, disabledColor = CupertinoColors.quaternarySystemFill, minSize = kMinInteractiveDimensionCupertino, pressedOpacity = 0.4, borderRadius = const BorderRadius.all(Radius.circular(8.0)), alignment = Alignment.center, onPressed}) => CupertinoButtonObjectBinding(CupertinoButton(key : key, child : child, padding : padding, color : color, disabledColor : disabledColor, minSize : minSize, pressedOpacity : pressedOpacity, borderRadius : borderRadius, alignment : alignment, onPressed : onPressed));
      case 'CupertinoButton.filled':
        return ({key, child, padding, disabledColor = CupertinoColors.quaternarySystemFill, minSize = kMinInteractiveDimensionCupertino, pressedOpacity = 0.4, borderRadius = const BorderRadius.all(Radius.circular(8.0)), alignment = Alignment.center, onPressed}) => CupertinoButtonObjectBinding(CupertinoButton.filled(key : key, child : child, padding : padding, disabledColor : disabledColor, minSize : minSize, pressedOpacity : pressedOpacity, borderRadius : borderRadius, alignment : alignment, onPressed : onPressed));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoButtonObjectBinding extends HT_ExternObject<CupertinoButton> {
  CupertinoButtonObjectBinding(CupertinoButton value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'padding':
        return externObject.padding;
      case 'color':
        return externObject.color;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'onPressed':
        return externObject.onPressed;
      case 'minSize':
        return externObject.minSize;
      case 'pressedOpacity':
        return externObject.pressedOpacity;
      case 'borderRadius':
        return externObject.borderRadius;
      case 'alignment':
        return externObject.alignment;
      case 'enabled':
        return externObject.enabled;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

