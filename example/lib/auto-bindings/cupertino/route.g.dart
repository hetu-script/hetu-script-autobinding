import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
var _dialogScaleTween = Tween<double>(begin: 1.3, end: 1.0).chain(CurveTween(curve: Curves.linearToEaseOut));
Widget _buildCupertinoDialogTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {final CurvedAnimation fadeAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut); if (animation.status == AnimationStatus.reverse) {return FadeTransition(opacity: fadeAnimation, child: child);} return FadeTransition(opacity: fadeAnimation, child: ScaleTransition(child: child, scale: animation.drive(_dialogScaleTween)));}


class CupertinoPageRouteClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoPageRoute':
        return ({builder, title, settings, maintainState = true, fullscreenDialog = false}) => CupertinoPageRouteObjectBinding(CupertinoPageRoute(builder : builder, title : title, settings : settings, maintainState : maintainState, fullscreenDialog : fullscreenDialog));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoPageRouteObjectBinding extends HT_ExternObject<CupertinoPageRoute> {
  CupertinoPageRouteObjectBinding(CupertinoPageRoute value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoPageRoute');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'title':
        return externObject.title;
      case 'maintainState':
        return externObject.maintainState;
      case 'debugLabel':
        return externObject.debugLabel;
      case 'buildContent':
        return externObject.buildContent;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoPageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoPage':
        return ({child, maintainState = true, title, fullscreenDialog = false, key, name, arguments}) => CupertinoPageObjectBinding(CupertinoPage(child : child, maintainState : maintainState, title : title, fullscreenDialog : fullscreenDialog, key : key, name : name, arguments : arguments));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoPageObjectBinding extends HT_ExternObject<CupertinoPage> {
  CupertinoPageObjectBinding(CupertinoPage value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoPage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'title':
        return externObject.title;
      case 'maintainState':
        return externObject.maintainState;
      case 'fullscreenDialog':
        return externObject.fullscreenDialog;
      case 'createRoute':
        return externObject.createRoute;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoPageTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoPageTransition':
        return ({key, primaryRouteAnimation, secondaryRouteAnimation, child, linearTransition}) => CupertinoPageTransitionObjectBinding(CupertinoPageTransition(key : key, primaryRouteAnimation : primaryRouteAnimation, secondaryRouteAnimation : secondaryRouteAnimation, child : child, linearTransition : linearTransition));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoPageTransitionObjectBinding extends HT_ExternObject<CupertinoPageTransition> {
  CupertinoPageTransitionObjectBinding(CupertinoPageTransition value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoPageTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoFullscreenDialogTransitionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoFullscreenDialogTransition':
        return ({key, primaryRouteAnimation, secondaryRouteAnimation, child, linearTransition}) => CupertinoFullscreenDialogTransitionObjectBinding(CupertinoFullscreenDialogTransition(key : key, primaryRouteAnimation : primaryRouteAnimation, secondaryRouteAnimation : secondaryRouteAnimation, child : child, linearTransition : linearTransition));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoFullscreenDialogTransitionObjectBinding extends HT_ExternObject<CupertinoFullscreenDialogTransition> {
  CupertinoFullscreenDialogTransitionObjectBinding(CupertinoFullscreenDialogTransition value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoFullscreenDialogTransition');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoDialogRouteClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoDialogRoute':
        return ({builder, context, barrierDismissible = true, barrierColor, barrierLabel, transitionDuration = const Duration(milliseconds: 250), transitionBuilder = _buildCupertinoDialogTransitions, settings}) => CupertinoDialogRouteObjectBinding(CupertinoDialogRoute(builder : builder, context : context, barrierDismissible : barrierDismissible, barrierColor : barrierColor, barrierLabel : barrierLabel, transitionDuration : transitionDuration, transitionBuilder : transitionBuilder, settings : settings));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoDialogRouteObjectBinding extends HT_ExternObject<CupertinoDialogRoute> {
  CupertinoDialogRouteObjectBinding(CupertinoDialogRoute value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoDialogRoute');


}

