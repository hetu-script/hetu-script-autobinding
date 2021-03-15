import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/semantics.dart';


class ImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Image':
        return ({key, image, frameBuilder, loadingBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, isAntiAlias = false, filterQuality = FilterQuality.low}) => ImageObjectBinding(Image(key : key, image : image, frameBuilder : frameBuilder, loadingBuilder : loadingBuilder, errorBuilder : errorBuilder, semanticLabel : semanticLabel, excludeFromSemantics : excludeFromSemantics, width : width, height : height, color : color, colorBlendMode : colorBlendMode, fit : fit, alignment : alignment, repeat : repeat, centerSlice : centerSlice, matchTextDirection : matchTextDirection, gaplessPlayback : gaplessPlayback, isAntiAlias : isAntiAlias, filterQuality : filterQuality));
      case 'Image.network':
        return (src, {key, scale = 1.0, frameBuilder, loadingBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, filterQuality = FilterQuality.low, isAntiAlias = false, headers, cacheWidth, cacheHeight}) => ImageObjectBinding(Image.network(src, key : key, scale : scale, frameBuilder : frameBuilder, loadingBuilder : loadingBuilder, errorBuilder : errorBuilder, semanticLabel : semanticLabel, excludeFromSemantics : excludeFromSemantics, width : width, height : height, color : color, colorBlendMode : colorBlendMode, fit : fit, alignment : alignment, repeat : repeat, centerSlice : centerSlice, matchTextDirection : matchTextDirection, gaplessPlayback : gaplessPlayback, filterQuality : filterQuality, isAntiAlias : isAntiAlias, headers : headers, cacheWidth : cacheWidth, cacheHeight : cacheHeight));
      case 'Image.file':
        return (file, {key, scale = 1.0, frameBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, isAntiAlias = false, filterQuality = FilterQuality.low, cacheWidth, cacheHeight}) => ImageObjectBinding(Image.file(file, key : key, scale : scale, frameBuilder : frameBuilder, errorBuilder : errorBuilder, semanticLabel : semanticLabel, excludeFromSemantics : excludeFromSemantics, width : width, height : height, color : color, colorBlendMode : colorBlendMode, fit : fit, alignment : alignment, repeat : repeat, centerSlice : centerSlice, matchTextDirection : matchTextDirection, gaplessPlayback : gaplessPlayback, isAntiAlias : isAntiAlias, filterQuality : filterQuality, cacheWidth : cacheWidth, cacheHeight : cacheHeight));
      case 'Image.asset':
        return (name, {key, bundle, frameBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, scale, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, isAntiAlias = false, package, filterQuality = FilterQuality.low, cacheWidth, cacheHeight}) => ImageObjectBinding(Image.asset(name, key : key, bundle : bundle, frameBuilder : frameBuilder, errorBuilder : errorBuilder, semanticLabel : semanticLabel, excludeFromSemantics : excludeFromSemantics, scale : scale, width : width, height : height, color : color, colorBlendMode : colorBlendMode, fit : fit, alignment : alignment, repeat : repeat, centerSlice : centerSlice, matchTextDirection : matchTextDirection, gaplessPlayback : gaplessPlayback, isAntiAlias : isAntiAlias, package : package, filterQuality : filterQuality, cacheWidth : cacheWidth, cacheHeight : cacheHeight));
      case 'Image.memory':
        return (bytes, {key, scale = 1.0, frameBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, isAntiAlias = false, filterQuality = FilterQuality.low, cacheWidth, cacheHeight}) => ImageObjectBinding(Image.memory(bytes, key : key, scale : scale, frameBuilder : frameBuilder, errorBuilder : errorBuilder, semanticLabel : semanticLabel, excludeFromSemantics : excludeFromSemantics, width : width, height : height, color : color, colorBlendMode : colorBlendMode, fit : fit, alignment : alignment, repeat : repeat, centerSlice : centerSlice, matchTextDirection : matchTextDirection, gaplessPlayback : gaplessPlayback, isAntiAlias : isAntiAlias, filterQuality : filterQuality, cacheWidth : cacheWidth, cacheHeight : cacheHeight));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageObjectBinding extends HT_ExternObject<Image> {
  ImageObjectBinding(Image value) : super(value);

  @override
  final typeid = HT_TypeId('Image');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'image':
        return externObject.image;
      case 'frameBuilder':
        return externObject.frameBuilder;
      case 'loadingBuilder':
        return externObject.loadingBuilder;
      case 'errorBuilder':
        return externObject.errorBuilder;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
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
      case 'matchTextDirection':
        return externObject.matchTextDirection;
      case 'gaplessPlayback':
        return externObject.gaplessPlayback;
      case 'semanticLabel':
        return externObject.semanticLabel;
      case 'excludeFromSemantics':
        return externObject.excludeFromSemantics;
      case 'isAntiAlias':
        return externObject.isAntiAlias;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

