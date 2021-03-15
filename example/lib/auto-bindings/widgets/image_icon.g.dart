import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class ImageIconClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageIcon':
        return (image, {key, size, color, semanticLabel}) => ImageIconObjectBinding(ImageIcon(image, key : key, size : size, color : color, semanticLabel : semanticLabel));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageIconObjectBinding extends HT_ExternObject<ImageIcon> {
  ImageIconObjectBinding(ImageIcon value) : super(value);

  @override
  final typeid = HT_TypeId('ImageIcon');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'image':
        return externObject.image;
      case 'size':
        return externObject.size;
      case 'color':
        return externObject.color;
      case 'semanticLabel':
        return externObject.semanticLabel;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

