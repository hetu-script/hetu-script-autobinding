import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CircleAvatarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CircleAvatar':
        return ({key, child, backgroundColor, backgroundImage, foregroundImage, onBackgroundImageError, onForegroundImageError, foregroundColor, radius, minRadius, maxRadius}) => CircleAvatarObjectBinding(CircleAvatar(key : key, child : child, backgroundColor : backgroundColor, backgroundImage : backgroundImage, foregroundImage : foregroundImage, onBackgroundImageError : onBackgroundImageError, onForegroundImageError : onForegroundImageError, foregroundColor : foregroundColor, radius : radius, minRadius : minRadius, maxRadius : maxRadius));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CircleAvatarObjectBinding extends HT_ExternObject<CircleAvatar> {
  CircleAvatarObjectBinding(CircleAvatar value) : super(value);

  @override
  final typeid = HT_TypeId('CircleAvatar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'foregroundColor':
        return externObject.foregroundColor;
      case 'backgroundImage':
        return externObject.backgroundImage;
      case 'foregroundImage':
        return externObject.foregroundImage;
      case 'onBackgroundImageError':
        return externObject.onBackgroundImageError;
      case 'onForegroundImageError':
        return externObject.onForegroundImageError;
      case 'radius':
        return externObject.radius;
      case 'minRadius':
        return externObject.minRadius;
      case 'maxRadius':
        return externObject.maxRadius;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

