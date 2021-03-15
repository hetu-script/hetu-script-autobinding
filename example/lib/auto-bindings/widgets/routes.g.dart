import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';


class LocalHistoryEntryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LocalHistoryEntry':
        return ({onRemove}) => LocalHistoryEntryObjectBinding(LocalHistoryEntry(onRemove : onRemove));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LocalHistoryEntryObjectBinding extends HT_ExternObject<LocalHistoryEntry> {
  LocalHistoryEntryObjectBinding(LocalHistoryEntry value) : super(value);

  @override
  final typeid = HT_TypeId('LocalHistoryEntry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onRemove':
        return externObject.onRemove;
      case 'remove':
        return externObject.remove;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RouteObserverClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RouteObserver':
        return () => RouteObserverObjectBinding(RouteObserver());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RouteObserverObjectBinding extends HT_ExternObject<RouteObserver> {
  RouteObserverObjectBinding(RouteObserver value) : super(value);

  @override
  final typeid = HT_TypeId('RouteObserver');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'subscribe':
        return externObject.subscribe;
      case 'unsubscribe':
        return externObject.unsubscribe;
      case 'didPop':
        return externObject.didPop;
      case 'didPush':
        return externObject.didPush;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RawDialogRouteClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawDialogRoute':
        return ({pageBuilder, barrierDismissible = true, barrierColor = const Color(0x80000000), barrierLabel, transitionDuration = const Duration(milliseconds: 200), transitionBuilder, settings}) => RawDialogRouteObjectBinding(RawDialogRoute(pageBuilder : pageBuilder, barrierDismissible : barrierDismissible, barrierColor : barrierColor, barrierLabel : barrierLabel, transitionDuration : transitionDuration, transitionBuilder : transitionBuilder, settings : settings));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawDialogRouteObjectBinding extends HT_ExternObject<RawDialogRoute> {
  RawDialogRouteObjectBinding(RawDialogRoute value) : super(value);

  @override
  final typeid = HT_TypeId('RawDialogRoute');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'barrierDismissible':
        return externObject.barrierDismissible;
      case 'barrierLabel':
        return externObject.barrierLabel;
      case 'barrierColor':
        return externObject.barrierColor;
      case 'transitionDuration':
        return externObject.transitionDuration;
      case 'buildPage':
        return externObject.buildPage;
      case 'buildTransitions':
        return externObject.buildTransitions;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

