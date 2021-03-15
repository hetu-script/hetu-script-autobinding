import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:developer';
import 'dart:io';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class RenderViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderView':
        return ({child, configuration, window}) => RenderViewObjectBinding(RenderView(child : child, configuration : configuration, window : window));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderViewObjectBinding extends HT_ExternObject<RenderView> {
  RenderViewObjectBinding(RenderView value) : super(value);

  @override
  final typeid = HT_TypeId('RenderView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'automaticSystemUiAdjustment':
        return externObject.automaticSystemUiAdjustment;
      case 'size':
        return externObject.size;
      case 'configuration':
        return externObject.configuration;
      case 'isRepaintBoundary':
        return externObject.isRepaintBoundary;
      case 'paintBounds':
        return externObject.paintBounds;
      case 'semanticBounds':
        return externObject.semanticBounds;
      case 'prepareInitialFrame':
        return externObject.prepareInitialFrame;
      case 'debugAssertDoesMeetConstraints':
        return externObject.debugAssertDoesMeetConstraints;
      case 'performResize':
        return externObject.performResize;
      case 'performLayout':
        return externObject.performLayout;
      case 'rotate':
        return externObject.rotate;
      case 'hitTest':
        return externObject.hitTest;
      case 'hitTestMouseTrackers':
        return externObject.hitTestMouseTrackers;
      case 'paint':
        return externObject.paint;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'compositeFrame':
        return externObject.compositeFrame;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'automaticSystemUiAdjustment':
        externObject.automaticSystemUiAdjustment = value;
        break;
      case 'configuration':
        externObject.configuration = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

