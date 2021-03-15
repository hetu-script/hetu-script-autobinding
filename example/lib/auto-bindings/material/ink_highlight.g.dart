import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
const _kDefaultHighlightFadeDuration = Duration(milliseconds: 200);


class InkHighlightClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InkHighlight':
        return ({controller, referenceBox, color, textDirection, shape = BoxShape.rectangle, radius, borderRadius, customBorder, rectCallback, onRemoved, fadeDuration = _kDefaultHighlightFadeDuration}) => InkHighlightObjectBinding(InkHighlight(controller : controller, referenceBox : referenceBox, color : color, textDirection : textDirection, shape : shape, radius : radius, borderRadius : borderRadius, customBorder : customBorder, rectCallback : rectCallback, onRemoved : onRemoved, fadeDuration : fadeDuration));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InkHighlightObjectBinding extends HT_ExternObject<InkHighlight> {
  InkHighlightObjectBinding(InkHighlight value) : super(value);

  @override
  final typeid = HT_TypeId('InkHighlight');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'active':
        return externObject.active;
      case 'activate':
        return externObject.activate;
      case 'deactivate':
        return externObject.deactivate;
      case 'dispose':
        return externObject.dispose;
      case 'paintFeature':
        return externObject.paintFeature;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

