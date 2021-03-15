import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class CupertinoActionSheetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoActionSheet':
        return ({key, title, message, actions, messageScrollController, actionScrollController, cancelButton}) => CupertinoActionSheetObjectBinding(CupertinoActionSheet(key : key, title : title, message : message, actions : actions, messageScrollController : messageScrollController, actionScrollController : actionScrollController, cancelButton : cancelButton));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoActionSheetObjectBinding extends HT_ExternObject<CupertinoActionSheet> {
  CupertinoActionSheetObjectBinding(CupertinoActionSheet value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoActionSheet');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'title':
        return externObject.title;
      case 'message':
        return externObject.message;
      case 'actions':
        return externObject.actions;
      case 'messageScrollController':
        return externObject.messageScrollController;
      case 'actionScrollController':
        return externObject.actionScrollController;
      case 'cancelButton':
        return externObject.cancelButton;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoActionSheetActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoActionSheetAction':
        return ({key, onPressed, isDefaultAction = false, isDestructiveAction = false, child}) => CupertinoActionSheetActionObjectBinding(CupertinoActionSheetAction(key : key, onPressed : onPressed, isDefaultAction : isDefaultAction, isDestructiveAction : isDestructiveAction, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoActionSheetActionObjectBinding extends HT_ExternObject<CupertinoActionSheetAction> {
  CupertinoActionSheetActionObjectBinding(CupertinoActionSheetAction value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoActionSheetAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onPressed':
        return externObject.onPressed;
      case 'isDefaultAction':
        return externObject.isDefaultAction;
      case 'isDestructiveAction':
        return externObject.isDestructiveAction;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

