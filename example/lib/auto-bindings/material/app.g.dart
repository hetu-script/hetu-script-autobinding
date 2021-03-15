import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui'as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ThemeModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'system':
        return ThemeMode.system;
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialAppClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialApp':
        return ({key, navigatorKey, scaffoldMessengerKey, home, routes = const <String, WidgetBuilder>{}, initialRoute, onGenerateRoute, onGenerateInitialRoutes, onUnknownRoute, navigatorObservers = const <NavigatorObserver>[], builder, title = '', onGenerateTitle, color, theme, darkTheme, highContrastTheme, highContrastDarkTheme, themeMode = ThemeMode.system, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], debugShowMaterialGrid = false, showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowCheckedModeBanner = true, shortcuts, actions, restorationScopeId}) => MaterialAppObjectBinding(MaterialApp(key : key, navigatorKey : navigatorKey, scaffoldMessengerKey : scaffoldMessengerKey, home : home, routes : routes, initialRoute : initialRoute, onGenerateRoute : onGenerateRoute, onGenerateInitialRoutes : onGenerateInitialRoutes, onUnknownRoute : onUnknownRoute, navigatorObservers : navigatorObservers, builder : builder, title : title, onGenerateTitle : onGenerateTitle, color : color, theme : theme, darkTheme : darkTheme, highContrastTheme : highContrastTheme, highContrastDarkTheme : highContrastDarkTheme, themeMode : themeMode, locale : locale, localizationsDelegates : localizationsDelegates, localeListResolutionCallback : localeListResolutionCallback, localeResolutionCallback : localeResolutionCallback, supportedLocales : supportedLocales, debugShowMaterialGrid : debugShowMaterialGrid, showPerformanceOverlay : showPerformanceOverlay, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers, showSemanticsDebugger : showSemanticsDebugger, debugShowCheckedModeBanner : debugShowCheckedModeBanner, shortcuts : shortcuts, actions : actions, restorationScopeId : restorationScopeId));
      case 'MaterialApp.router':
        return ({key, scaffoldMessengerKey, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher, builder, title = '', onGenerateTitle, color, theme, darkTheme, highContrastTheme, highContrastDarkTheme, themeMode = ThemeMode.system, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], debugShowMaterialGrid = false, showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowCheckedModeBanner = true, shortcuts, actions, restorationScopeId}) => MaterialAppObjectBinding(MaterialApp.router(key : key, scaffoldMessengerKey : scaffoldMessengerKey, routeInformationProvider : routeInformationProvider, routeInformationParser : routeInformationParser, routerDelegate : routerDelegate, backButtonDispatcher : backButtonDispatcher, builder : builder, title : title, onGenerateTitle : onGenerateTitle, color : color, theme : theme, darkTheme : darkTheme, highContrastTheme : highContrastTheme, highContrastDarkTheme : highContrastDarkTheme, themeMode : themeMode, locale : locale, localizationsDelegates : localizationsDelegates, localeListResolutionCallback : localeListResolutionCallback, localeResolutionCallback : localeResolutionCallback, supportedLocales : supportedLocales, debugShowMaterialGrid : debugShowMaterialGrid, showPerformanceOverlay : showPerformanceOverlay, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers, showSemanticsDebugger : showSemanticsDebugger, debugShowCheckedModeBanner : debugShowCheckedModeBanner, shortcuts : shortcuts, actions : actions, restorationScopeId : restorationScopeId));
      case 'createMaterialHeroController':
        return () => MaterialApp.createMaterialHeroController();
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialAppObjectBinding extends HT_ExternObject<MaterialApp> {
  MaterialAppObjectBinding(MaterialApp value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialApp');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'navigatorKey':
        return externObject.navigatorKey;
      case 'scaffoldMessengerKey':
        return externObject.scaffoldMessengerKey;
      case 'home':
        return externObject.home;
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
      case 'theme':
        return externObject.theme;
      case 'darkTheme':
        return externObject.darkTheme;
      case 'highContrastTheme':
        return externObject.highContrastTheme;
      case 'highContrastDarkTheme':
        return externObject.highContrastDarkTheme;
      case 'themeMode':
        return externObject.themeMode;
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
      case 'debugShowMaterialGrid':
        return externObject.debugShowMaterialGrid;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

