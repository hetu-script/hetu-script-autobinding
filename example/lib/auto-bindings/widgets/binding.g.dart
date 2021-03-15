import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:developer'as developer;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';


class RenderObjectToWidgetAdapterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderObjectToWidgetAdapter':
        return ({child, container, debugShortDescription}) => RenderObjectToWidgetAdapterObjectBinding(RenderObjectToWidgetAdapter<RenderObject>(child : child, container : container, debugShortDescription : debugShortDescription));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderObjectToWidgetAdapterObjectBinding extends HT_ExternObject<RenderObjectToWidgetAdapter> {
  RenderObjectToWidgetAdapterObjectBinding(RenderObjectToWidgetAdapter value) : super(value);

  @override
  final typeid = HT_TypeId('RenderObjectToWidgetAdapter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'container':
        return externObject.container;
      case 'debugShortDescription':
        return externObject.debugShortDescription;
      case 'createElement':
        return externObject.createElement;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'attachToRenderTree':
        return externObject.attachToRenderTree;
      case 'toStringShort':
        return externObject.toStringShort;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderObjectToWidgetElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderObjectToWidgetElement':
        return (widget) => RenderObjectToWidgetElementObjectBinding(RenderObjectToWidgetElement<RenderObject>(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderObjectToWidgetElementObjectBinding extends HT_ExternObject<RenderObjectToWidgetElement> {
  RenderObjectToWidgetElementObjectBinding(RenderObjectToWidgetElement value) : super(value);

  @override
  final typeid = HT_TypeId('RenderObjectToWidgetElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widget':
        return externObject.widget;
      case 'renderObject':
        return externObject.renderObject;
      case 'visitChildren':
        return externObject.visitChildren;
      case 'forgetChild':
        return externObject.forgetChild;
      case 'mount':
        return externObject.mount;
      case 'update':
        return externObject.update;
      case 'performRebuild':
        return externObject.performRebuild;
      case 'insertRenderObjectChild':
        return externObject.insertRenderObjectChild;
      case 'moveRenderObjectChild':
        return externObject.moveRenderObjectChild;
      case 'removeRenderObjectChild':
        return externObject.removeRenderObjectChild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class WidgetsFlutterBindingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WidgetsFlutterBinding':
        return () => WidgetsFlutterBindingObjectBinding(WidgetsFlutterBinding());
      case 'ensureInitialized':
        return () => WidgetsFlutterBinding.ensureInitialized();
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WidgetsFlutterBindingObjectBinding extends HT_ExternObject<WidgetsFlutterBinding> {
  WidgetsFlutterBindingObjectBinding(WidgetsFlutterBinding value) : super(value);

  @override
  final typeid = HT_TypeId('WidgetsFlutterBinding');


}

