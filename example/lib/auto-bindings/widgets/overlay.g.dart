import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';


class OverlayEntryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OverlayEntry':
        return ({builder, opaque = false, maintainState = false}) => OverlayEntryObjectBinding(OverlayEntry(builder : builder, opaque : opaque, maintainState : maintainState));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverlayEntryObjectBinding extends HT_ExternObject<OverlayEntry> {
  OverlayEntryObjectBinding(OverlayEntry value) : super(value);

  @override
  final typeid = HT_TypeId('OverlayEntry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'opaque':
        return externObject.opaque;
      case 'maintainState':
        return externObject.maintainState;
      case 'mounted':
        return externObject.mounted;
      case 'remove':
        return externObject.remove;
      case 'markNeedsBuild':
        return externObject.markNeedsBuild;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'opaque':
        externObject.opaque = value;
        break;
      case 'maintainState':
        externObject.maintainState = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverlayClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Overlay':
        return ({key, initialEntries = const <OverlayEntry>[], clipBehavior = Clip.hardEdge}) => OverlayObjectBinding(Overlay(key : key, initialEntries : initialEntries, clipBehavior : clipBehavior));
      case 'of':
        return (context, {rootOverlay = false, debugRequiredFor}) => Overlay.of(context, rootOverlay : rootOverlay, debugRequiredFor : debugRequiredFor);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverlayObjectBinding extends HT_ExternObject<Overlay> {
  OverlayObjectBinding(Overlay value) : super(value);

  @override
  final typeid = HT_TypeId('Overlay');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initialEntries':
        return externObject.initialEntries;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class OverlayStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OverlayState':
        return () => OverlayStateObjectBinding(OverlayState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverlayStateObjectBinding extends HT_ExternObject<OverlayState> {
  OverlayStateObjectBinding(OverlayState value) : super(value);

  @override
  final typeid = HT_TypeId('OverlayState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initState':
        return externObject.initState;
      case 'insert':
        return externObject.insert;
      case 'insertAll':
        return externObject.insertAll;
      case 'rearrange':
        return externObject.rearrange;
      case 'debugIsVisible':
        return externObject.debugIsVisible;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

