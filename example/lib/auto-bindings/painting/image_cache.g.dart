import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:developer';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';


class ImageCacheClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageCache':
        return () => ImageCacheObjectBinding(ImageCache());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageCacheObjectBinding extends HT_ExternObject<ImageCache> {
  ImageCacheObjectBinding(ImageCache value) : super(value);

  @override
  final typeid = HT_TypeId('ImageCache');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'maximumSize':
        return externObject.maximumSize;
      case 'currentSize':
        return externObject.currentSize;
      case 'maximumSizeBytes':
        return externObject.maximumSizeBytes;
      case 'currentSizeBytes':
        return externObject.currentSizeBytes;
      case 'liveImageCount':
        return externObject.liveImageCount;
      case 'pendingImageCount':
        return externObject.pendingImageCount;
      case 'clear':
        return externObject.clear;
      case 'evict':
        return externObject.evict;
      case 'putIfAbsent':
        return externObject.putIfAbsent;
      case 'statusForKey':
        return externObject.statusForKey;
      case 'containsKey':
        return externObject.containsKey;
      case 'clearLiveImages':
        return externObject.clearLiveImages;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'maximumSize':
        externObject.maximumSize = value;
        break;
      case 'maximumSizeBytes':
        externObject.maximumSizeBytes = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

