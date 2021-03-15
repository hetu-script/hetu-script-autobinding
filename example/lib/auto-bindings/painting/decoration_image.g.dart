import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:developer'as developer;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';

class ImageRepeatClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'repeat':
        return ImageRepeat.repeat;
      case 'repeatX':
        return ImageRepeat.repeatX;
      case 'repeatY':
        return ImageRepeat.repeatY;
      case 'noRepeat':
        return ImageRepeat.noRepeat;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DecorationImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DecorationImage':
        return ({image, onError, colorFilter, fit, alignment = Alignment.center, centerSlice, repeat = ImageRepeat.noRepeat, matchTextDirection = false, scale = 1.0}) => DecorationImageObjectBinding(DecorationImage(image : image, onError : onError, colorFilter : colorFilter, fit : fit, alignment : alignment, centerSlice : centerSlice, repeat : repeat, matchTextDirection : matchTextDirection, scale : scale));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DecorationImageObjectBinding extends HT_ExternObject<DecorationImage> {
  DecorationImageObjectBinding(DecorationImage value) : super(value);

  @override
  final typeid = HT_TypeId('DecorationImage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'image':
        return externObject.image;
      case 'onError':
        return externObject.onError;
      case 'colorFilter':
        return externObject.colorFilter;
      case 'fit':
        return externObject.fit;
      case 'alignment':
        return externObject.alignment;
      case 'centerSlice':
        return externObject.centerSlice;
      case 'repeat':
        return externObject.repeat;
      case 'matchTextDirection':
        return externObject.matchTextDirection;
      case 'scale':
        return externObject.scale;
      case 'hashCode':
        return externObject.hashCode;
      case 'createPainter':
        return externObject.createPainter;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

