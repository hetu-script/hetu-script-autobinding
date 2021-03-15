import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';


class ScaffoldMessengerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaffoldMessenger':
        return ({key, child}) => ScaffoldMessengerObjectBinding(ScaffoldMessenger(key : key, child : child));
      case 'of':
        return (context) => ScaffoldMessenger.of(context);
      case 'maybeOf':
        return (context) => ScaffoldMessenger.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaffoldMessengerObjectBinding extends HT_ExternObject<ScaffoldMessenger> {
  ScaffoldMessengerObjectBinding(ScaffoldMessenger value) : super(value);

  @override
  final typeid = HT_TypeId('ScaffoldMessenger');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScaffoldMessengerStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaffoldMessengerState':
        return () => ScaffoldMessengerStateObjectBinding(ScaffoldMessengerState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaffoldMessengerStateObjectBinding extends HT_ExternObject<ScaffoldMessengerState> {
  ScaffoldMessengerStateObjectBinding(ScaffoldMessengerState value) : super(value);

  @override
  final typeid = HT_TypeId('ScaffoldMessengerState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'showSnackBar':
        return externObject.showSnackBar;
      case 'removeCurrentSnackBar':
        return externObject.removeCurrentSnackBar;
      case 'hideCurrentSnackBar':
        return externObject.hideCurrentSnackBar;
      case 'build':
        return externObject.build;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScaffoldPrelayoutGeometryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaffoldPrelayoutGeometry':
        return ({bottomSheetSize, contentBottom, contentTop, floatingActionButtonSize, minInsets, minViewPadding, scaffoldSize, snackBarSize, textDirection}) => ScaffoldPrelayoutGeometryObjectBinding(ScaffoldPrelayoutGeometry(bottomSheetSize : bottomSheetSize, contentBottom : contentBottom, contentTop : contentTop, floatingActionButtonSize : floatingActionButtonSize, minInsets : minInsets, minViewPadding : minViewPadding, scaffoldSize : scaffoldSize, snackBarSize : snackBarSize, textDirection : textDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaffoldPrelayoutGeometryObjectBinding extends HT_ExternObject<ScaffoldPrelayoutGeometry> {
  ScaffoldPrelayoutGeometryObjectBinding(ScaffoldPrelayoutGeometry value) : super(value);

  @override
  final typeid = HT_TypeId('ScaffoldPrelayoutGeometry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'floatingActionButtonSize':
        return externObject.floatingActionButtonSize;
      case 'bottomSheetSize':
        return externObject.bottomSheetSize;
      case 'contentBottom':
        return externObject.contentBottom;
      case 'contentTop':
        return externObject.contentTop;
      case 'minInsets':
        return externObject.minInsets;
      case 'minViewPadding':
        return externObject.minViewPadding;
      case 'scaffoldSize':
        return externObject.scaffoldSize;
      case 'snackBarSize':
        return externObject.snackBarSize;
      case 'textDirection':
        return externObject.textDirection;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScaffoldGeometryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaffoldGeometry':
        return ({bottomNavigationBarTop, floatingActionButtonArea}) => ScaffoldGeometryObjectBinding(ScaffoldGeometry(bottomNavigationBarTop : bottomNavigationBarTop, floatingActionButtonArea : floatingActionButtonArea));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaffoldGeometryObjectBinding extends HT_ExternObject<ScaffoldGeometry> {
  ScaffoldGeometryObjectBinding(ScaffoldGeometry value) : super(value);

  @override
  final typeid = HT_TypeId('ScaffoldGeometry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'bottomNavigationBarTop':
        return externObject.bottomNavigationBarTop;
      case 'floatingActionButtonArea':
        return externObject.floatingActionButtonArea;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScaffoldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Scaffold':
        return ({key, appBar, body, floatingActionButton, floatingActionButtonLocation, floatingActionButtonAnimator, persistentFooterButtons, drawer, onDrawerChanged, endDrawer, onEndDrawerChanged, bottomNavigationBar, bottomSheet, backgroundColor, resizeToAvoidBottomInset, primary = true, drawerDragStartBehavior = DragStartBehavior.start, extendBody = false, extendBodyBehindAppBar = false, drawerScrimColor, drawerEdgeDragWidth, drawerEnableOpenDragGesture = true, endDrawerEnableOpenDragGesture = true, restorationId}) => ScaffoldObjectBinding(Scaffold(key : key, appBar : appBar, body : body, floatingActionButton : floatingActionButton, floatingActionButtonLocation : floatingActionButtonLocation, floatingActionButtonAnimator : floatingActionButtonAnimator, persistentFooterButtons : persistentFooterButtons, drawer : drawer, onDrawerChanged : onDrawerChanged, endDrawer : endDrawer, onEndDrawerChanged : onEndDrawerChanged, bottomNavigationBar : bottomNavigationBar, bottomSheet : bottomSheet, backgroundColor : backgroundColor, resizeToAvoidBottomInset : resizeToAvoidBottomInset, primary : primary, drawerDragStartBehavior : drawerDragStartBehavior, extendBody : extendBody, extendBodyBehindAppBar : extendBodyBehindAppBar, drawerScrimColor : drawerScrimColor, drawerEdgeDragWidth : drawerEdgeDragWidth, drawerEnableOpenDragGesture : drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture : endDrawerEnableOpenDragGesture, restorationId : restorationId));
      case 'of':
        return (context) => Scaffold.of(context);
      case 'maybeOf':
        return (context) => Scaffold.maybeOf(context);
      case 'geometryOf':
        return (context) => Scaffold.geometryOf(context);
      case 'hasDrawer':
        return (context, {registerForUpdates = true}) => Scaffold.hasDrawer(context, registerForUpdates : registerForUpdates);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaffoldObjectBinding extends HT_ExternObject<Scaffold> {
  ScaffoldObjectBinding(Scaffold value) : super(value);

  @override
  final typeid = HT_TypeId('Scaffold');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'extendBody':
        return externObject.extendBody;
      case 'extendBodyBehindAppBar':
        return externObject.extendBodyBehindAppBar;
      case 'appBar':
        return externObject.appBar;
      case 'body':
        return externObject.body;
      case 'floatingActionButton':
        return externObject.floatingActionButton;
      case 'floatingActionButtonLocation':
        return externObject.floatingActionButtonLocation;
      case 'floatingActionButtonAnimator':
        return externObject.floatingActionButtonAnimator;
      case 'persistentFooterButtons':
        return externObject.persistentFooterButtons;
      case 'drawer':
        return externObject.drawer;
      case 'onDrawerChanged':
        return externObject.onDrawerChanged;
      case 'endDrawer':
        return externObject.endDrawer;
      case 'onEndDrawerChanged':
        return externObject.onEndDrawerChanged;
      case 'drawerScrimColor':
        return externObject.drawerScrimColor;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'bottomNavigationBar':
        return externObject.bottomNavigationBar;
      case 'bottomSheet':
        return externObject.bottomSheet;
      case 'resizeToAvoidBottomInset':
        return externObject.resizeToAvoidBottomInset;
      case 'primary':
        return externObject.primary;
      case 'drawerDragStartBehavior':
        return externObject.drawerDragStartBehavior;
      case 'drawerEdgeDragWidth':
        return externObject.drawerEdgeDragWidth;
      case 'drawerEnableOpenDragGesture':
        return externObject.drawerEnableOpenDragGesture;
      case 'endDrawerEnableOpenDragGesture':
        return externObject.endDrawerEnableOpenDragGesture;
      case 'restorationId':
        return externObject.restorationId;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScaffoldStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScaffoldState':
        return () => ScaffoldStateObjectBinding(ScaffoldState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScaffoldStateObjectBinding extends HT_ExternObject<ScaffoldState> {
  ScaffoldStateObjectBinding(ScaffoldState value) : super(value);

  @override
  final typeid = HT_TypeId('ScaffoldState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'restorationId':
        return externObject.restorationId;
      case 'hasAppBar':
        return externObject.hasAppBar;
      case 'hasDrawer':
        return externObject.hasDrawer;
      case 'hasEndDrawer':
        return externObject.hasEndDrawer;
      case 'hasFloatingActionButton':
        return externObject.hasFloatingActionButton;
      case 'appBarMaxHeight':
        return externObject.appBarMaxHeight;
      case 'isDrawerOpen':
        return externObject.isDrawerOpen;
      case 'isEndDrawerOpen':
        return externObject.isEndDrawerOpen;
      case 'restoreState':
        return externObject.restoreState;
      case 'openDrawer':
        return externObject.openDrawer;
      case 'openEndDrawer':
        return externObject.openEndDrawer;
      case 'showSnackBar':
        return externObject.showSnackBar;
      case 'removeCurrentSnackBar':
        return externObject.removeCurrentSnackBar;
      case 'hideCurrentSnackBar':
        return externObject.hideCurrentSnackBar;
      case 'showBottomSheet':
        return externObject.showBottomSheet;
      case 'initState':
        return externObject.initState;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'dispose':
        return externObject.dispose;
      case 'showBodyScrim':
        return externObject.showBodyScrim;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

