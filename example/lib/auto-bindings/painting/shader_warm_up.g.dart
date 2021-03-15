import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:developer';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';


class DefaultShaderWarmUpClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultShaderWarmUp':
        return ({drawCallSpacing = 0.0, canvasSize = const ui.Size(100.0, 100.0)}) => DefaultShaderWarmUpObjectBinding(DefaultShaderWarmUp(drawCallSpacing : drawCallSpacing, canvasSize : canvasSize));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultShaderWarmUpObjectBinding extends HT_ExternObject<DefaultShaderWarmUp> {
  DefaultShaderWarmUpObjectBinding(DefaultShaderWarmUp value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultShaderWarmUp');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'drawCallSpacing':
        return externObject.drawCallSpacing;
      case 'canvasSize':
        return externObject.canvasSize;
      case 'size':
        return externObject.size;
      case 'warmUpOnCanvas':
        return externObject.warmUpOnCanvas;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

