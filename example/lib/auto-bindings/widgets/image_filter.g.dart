import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class ImageFilteredClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageFiltered':
        return ({key, imageFilter, child}) => ImageFilteredObjectBinding(ImageFiltered(key : key, imageFilter : imageFilter, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageFilteredObjectBinding extends HT_ExternObject<ImageFiltered> {
  ImageFilteredObjectBinding(ImageFiltered value) : super(value);

  @override
  final typeid = HT_TypeId('ImageFiltered');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'imageFilter':
        return externObject.imageFilter;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

