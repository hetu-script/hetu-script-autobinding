import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class CupertinoContextMenuActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoContextMenuAction':
        return ({key, child, isDefaultAction = false, isDestructiveAction = false, onPressed, trailingIcon}) => CupertinoContextMenuActionObjectBinding(CupertinoContextMenuAction(key : key, child : child, isDefaultAction : isDefaultAction, isDestructiveAction : isDestructiveAction, onPressed : onPressed, trailingIcon : trailingIcon));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoContextMenuActionObjectBinding extends HT_ExternObject<CupertinoContextMenuAction> {
  CupertinoContextMenuActionObjectBinding(CupertinoContextMenuAction value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoContextMenuAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'isDefaultAction':
        return externObject.isDefaultAction;
      case 'isDestructiveAction':
        return externObject.isDestructiveAction;
      case 'onPressed':
        return externObject.onPressed;
      case 'trailingIcon':
        return externObject.trailingIcon;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

