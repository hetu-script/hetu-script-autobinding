import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class FlutterLogoClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlutterLogo':
        return ({key, size, textColor = const Color(0xFF757575), style = FlutterLogoStyle.markOnly, duration = const Duration(milliseconds: 750), curve = Curves.fastOutSlowIn}) => FlutterLogoObjectBinding(FlutterLogo(key : key, size : size, textColor : textColor, style : style, duration : duration, curve : curve));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlutterLogoObjectBinding extends HT_ExternObject<FlutterLogo> {
  FlutterLogoObjectBinding(FlutterLogo value) : super(value);

  @override
  final typeid = HT_TypeId('FlutterLogo');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'size':
        return externObject.size;
      case 'textColor':
        return externObject.textColor;
      case 'style':
        return externObject.style;
      case 'duration':
        return externObject.duration;
      case 'curve':
        return externObject.curve;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

