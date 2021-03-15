import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';


class PlaceholderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Placeholder':
        return ({key, color = const Color(0xFF455A64), strokeWidth = 2.0, fallbackWidth = 400.0, fallbackHeight = 400.0}) => PlaceholderObjectBinding(Placeholder(key : key, color : color, strokeWidth : strokeWidth, fallbackWidth : fallbackWidth, fallbackHeight : fallbackHeight));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlaceholderObjectBinding extends HT_ExternObject<Placeholder> {
  PlaceholderObjectBinding(Placeholder value) : super(value);

  @override
  final typeid = HT_TypeId('Placeholder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'strokeWidth':
        return externObject.strokeWidth;
      case 'fallbackWidth':
        return externObject.fallbackWidth;
      case 'fallbackHeight':
        return externObject.fallbackHeight;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

