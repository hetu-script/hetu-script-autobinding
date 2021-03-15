import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class InkClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Ink':
        return ({key, padding, color, decoration, width, height, child}) => InkObjectBinding(Ink(key : key, padding : padding, color : color, decoration : decoration, width : width, height : height, child : child));
      case 'Ink.image':
        return ({key, padding, image, onImageError, colorFilter, fit, alignment = Alignment.center, centerSlice, repeat = ImageRepeat.noRepeat, matchTextDirection = false, width, height, child}) => InkObjectBinding(Ink.image(key : key, padding : padding, image : image, onImageError : onImageError, colorFilter : colorFilter, fit : fit, alignment : alignment, centerSlice : centerSlice, repeat : repeat, matchTextDirection : matchTextDirection, width : width, height : height, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InkObjectBinding extends HT_ExternObject<Ink> {
  InkObjectBinding(Ink value) : super(value);

  @override
  final typeid = HT_TypeId('Ink');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'padding':
        return externObject.padding;
      case 'decoration':
        return externObject.decoration;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class InkDecorationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InkDecoration':
        return ({decoration, configuration, controller, referenceBox, onRemoved}) => InkDecorationObjectBinding(InkDecoration(decoration : decoration, configuration : configuration, controller : controller, referenceBox : referenceBox, onRemoved : onRemoved));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InkDecorationObjectBinding extends HT_ExternObject<InkDecoration> {
  InkDecorationObjectBinding(InkDecoration value) : super(value);

  @override
  final typeid = HT_TypeId('InkDecoration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decoration':
        return externObject.decoration;
      case 'configuration':
        return externObject.configuration;
      case 'dispose':
        return externObject.dispose;
      case 'paintFeature':
        return externObject.paintFeature;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'decoration':
        externObject.decoration = value;
        break;
      case 'configuration':
        externObject.configuration = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

