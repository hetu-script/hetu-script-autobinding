import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';


class RouteInformationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RouteInformation':
        return ({location, state}) => RouteInformationObjectBinding(RouteInformation(location : location, state : state));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RouteInformationObjectBinding extends HT_ExternObject<RouteInformation> {
  RouteInformationObjectBinding(RouteInformation value) : super(value);

  @override
  final typeid = HT_TypeId('RouteInformation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'location':
        return externObject.location;
      case 'state':
        return externObject.state;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RouterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Router':
        return ({key, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher}) => RouterObjectBinding(Router(key : key, routeInformationProvider : routeInformationProvider, routeInformationParser : routeInformationParser, routerDelegate : routerDelegate, backButtonDispatcher : backButtonDispatcher));
      case 'of':
        return (context) => Router.of(context);
      case 'maybeOf':
        return (context) => Router.maybeOf(context);
      case 'navigate':
        return (context, callback) => Router.navigate(context, callback);
      case 'neglect':
        return (context, callback) => Router.neglect(context, callback);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RouterObjectBinding extends HT_ExternObject<Router> {
  RouterObjectBinding(Router value) : super(value);

  @override
  final typeid = HT_TypeId('Router');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'routeInformationProvider':
        return externObject.routeInformationProvider;
      case 'routeInformationParser':
        return externObject.routeInformationParser;
      case 'routerDelegate':
        return externObject.routerDelegate;
      case 'backButtonDispatcher':
        return externObject.backButtonDispatcher;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RootBackButtonDispatcherClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RootBackButtonDispatcher':
        return () => RootBackButtonDispatcherObjectBinding(RootBackButtonDispatcher());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RootBackButtonDispatcherObjectBinding extends HT_ExternObject<RootBackButtonDispatcher> {
  RootBackButtonDispatcherObjectBinding(RootBackButtonDispatcher value) : super(value);

  @override
  final typeid = HT_TypeId('RootBackButtonDispatcher');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'addCallback':
        return externObject.addCallback;
      case 'removeCallback':
        return externObject.removeCallback;
      case 'didPopRoute':
        return externObject.didPopRoute;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ChildBackButtonDispatcherClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ChildBackButtonDispatcher':
        return (parent) => ChildBackButtonDispatcherObjectBinding(ChildBackButtonDispatcher(parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ChildBackButtonDispatcherObjectBinding extends HT_ExternObject<ChildBackButtonDispatcher> {
  ChildBackButtonDispatcherObjectBinding(ChildBackButtonDispatcher value) : super(value);

  @override
  final typeid = HT_TypeId('ChildBackButtonDispatcher');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'parent':
        return externObject.parent;
      case 'notifiedByParent':
        return externObject.notifiedByParent;
      case 'takePriority':
        return externObject.takePriority;
      case 'deferTo':
        return externObject.deferTo;
      case 'removeCallback':
        return externObject.removeCallback;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PlatformRouteInformationProviderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PlatformRouteInformationProvider':
        return ({initialRouteInformation}) => PlatformRouteInformationProviderObjectBinding(PlatformRouteInformationProvider(initialRouteInformation : initialRouteInformation));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformRouteInformationProviderObjectBinding extends HT_ExternObject<PlatformRouteInformationProvider> {
  PlatformRouteInformationProviderObjectBinding(PlatformRouteInformationProvider value) : super(value);

  @override
  final typeid = HT_TypeId('PlatformRouteInformationProvider');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'routerReportsNewRouteInformation':
        return externObject.routerReportsNewRouteInformation;
      case 'addListener':
        return externObject.addListener;
      case 'removeListener':
        return externObject.removeListener;
      case 'dispose':
        return externObject.dispose;
      case 'didPushRouteInformation':
        return externObject.didPushRouteInformation;
      case 'didPushRoute':
        return externObject.didPushRoute;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

