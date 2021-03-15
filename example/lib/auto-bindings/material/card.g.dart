import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CardClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Card':
        return ({key, color, shadowColor, elevation, shape, borderOnForeground = true, margin, clipBehavior, child, semanticContainer = true}) => CardObjectBinding(Card(key : key, color : color, shadowColor : shadowColor, elevation : elevation, shape : shape, borderOnForeground : borderOnForeground, margin : margin, clipBehavior : clipBehavior, child : child, semanticContainer : semanticContainer));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CardObjectBinding extends HT_ExternObject<Card> {
  CardObjectBinding(Card value) : super(value);

  @override
  final typeid = HT_TypeId('Card');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'elevation':
        return externObject.elevation;
      case 'shape':
        return externObject.shape;
      case 'borderOnForeground':
        return externObject.borderOnForeground;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'margin':
        return externObject.margin;
      case 'semanticContainer':
        return externObject.semanticContainer;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

