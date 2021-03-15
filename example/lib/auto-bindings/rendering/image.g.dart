import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui'as ui;


class RenderImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderImage':
        return ({image, debugImageLabel, width, height, scale = 1.0, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, textDirection, invertColors = false, isAntiAlias = false, filterQuality = FilterQuality.low}) => RenderImageObjectBinding(RenderImage(image : image, debugImageLabel : debugImageLabel, width : width, height : height, scale : scale, color : color, colorBlendMode : colorBlendMode, fit : fit, alignment : alignment, repeat : repeat, centerSlice : centerSlice, matchTextDirection : matchTextDirection, textDirection : textDirection, invertColors : invertColors, isAntiAlias : isAntiAlias, filterQuality : filterQuality));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderImageObjectBinding extends HT_ExternObject<RenderImage> {
  RenderImageObjectBinding(RenderImage value) : super(value);

  @override
  final typeid = HT_TypeId('RenderImage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugImageLabel':
        return externObject.debugImageLabel;
      case 'image':
        return externObject.image;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'scale':
        return externObject.scale;
      case 'color':
        return externObject.color;
      case 'filterQuality':
        return externObject.filterQuality;
      case 'colorBlendMode':
        return externObject.colorBlendMode;
      case 'fit':
        return externObject.fit;
      case 'alignment':
        return externObject.alignment;
      case 'repeat':
        return externObject.repeat;
      case 'centerSlice':
        return externObject.centerSlice;
      case 'invertColors':
        return externObject.invertColors;
      case 'matchTextDirection':
        return externObject.matchTextDirection;
      case 'textDirection':
        return externObject.textDirection;
      case 'isAntiAlias':
        return externObject.isAntiAlias;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'hitTestSelf':
        return externObject.hitTestSelf;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'paint':
        return externObject.paint;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'debugImageLabel':
        externObject.debugImageLabel = value;
        break;
      case 'image':
        externObject.image = value;
        break;
      case 'width':
        externObject.width = value;
        break;
      case 'height':
        externObject.height = value;
        break;
      case 'scale':
        externObject.scale = value;
        break;
      case 'color':
        externObject.color = value;
        break;
      case 'filterQuality':
        externObject.filterQuality = value;
        break;
      case 'colorBlendMode':
        externObject.colorBlendMode = value;
        break;
      case 'fit':
        externObject.fit = value;
        break;
      case 'alignment':
        externObject.alignment = value;
        break;
      case 'repeat':
        externObject.repeat = value;
        break;
      case 'centerSlice':
        externObject.centerSlice = value;
        break;
      case 'invertColors':
        externObject.invertColors = value;
        break;
      case 'matchTextDirection':
        externObject.matchTextDirection = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'isAntiAlias':
        externObject.isAntiAlias = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

