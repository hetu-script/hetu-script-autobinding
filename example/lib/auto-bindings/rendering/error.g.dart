import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui'as ui;


class RenderErrorBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderErrorBox':
        return ([message = '']) => RenderErrorBoxObjectBinding(RenderErrorBox(message));
      case 'RenderErrorBox.padding':
        return RenderErrorBox.padding;
      case 'RenderErrorBox.minimumWidth':
        return RenderErrorBox.minimumWidth;
      case 'RenderErrorBox.backgroundColor':
        return RenderErrorBox.backgroundColor;
      case 'RenderErrorBox.textStyle':
        return RenderErrorBox.textStyle;
      case 'RenderErrorBox.paragraphStyle':
        return RenderErrorBox.paragraphStyle;
      default:
        throw HTErr_Undefined(id);
    }
  }
  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'RenderErrorBox.padding':
        return RenderErrorBox.padding = value;
      case 'RenderErrorBox.minimumWidth':
        return RenderErrorBox.minimumWidth = value;
      case 'RenderErrorBox.backgroundColor':
        return RenderErrorBox.backgroundColor = value;
      case 'RenderErrorBox.textStyle':
        return RenderErrorBox.textStyle = value;
      case 'RenderErrorBox.paragraphStyle':
        return RenderErrorBox.paragraphStyle = value;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderErrorBoxObjectBinding extends HT_ExternObject<RenderErrorBox> {
  RenderErrorBoxObjectBinding(RenderErrorBox value) : super(value);

  @override
  final typeid = HT_TypeId('RenderErrorBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'sizedByParent':
        return externObject.sizedByParent;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'hitTestSelf':
        return externObject.hitTestSelf;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

