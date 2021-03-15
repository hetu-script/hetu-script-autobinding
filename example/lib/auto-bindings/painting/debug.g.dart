import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';


class ImageSizeInfoClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageSizeInfo':
        return ({source, displaySize, imageSize}) => ImageSizeInfoObjectBinding(ImageSizeInfo(source : source, displaySize : displaySize, imageSize : imageSize));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageSizeInfoObjectBinding extends HT_ExternObject<ImageSizeInfo> {
  ImageSizeInfoObjectBinding(ImageSizeInfo value) : super(value);

  @override
  final typeid = HT_TypeId('ImageSizeInfo');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'source':
        return externObject.source;
      case 'displaySize':
        return externObject.displaySize;
      case 'imageSize':
        return externObject.imageSize;
      case 'displaySizeInBytes':
        return externObject.displaySizeInBytes;
      case 'decodedSizeInBytes':
        return externObject.decodedSizeInBytes;
      case 'hashCode':
        return externObject.hashCode;
      case 'toJson':
        return externObject.toJson;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

