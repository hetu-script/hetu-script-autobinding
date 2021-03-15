import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class CupertinoAlertDialogClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoAlertDialog':
        return ({key, title, content, actions = const <Widget>[], scrollController, actionScrollController, insetAnimationDuration = const Duration(milliseconds: 100), insetAnimationCurve = Curves.decelerate}) => CupertinoAlertDialogObjectBinding(CupertinoAlertDialog(key : key, title : title, content : content, actions : actions, scrollController : scrollController, actionScrollController : actionScrollController, insetAnimationDuration : insetAnimationDuration, insetAnimationCurve : insetAnimationCurve));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoAlertDialogObjectBinding extends HT_ExternObject<CupertinoAlertDialog> {
  CupertinoAlertDialogObjectBinding(CupertinoAlertDialog value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoAlertDialog');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'title':
        return externObject.title;
      case 'content':
        return externObject.content;
      case 'actions':
        return externObject.actions;
      case 'scrollController':
        return externObject.scrollController;
      case 'actionScrollController':
        return externObject.actionScrollController;
      case 'insetAnimationDuration':
        return externObject.insetAnimationDuration;
      case 'insetAnimationCurve':
        return externObject.insetAnimationCurve;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoPopupSurfaceClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoPopupSurface':
        return ({key, isSurfacePainted = true, child}) => CupertinoPopupSurfaceObjectBinding(CupertinoPopupSurface(key : key, isSurfacePainted : isSurfacePainted, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoPopupSurfaceObjectBinding extends HT_ExternObject<CupertinoPopupSurface> {
  CupertinoPopupSurfaceObjectBinding(CupertinoPopupSurface value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoPopupSurface');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isSurfacePainted':
        return externObject.isSurfacePainted;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoDialogActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoDialogAction':
        return ({key, onPressed, isDefaultAction = false, isDestructiveAction = false, textStyle, child}) => CupertinoDialogActionObjectBinding(CupertinoDialogAction(key : key, onPressed : onPressed, isDefaultAction : isDefaultAction, isDestructiveAction : isDestructiveAction, textStyle : textStyle, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoDialogActionObjectBinding extends HT_ExternObject<CupertinoDialogAction> {
  CupertinoDialogActionObjectBinding(CupertinoDialogAction value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoDialogAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onPressed':
        return externObject.onPressed;
      case 'isDefaultAction':
        return externObject.isDefaultAction;
      case 'isDestructiveAction':
        return externObject.isDestructiveAction;
      case 'textStyle':
        return externObject.textStyle;
      case 'child':
        return externObject.child;
      case 'enabled':
        return externObject.enabled;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

