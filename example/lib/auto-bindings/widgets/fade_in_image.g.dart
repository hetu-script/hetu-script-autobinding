import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class FadeInImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FadeInImage':
        return ({key, placeholder, placeholderErrorBuilder, image, imageErrorBuilder, excludeFromSemantics = false, imageSemanticLabel, fadeOutDuration = const Duration(milliseconds: 300), fadeOutCurve = Curves.easeOut, fadeInDuration = const Duration(milliseconds: 700), fadeInCurve = Curves.easeIn, width, height, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, matchTextDirection = false}) => FadeInImageObjectBinding(FadeInImage(key : key, placeholder : placeholder, placeholderErrorBuilder : placeholderErrorBuilder, image : image, imageErrorBuilder : imageErrorBuilder, excludeFromSemantics : excludeFromSemantics, imageSemanticLabel : imageSemanticLabel, fadeOutDuration : fadeOutDuration, fadeOutCurve : fadeOutCurve, fadeInDuration : fadeInDuration, fadeInCurve : fadeInCurve, width : width, height : height, fit : fit, alignment : alignment, repeat : repeat, matchTextDirection : matchTextDirection));
      case 'FadeInImage.memoryNetwork':
        return ({key, placeholder, placeholderErrorBuilder, image, imageErrorBuilder, placeholderScale = 1.0, imageScale = 1.0, excludeFromSemantics = false, imageSemanticLabel, fadeOutDuration = const Duration(milliseconds: 300), fadeOutCurve = Curves.easeOut, fadeInDuration = const Duration(milliseconds: 700), fadeInCurve = Curves.easeIn, width, height, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, matchTextDirection = false, placeholderCacheWidth, placeholderCacheHeight, imageCacheWidth, imageCacheHeight}) => FadeInImageObjectBinding(FadeInImage.memoryNetwork(key : key, placeholder : placeholder, placeholderErrorBuilder : placeholderErrorBuilder, image : image, imageErrorBuilder : imageErrorBuilder, placeholderScale : placeholderScale, imageScale : imageScale, excludeFromSemantics : excludeFromSemantics, imageSemanticLabel : imageSemanticLabel, fadeOutDuration : fadeOutDuration, fadeOutCurve : fadeOutCurve, fadeInDuration : fadeInDuration, fadeInCurve : fadeInCurve, width : width, height : height, fit : fit, alignment : alignment, repeat : repeat, matchTextDirection : matchTextDirection, placeholderCacheWidth : placeholderCacheWidth, placeholderCacheHeight : placeholderCacheHeight, imageCacheWidth : imageCacheWidth, imageCacheHeight : imageCacheHeight));
      case 'FadeInImage.assetNetwork':
        return ({key, placeholder, placeholderErrorBuilder, image, imageErrorBuilder, bundle, placeholderScale, imageScale = 1.0, excludeFromSemantics = false, imageSemanticLabel, fadeOutDuration = const Duration(milliseconds: 300), fadeOutCurve = Curves.easeOut, fadeInDuration = const Duration(milliseconds: 700), fadeInCurve = Curves.easeIn, width, height, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, matchTextDirection = false, placeholderCacheWidth, placeholderCacheHeight, imageCacheWidth, imageCacheHeight}) => FadeInImageObjectBinding(FadeInImage.assetNetwork(key : key, placeholder : placeholder, placeholderErrorBuilder : placeholderErrorBuilder, image : image, imageErrorBuilder : imageErrorBuilder, bundle : bundle, placeholderScale : placeholderScale, imageScale : imageScale, excludeFromSemantics : excludeFromSemantics, imageSemanticLabel : imageSemanticLabel, fadeOutDuration : fadeOutDuration, fadeOutCurve : fadeOutCurve, fadeInDuration : fadeInDuration, fadeInCurve : fadeInCurve, width : width, height : height, fit : fit, alignment : alignment, repeat : repeat, matchTextDirection : matchTextDirection, placeholderCacheWidth : placeholderCacheWidth, placeholderCacheHeight : placeholderCacheHeight, imageCacheWidth : imageCacheWidth, imageCacheHeight : imageCacheHeight));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FadeInImageObjectBinding extends HT_ExternObject<FadeInImage> {
  FadeInImageObjectBinding(FadeInImage value) : super(value);

  @override
  final typeid = HT_TypeId('FadeInImage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'placeholder':
        return externObject.placeholder;
      case 'placeholderErrorBuilder':
        return externObject.placeholderErrorBuilder;
      case 'image':
        return externObject.image;
      case 'imageErrorBuilder':
        return externObject.imageErrorBuilder;
      case 'fadeOutDuration':
        return externObject.fadeOutDuration;
      case 'fadeOutCurve':
        return externObject.fadeOutCurve;
      case 'fadeInDuration':
        return externObject.fadeInDuration;
      case 'fadeInCurve':
        return externObject.fadeInCurve;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'fit':
        return externObject.fit;
      case 'alignment':
        return externObject.alignment;
      case 'repeat':
        return externObject.repeat;
      case 'matchTextDirection':
        return externObject.matchTextDirection;
      case 'excludeFromSemantics':
        return externObject.excludeFromSemantics;
      case 'imageSemanticLabel':
        return externObject.imageSemanticLabel;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

