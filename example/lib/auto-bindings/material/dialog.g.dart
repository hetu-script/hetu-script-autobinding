import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
const _defaultInsetPadding = EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0);


class DialogClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Dialog':
        return ({key, backgroundColor, elevation, insetAnimationDuration = const Duration(milliseconds: 100), insetAnimationCurve = Curves.decelerate, insetPadding = _defaultInsetPadding, clipBehavior = Clip.none, shape, child}) => DialogObjectBinding(Dialog(key : key, backgroundColor : backgroundColor, elevation : elevation, insetAnimationDuration : insetAnimationDuration, insetAnimationCurve : insetAnimationCurve, insetPadding : insetPadding, clipBehavior : clipBehavior, shape : shape, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DialogObjectBinding extends HT_ExternObject<Dialog> {
  DialogObjectBinding(Dialog value) : super(value);

  @override
  final typeid = HT_TypeId('Dialog');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'insetAnimationDuration':
        return externObject.insetAnimationDuration;
      case 'insetAnimationCurve':
        return externObject.insetAnimationCurve;
      case 'insetPadding':
        return externObject.insetPadding;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'shape':
        return externObject.shape;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AlertDialogClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AlertDialog':
        return ({key, title, titlePadding, titleTextStyle, content, contentPadding = const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0), contentTextStyle, actions, actionsPadding = EdgeInsets.zero, actionsOverflowDirection, actionsOverflowButtonSpacing, buttonPadding, backgroundColor, elevation, semanticLabel, insetPadding = _defaultInsetPadding, clipBehavior = Clip.none, shape, scrollable = false}) => AlertDialogObjectBinding(AlertDialog(key : key, title : title, titlePadding : titlePadding, titleTextStyle : titleTextStyle, content : content, contentPadding : contentPadding, contentTextStyle : contentTextStyle, actions : actions, actionsPadding : actionsPadding, actionsOverflowDirection : actionsOverflowDirection, actionsOverflowButtonSpacing : actionsOverflowButtonSpacing, buttonPadding : buttonPadding, backgroundColor : backgroundColor, elevation : elevation, semanticLabel : semanticLabel, insetPadding : insetPadding, clipBehavior : clipBehavior, shape : shape, scrollable : scrollable));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AlertDialogObjectBinding extends HT_ExternObject<AlertDialog> {
  AlertDialogObjectBinding(AlertDialog value) : super(value);

  @override
  final typeid = HT_TypeId('AlertDialog');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'title':
        return externObject.title;
      case 'titlePadding':
        return externObject.titlePadding;
      case 'titleTextStyle':
        return externObject.titleTextStyle;
      case 'content':
        return externObject.content;
      case 'contentPadding':
        return externObject.contentPadding;
      case 'contentTextStyle':
        return externObject.contentTextStyle;
      case 'actions':
        return externObject.actions;
      case 'actionsPadding':
        return externObject.actionsPadding;
      case 'actionsOverflowDirection':
        return externObject.actionsOverflowDirection;
      case 'actionsOverflowButtonSpacing':
        return externObject.actionsOverflowButtonSpacing;
      case 'buttonPadding':
        return externObject.buttonPadding;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'semanticLabel':
        return externObject.semanticLabel;
      case 'insetPadding':
        return externObject.insetPadding;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'shape':
        return externObject.shape;
      case 'scrollable':
        return externObject.scrollable;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SimpleDialogOptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SimpleDialogOption':
        return ({key, onPressed, padding, child}) => SimpleDialogOptionObjectBinding(SimpleDialogOption(key : key, onPressed : onPressed, padding : padding, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SimpleDialogOptionObjectBinding extends HT_ExternObject<SimpleDialogOption> {
  SimpleDialogOptionObjectBinding(SimpleDialogOption value) : super(value);

  @override
  final typeid = HT_TypeId('SimpleDialogOption');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onPressed':
        return externObject.onPressed;
      case 'child':
        return externObject.child;
      case 'padding':
        return externObject.padding;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SimpleDialogClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SimpleDialog':
        return ({key, title, titlePadding = const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0), titleTextStyle, children, contentPadding = const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0), backgroundColor, elevation, semanticLabel, insetPadding = _defaultInsetPadding, clipBehavior = Clip.none, shape}) => SimpleDialogObjectBinding(SimpleDialog(key : key, title : title, titlePadding : titlePadding, titleTextStyle : titleTextStyle, children : children, contentPadding : contentPadding, backgroundColor : backgroundColor, elevation : elevation, semanticLabel : semanticLabel, insetPadding : insetPadding, clipBehavior : clipBehavior, shape : shape));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SimpleDialogObjectBinding extends HT_ExternObject<SimpleDialog> {
  SimpleDialogObjectBinding(SimpleDialog value) : super(value);

  @override
  final typeid = HT_TypeId('SimpleDialog');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'title':
        return externObject.title;
      case 'titlePadding':
        return externObject.titlePadding;
      case 'titleTextStyle':
        return externObject.titleTextStyle;
      case 'children':
        return externObject.children;
      case 'contentPadding':
        return externObject.contentPadding;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'semanticLabel':
        return externObject.semanticLabel;
      case 'insetPadding':
        return externObject.insetPadding;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'shape':
        return externObject.shape;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DialogRouteClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DialogRoute':
        return ({context, builder, themes, barrierColor = Colors.black54, barrierDismissible = true, barrierLabel, useSafeArea = true, settings}) => DialogRouteObjectBinding(DialogRoute(context : context, builder : builder, themes : themes, barrierColor : barrierColor, barrierDismissible : barrierDismissible, barrierLabel : barrierLabel, useSafeArea : useSafeArea, settings : settings));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DialogRouteObjectBinding extends HT_ExternObject<DialogRoute> {
  DialogRouteObjectBinding(DialogRoute value) : super(value);

  @override
  final typeid = HT_TypeId('DialogRoute');


}

