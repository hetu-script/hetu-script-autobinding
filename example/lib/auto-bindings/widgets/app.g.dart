import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


class WidgetsAppClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WidgetsApp':
        return ({key, navigatorKey, onGenerateRoute, onGenerateInitialRoutes, onUnknownRoute, navigatorObservers = const <NavigatorObserver>[], initialRoute, pageRouteBuilder, home, routes = const <String, WidgetBuilder>{}, builder, title = '', onGenerateTitle, textStyle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowWidgetInspector = false, debugShowCheckedModeBanner = true, inspectorSelectButtonBuilder, shortcuts, actions, restorationScopeId}) => WidgetsAppObjectBinding(WidgetsApp(key : key, navigatorKey : navigatorKey, onGenerateRoute : onGenerateRoute, onGenerateInitialRoutes : onGenerateInitialRoutes, onUnknownRoute : onUnknownRoute, navigatorObservers : navigatorObservers, initialRoute : initialRoute, pageRouteBuilder : pageRouteBuilder, home : home, routes : routes, builder : builder, title : title, onGenerateTitle : onGenerateTitle, textStyle : textStyle, color : color, locale : locale, localizationsDelegates : localizationsDelegates, localeListResolutionCallback : localeListResolutionCallback, localeResolutionCallback : localeResolutionCallback, supportedLocales : supportedLocales, showPerformanceOverlay : showPerformanceOverlay, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers, showSemanticsDebugger : showSemanticsDebugger, debugShowWidgetInspector : debugShowWidgetInspector, debugShowCheckedModeBanner : debugShowCheckedModeBanner, inspectorSelectButtonBuilder : inspectorSelectButtonBuilder, shortcuts : shortcuts, actions : actions, restorationScopeId : restorationScopeId));
      case 'WidgetsApp.router':
        return ({key, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher, builder, title = '', onGenerateTitle, textStyle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowWidgetInspector = false, debugShowCheckedModeBanner = true, inspectorSelectButtonBuilder, shortcuts, actions, restorationScopeId}) => WidgetsAppObjectBinding(WidgetsApp.router(key : key, routeInformationProvider : routeInformationProvider, routeInformationParser : routeInformationParser, routerDelegate : routerDelegate, backButtonDispatcher : backButtonDispatcher, builder : builder, title : title, onGenerateTitle : onGenerateTitle, textStyle : textStyle, color : color, locale : locale, localizationsDelegates : localizationsDelegates, localeListResolutionCallback : localeListResolutionCallback, localeResolutionCallback : localeResolutionCallback, supportedLocales : supportedLocales, showPerformanceOverlay : showPerformanceOverlay, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers, showSemanticsDebugger : showSemanticsDebugger, debugShowWidgetInspector : debugShowWidgetInspector, debugShowCheckedModeBanner : debugShowCheckedModeBanner, inspectorSelectButtonBuilder : inspectorSelectButtonBuilder, shortcuts : shortcuts, actions : actions, restorationScopeId : restorationScopeId));
      case 'defaultShortcuts':
        return () => WidgetsApp.defaultShortcuts;
      case 'WidgetsApp.showPerformanceOverlayOverride':
        return WidgetsApp.showPerformanceOverlayOverride;
      case 'WidgetsApp.debugShowWidgetInspectorOverride':
        return WidgetsApp.debugShowWidgetInspectorOverride;
      case 'WidgetsApp.debugAllowBannerOverride':
        return WidgetsApp.debugAllowBannerOverride;
      case 'WidgetsApp.defaultActions':
        return WidgetsApp.defaultActions;
      default:
        throw HTErr_Undefined(id);
    }
  }
  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'WidgetsApp.showPerformanceOverlayOverride':
        return WidgetsApp.showPerformanceOverlayOverride = value;
      case 'WidgetsApp.debugShowWidgetInspectorOverride':
        return WidgetsApp.debugShowWidgetInspectorOverride = value;
      case 'WidgetsApp.debugAllowBannerOverride':
        return WidgetsApp.debugAllowBannerOverride = value;
      case 'WidgetsApp.defaultActions':
        return WidgetsApp.defaultActions = value;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WidgetsAppObjectBinding extends HT_ExternObject<WidgetsApp> {
  WidgetsAppObjectBinding(WidgetsApp value) : super(value);

  @override
  final typeid = HT_TypeId('WidgetsApp');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'navigatorKey':
        return externObject.navigatorKey;
      case 'onGenerateRoute':
        return externObject.onGenerateRoute;
      case 'onGenerateInitialRoutes':
        return externObject.onGenerateInitialRoutes;
      case 'pageRouteBuilder':
        return externObject.pageRouteBuilder;
      case 'routeInformationParser':
        return externObject.routeInformationParser;
      case 'routerDelegate':
        return externObject.routerDelegate;
      case 'backButtonDispatcher':
        return externObject.backButtonDispatcher;
      case 'routeInformationProvider':
        return externObject.routeInformationProvider;
      case 'home':
        return externObject.home;
      case 'routes':
        return externObject.routes;
      case 'onUnknownRoute':
        return externObject.onUnknownRoute;
      case 'initialRoute':
        return externObject.initialRoute;
      case 'navigatorObservers':
        return externObject.navigatorObservers;
      case 'builder':
        return externObject.builder;
      case 'title':
        return externObject.title;
      case 'onGenerateTitle':
        return externObject.onGenerateTitle;
      case 'textStyle':
        return externObject.textStyle;
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
      case 'debugShowWidgetInspector':
        return externObject.debugShowWidgetInspector;
      case 'inspectorSelectButtonBuilder':
        return externObject.inspectorSelectButtonBuilder;
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

