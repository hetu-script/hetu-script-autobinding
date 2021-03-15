import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class DecoratedBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DecoratedBox':
        return ({key, decoration, position = DecorationPosition.background, child}) => DecoratedBoxObjectBinding(DecoratedBox(key : key, decoration : decoration, position : position, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DecoratedBoxObjectBinding extends HT_ExternObject<DecoratedBox> {
  DecoratedBoxObjectBinding(DecoratedBox value) : super(value);

  @override
  final typeid = HT_TypeId('DecoratedBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decoration':
        return externObject.decoration;
      case 'position':
        return externObject.position;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ContainerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Container':
        return ({key, alignment, padding, color, decoration, foregroundDecoration, width, height, constraints, margin, transform, transformAlignment, child, clipBehavior = Clip.none}) => ContainerObjectBinding(Container(key : key, alignment : alignment, padding : padding, color : color, decoration : decoration, foregroundDecoration : foregroundDecoration, width : width, height : height, constraints : constraints, margin : margin, transform : transform, transformAlignment : transformAlignment, child : child, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ContainerObjectBinding extends HT_ExternObject<Container> {
  ContainerObjectBinding(Container value) : super(value);

  @override
  final typeid = HT_TypeId('Container');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'alignment':
        return externObject.alignment;
      case 'padding':
        return externObject.padding;
      case 'color':
        return externObject.color;
      case 'decoration':
        return externObject.decoration;
      case 'foregroundDecoration':
        return externObject.foregroundDecoration;
      case 'constraints':
        return externObject.constraints;
      case 'margin':
        return externObject.margin;
      case 'transform':
        return externObject.transform;
      case 'transformAlignment':
        return externObject.transformAlignment;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

