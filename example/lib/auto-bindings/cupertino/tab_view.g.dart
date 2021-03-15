import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class CupertinoTabViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTabView':
        return ({key, builder, navigatorKey, defaultTitle, routes, onGenerateRoute, onUnknownRoute, navigatorObservers = const <NavigatorObserver>[], restorationScopeId}) => CupertinoTabViewObjectBinding(CupertinoTabView(key : key, builder : builder, navigatorKey : navigatorKey, defaultTitle : defaultTitle, routes : routes, onGenerateRoute : onGenerateRoute, onUnknownRoute : onUnknownRoute, navigatorObservers : navigatorObservers, restorationScopeId : restorationScopeId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTabViewObjectBinding extends HT_ExternObject<CupertinoTabView> {
  CupertinoTabViewObjectBinding(CupertinoTabView value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTabView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'navigatorKey':
        return externObject.navigatorKey;
      case 'defaultTitle':
        return externObject.defaultTitle;
      case 'routes':
        return externObject.routes;
      case 'onGenerateRoute':
        return externObject.onGenerateRoute;
      case 'onUnknownRoute':
        return externObject.onUnknownRoute;
      case 'navigatorObservers':
        return externObject.navigatorObservers;
      case 'restorationScopeId':
        return externObject.restorationScopeId;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

