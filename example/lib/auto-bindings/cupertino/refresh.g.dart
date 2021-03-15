import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class RefreshIndicatorModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'inactive':
        return RefreshIndicatorMode.inactive;
      case 'drag':
        return RefreshIndicatorMode.drag;
      case 'armed':
        return RefreshIndicatorMode.armed;
      case 'refresh':
        return RefreshIndicatorMode.refresh;
      case 'done':
        return RefreshIndicatorMode.done;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoSliverRefreshControlClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoSliverRefreshControl':
        const buildRefreshIndicator = CupertinoSliverRefreshControl.buildRefreshIndicator;
        return ({key, refreshTriggerPullDistance = _defaultRefreshTriggerPullDistance, refreshIndicatorExtent = _defaultRefreshIndicatorExtent, builder = buildRefreshIndicator, onRefresh}) => CupertinoSliverRefreshControlObjectBinding(CupertinoSliverRefreshControl(key : key, refreshTriggerPullDistance : refreshTriggerPullDistance, refreshIndicatorExtent : refreshIndicatorExtent, builder : builder, onRefresh : onRefresh));
      case 'buildRefreshIndicator':
        return (context, refreshState, pulledExtent, refreshTriggerPullDistance, refreshIndicatorExtent) => CupertinoSliverRefreshControl.buildRefreshIndicator(context, refreshState, pulledExtent, refreshTriggerPullDistance, refreshIndicatorExtent);
      default:
        throw HTErr_Undefined(id);
    }
  }
  static const _defaultRefreshTriggerPullDistance = 100.0;
  static const _defaultRefreshIndicatorExtent = 60.0;
}

class CupertinoSliverRefreshControlObjectBinding extends HT_ExternObject<CupertinoSliverRefreshControl> {
  CupertinoSliverRefreshControlObjectBinding(CupertinoSliverRefreshControl value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoSliverRefreshControl');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'refreshTriggerPullDistance':
        return externObject.refreshTriggerPullDistance;
      case 'refreshIndicatorExtent':
        return externObject.refreshIndicatorExtent;
      case 'builder':
        return externObject.builder;
      case 'onRefresh':
        return externObject.onRefresh;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

