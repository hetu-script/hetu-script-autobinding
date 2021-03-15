import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class UnderlineTabIndicatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'UnderlineTabIndicator':
        return ({borderSide = const BorderSide(width: 2.0, color: Colors.white), insets = EdgeInsets.zero}) => UnderlineTabIndicatorObjectBinding(UnderlineTabIndicator(borderSide : borderSide, insets : insets));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class UnderlineTabIndicatorObjectBinding extends HT_ExternObject<UnderlineTabIndicator> {
  UnderlineTabIndicatorObjectBinding(UnderlineTabIndicator value) : super(value);

  @override
  final typeid = HT_TypeId('UnderlineTabIndicator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'borderSide':
        return externObject.borderSide;
      case 'insets':
        return externObject.insets;
      case 'lerpFrom':
        return externObject.lerpFrom;
      case 'lerpTo':
        return externObject.lerpTo;
      case 'createBoxPainter':
        return externObject.createBoxPainter;
      case 'getClipPath':
        return externObject.getClipPath;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

