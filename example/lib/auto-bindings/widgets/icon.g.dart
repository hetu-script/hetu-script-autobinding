import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class IconClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Icon':
        return (icon, {key, size, color, semanticLabel, textDirection}) => IconObjectBinding(Icon(icon, key : key, size : size, color : color, semanticLabel : semanticLabel, textDirection : textDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IconObjectBinding extends HT_ExternObject<Icon> {
  IconObjectBinding(Icon value) : super(value);

  @override
  final typeid = HT_TypeId('Icon');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'icon':
        return externObject.icon;
      case 'size':
        return externObject.size;
      case 'color':
        return externObject.color;
      case 'semanticLabel':
        return externObject.semanticLabel;
      case 'textDirection':
        return externObject.textDirection;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

