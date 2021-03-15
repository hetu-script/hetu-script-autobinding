import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';


class AnimatedIconClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedIcon':
        return ({key, icon, progress, color, size, semanticLabel, textDirection}) => AnimatedIconObjectBinding(AnimatedIcon(key : key, icon : icon, progress : progress, color : color, size : size, semanticLabel : semanticLabel, textDirection : textDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedIconObjectBinding extends HT_ExternObject<AnimatedIcon> {
  AnimatedIconObjectBinding(AnimatedIcon value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedIcon');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'progress':
        return externObject.progress;
      case 'color':
        return externObject.color;
      case 'size':
        return externObject.size;
      case 'icon':
        return externObject.icon;
      case 'semanticLabel':
        return externObject.semanticLabel;
      case 'textDirection':
        return externObject.textDirection;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

