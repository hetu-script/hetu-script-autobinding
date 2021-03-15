import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:developer'as developer;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class RoutePopDispositionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'pop':
        return RoutePopDisposition.pop;
      case 'doNotPop':
        return RoutePopDisposition.doNotPop;
      case 'bubble':
        return RoutePopDisposition.bubble;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RouteSettingsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RouteSettings':
        return ({name, arguments}) => RouteSettingsObjectBinding(RouteSettings(name : name, arguments : arguments));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RouteSettingsObjectBinding extends HT_ExternObject<RouteSettings> {
  RouteSettingsObjectBinding(RouteSettings value) : super(value);

  @override
  final typeid = HT_TypeId('RouteSettings');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'name':
        return externObject.name;
      case 'arguments':
        return externObject.arguments;
      case 'copyWith':
        return externObject.copyWith;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class NavigatorObserverClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NavigatorObserver':
        return () => NavigatorObserverObjectBinding(NavigatorObserver());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NavigatorObserverObjectBinding extends HT_ExternObject<NavigatorObserver> {
  NavigatorObserverObjectBinding(NavigatorObserver value) : super(value);

  @override
  final typeid = HT_TypeId('NavigatorObserver');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'navigator':
        return externObject.navigator;
      case 'didPush':
        return externObject.didPush;
      case 'didPop':
        return externObject.didPop;
      case 'didRemove':
        return externObject.didRemove;
      case 'didReplace':
        return externObject.didReplace;
      case 'didStartUserGesture':
        return externObject.didStartUserGesture;
      case 'didStopUserGesture':
        return externObject.didStopUserGesture;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HeroControllerScopeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HeroControllerScope':
        return ({key, controller, child}) => HeroControllerScopeObjectBinding(HeroControllerScope(key : key, controller : controller, child : child));
      case 'HeroControllerScope.none':
        return ({key, child}) => HeroControllerScopeObjectBinding(HeroControllerScope.none(key : key, child : child));
      case 'of':
        return (context) => HeroControllerScope.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HeroControllerScopeObjectBinding extends HT_ExternObject<HeroControllerScope> {
  HeroControllerScopeObjectBinding(HeroControllerScope value) : super(value);

  @override
  final typeid = HT_TypeId('HeroControllerScope');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DefaultTransitionDelegateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultTransitionDelegate':
        return () => DefaultTransitionDelegateObjectBinding(DefaultTransitionDelegate());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultTransitionDelegateObjectBinding extends HT_ExternObject<DefaultTransitionDelegate> {
  DefaultTransitionDelegateObjectBinding(DefaultTransitionDelegate value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultTransitionDelegate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'resolve':
        return externObject.resolve;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class NavigatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Navigator':
        return ({key, pages = const <Page<dynamic>>[], onPopPage, initialRoute, onGenerateInitialRoutes = Navigator.defaultGenerateInitialRoutes, onGenerateRoute, onUnknownRoute, transitionDelegate = const DefaultTransitionDelegate<dynamic>(), reportsRouteUpdateToEngine = false, observers = const <NavigatorObserver>[], restorationScopeId}) => NavigatorObjectBinding(Navigator(key : key, pages : pages, onPopPage : onPopPage, initialRoute : initialRoute, onGenerateInitialRoutes : onGenerateInitialRoutes, onGenerateRoute : onGenerateRoute, onUnknownRoute : onUnknownRoute, transitionDelegate : transitionDelegate, reportsRouteUpdateToEngine : reportsRouteUpdateToEngine, observers : observers, restorationScopeId : restorationScopeId));
      case 'canPop':
        return (context) => Navigator.canPop(context);
      case 'popUntil':
        return (context, predicate) => Navigator.popUntil(context, predicate);
      case 'removeRoute':
        return (context, route) => Navigator.removeRoute(context, route);
      case 'removeRouteBelow':
        return (context, anchorRoute) => Navigator.removeRouteBelow(context, anchorRoute);
      case 'of':
        return (context, {rootNavigator = false}) => Navigator.of(context, rootNavigator : rootNavigator);
      case 'maybeOf':
        return (context, {rootNavigator = false}) => Navigator.maybeOf(context, rootNavigator : rootNavigator);
      case 'defaultGenerateInitialRoutes':
        return (navigator, initialRouteName) => Navigator.defaultGenerateInitialRoutes(navigator, initialRouteName);
      case 'Navigator.defaultRouteName':
        return Navigator.defaultRouteName;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NavigatorObjectBinding extends HT_ExternObject<Navigator> {
  NavigatorObjectBinding(Navigator value) : super(value);

  @override
  final typeid = HT_TypeId('Navigator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'pages':
        return externObject.pages;
      case 'onPopPage':
        return externObject.onPopPage;
      case 'transitionDelegate':
        return externObject.transitionDelegate;
      case 'initialRoute':
        return externObject.initialRoute;
      case 'onGenerateRoute':
        return externObject.onGenerateRoute;
      case 'onUnknownRoute':
        return externObject.onUnknownRoute;
      case 'observers':
        return externObject.observers;
      case 'restorationScopeId':
        return externObject.restorationScopeId;
      case 'onGenerateInitialRoutes':
        return externObject.onGenerateInitialRoutes;
      case 'reportsRouteUpdateToEngine':
        return externObject.reportsRouteUpdateToEngine;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class NavigatorStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NavigatorState':
        return () => NavigatorStateObjectBinding(NavigatorState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NavigatorStateObjectBinding extends HT_ExternObject<NavigatorState> {
  NavigatorStateObjectBinding(NavigatorState value) : super(value);

  @override
  final typeid = HT_TypeId('NavigatorState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'focusScopeNode':
        return externObject.focusScopeNode;
      case 'userGestureInProgressNotifier':
        return externObject.userGestureInProgressNotifier;
      case 'restorationId':
        return externObject.restorationId;
      case 'overlay':
        return externObject.overlay;
      case 'userGestureInProgress':
        return externObject.userGestureInProgress;
      case 'initState':
        return externObject.initState;
      case 'restoreState':
        return externObject.restoreState;
      case 'didToggleBucket':
        return externObject.didToggleBucket;
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'dispose':
        return externObject.dispose;
      case 'pushNamed':
        return externObject.pushNamed;
      case 'restorablePushNamed':
        return externObject.restorablePushNamed;
      case 'pushReplacementNamed':
        return externObject.pushReplacementNamed;
      case 'restorablePushReplacementNamed':
        return externObject.restorablePushReplacementNamed;
      case 'popAndPushNamed':
        return externObject.popAndPushNamed;
      case 'restorablePopAndPushNamed':
        return externObject.restorablePopAndPushNamed;
      case 'pushNamedAndRemoveUntil':
        return externObject.pushNamedAndRemoveUntil;
      case 'restorablePushNamedAndRemoveUntil':
        return externObject.restorablePushNamedAndRemoveUntil;
      case 'push':
        return externObject.push;
      case 'restorablePush':
        return externObject.restorablePush;
      case 'pushReplacement':
        return externObject.pushReplacement;
      case 'restorablePushReplacement':
        return externObject.restorablePushReplacement;
      case 'pushAndRemoveUntil':
        return externObject.pushAndRemoveUntil;
      case 'restorablePushAndRemoveUntil':
        return externObject.restorablePushAndRemoveUntil;
      case 'replace':
        return externObject.replace;
      case 'restorableReplace':
        return externObject.restorableReplace;
      case 'replaceRouteBelow':
        return externObject.replaceRouteBelow;
      case 'restorableReplaceRouteBelow':
        return externObject.restorableReplaceRouteBelow;
      case 'canPop':
        return externObject.canPop;
      case 'maybePop':
        return externObject.maybePop;
      case 'pop':
        return externObject.pop;
      case 'popUntil':
        return externObject.popUntil;
      case 'removeRoute':
        return externObject.removeRoute;
      case 'removeRouteBelow':
        return externObject.removeRouteBelow;
      case 'finalizeRoute':
        return externObject.finalizeRoute;
      case 'didStartUserGesture':
        return externObject.didStartUserGesture;
      case 'didStopUserGesture':
        return externObject.didStopUserGesture;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RestorableRouteFutureClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableRouteFuture':
        return ({navigatorFinder = _defaultNavigatorFinder, onPresent, onComplete}) => RestorableRouteFutureObjectBinding(RestorableRouteFuture(navigatorFinder : navigatorFinder, onPresent : onPresent, onComplete : onComplete));
      default:
        throw HTErr_Undefined(id);
    }
  }
  static NavigatorState _defaultNavigatorFinder(BuildContext context) => Navigator.of(context);
}

class RestorableRouteFutureObjectBinding extends HT_ExternObject<RestorableRouteFuture> {
  RestorableRouteFutureObjectBinding(RestorableRouteFuture value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableRouteFuture');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'navigatorFinder':
        return externObject.navigatorFinder;
      case 'onPresent':
        return externObject.onPresent;
      case 'onComplete':
        return externObject.onComplete;
      case 'isPresent':
        return externObject.isPresent;
      case 'route':
        return externObject.route;
      case 'enabled':
        return externObject.enabled;
      case 'present':
        return externObject.present;
      case 'createDefaultValue':
        return externObject.createDefaultValue;
      case 'initWithValue':
        return externObject.initWithValue;
      case 'toPrimitives':
        return externObject.toPrimitives;
      case 'fromPrimitives':
        return externObject.fromPrimitives;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

