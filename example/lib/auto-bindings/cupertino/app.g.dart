import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class CupertinoAppClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoApp':
        return ({key, navigatorKey, home, theme, routes = const <String, WidgetBuilder>{}, initialRoute, onGenerateRoute, onGenerateInitialRoutes, onUnknownRoute, navigatorObservers = const <NavigatorObserver>[], builder, title = '', onGenerateTitle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowCheckedModeBanner = true, shortcuts, actions, restorationScopeId}) => CupertinoAppObjectBinding(CupertinoApp(key : key, navigatorKey : navigatorKey, home : home, theme : theme, routes : routes, initialRoute : initialRoute, onGenerateRoute : onGenerateRoute, onGenerateInitialRoutes : onGenerateInitialRoutes, onUnknownRoute : onUnknownRoute, navigatorObservers : navigatorObservers, builder : builder, title : title, onGenerateTitle : onGenerateTitle, color : color, locale : locale, localizationsDelegates : localizationsDelegates, localeListResolutionCallback : localeListResolutionCallback, localeResolutionCallback : localeResolutionCallback, supportedLocales : supportedLocales, showPerformanceOverlay : showPerformanceOverlay, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers, showSemanticsDebugger : showSemanticsDebugger, debugShowCheckedModeBanner : debugShowCheckedModeBanner, shortcuts : shortcuts, actions : actions, restorationScopeId : restorationScopeId));
      case 'CupertinoApp.router':
        return ({key, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher, theme, builder, title = '', onGenerateTitle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowCheckedModeBanner = true, shortcuts, actions, restorationScopeId}) => CupertinoAppObjectBinding(CupertinoApp.router(key : key, routeInformationProvider : routeInformationProvider, routeInformationParser : routeInformationParser, routerDelegate : routerDelegate, backButtonDispatcher : backButtonDispatcher, theme : theme, builder : builder, title : title, onGenerateTitle : onGenerateTitle, color : color, locale : locale, localizationsDelegates : localizationsDelegates, localeListResolutionCallback : localeListResolutionCallback, localeResolutionCallback : localeResolutionCallback, supportedLocales : supportedLocales, showPerformanceOverlay : showPerformanceOverlay, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers, showSemanticsDebugger : showSemanticsDebugger, debugShowCheckedModeBanner : debugShowCheckedModeBanner, shortcuts : shortcuts, actions : actions, restorationScopeId : restorationScopeId));
      case 'createCupertinoHeroController':
        return () => CupertinoApp.createCupertinoHeroController();
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoAppObjectBinding extends HT_ExternObject<CupertinoApp> {
  CupertinoAppObjectBinding(CupertinoApp value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoApp');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'navigatorKey':
        return externObject.navigatorKey;
      case 'home':
        return externObject.home;
      case 'theme':
        return externObject.theme;
      case 'routes':
        return externObject.routes;
      case 'initialRoute':
        return externObject.initialRoute;
      case 'onGenerateRoute':
        return externObject.onGenerateRoute;
      case 'onGenerateInitialRoutes':
        return externObject.onGenerateInitialRoutes;
      case 'onUnknownRoute':
        return externObject.onUnknownRoute;
      case 'navigatorObservers':
        return externObject.navigatorObservers;
      case 'routeInformationProvider':
        return externObject.routeInformationProvider;
      case 'routeInformationParser':
        return externObject.routeInformationParser;
      case 'routerDelegate':
        return externObject.routerDelegate;
      case 'backButtonDispatcher':
        return externObject.backButtonDispatcher;
      case 'builder':
        return externObject.builder;
      case 'title':
        return externObject.title;
      case 'onGenerateTitle':
        return externObject.onGenerateTitle;
      case 'color':
        return externObject.color;
      case 'locale':
        return externObject.locale;
      case 'localizationsDelegates':
        return externObject.localizationsDelegates;
      case 'localeListResolutionCallback':
        return externObject.localeListResolutionCallback;
      case 'localeResolutionCallback':
        return externObject.localeResolutionCallback;
      case 'supportedLocales':
        return externObject.supportedLocales;
      case 'showPerformanceOverlay':
        return externObject.showPerformanceOverlay;
      case 'checkerboardRasterCacheImages':
        return externObject.checkerboardRasterCacheImages;
      case 'checkerboardOffscreenLayers':
        return externObject.checkerboardOffscreenLayers;
      case 'showSemanticsDebugger':
        return externObject.showSemanticsDebugger;
      case 'debugShowCheckedModeBanner':
        return externObject.debugShowCheckedModeBanner;
      case 'shortcuts':
        return externObject.shortcuts;
      case 'actions':
        return externObject.actions;
      case 'restorationScopeId':
        return externObject.restorationScopeId;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

