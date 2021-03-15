import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MaterialTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'canvas':
        return MaterialType.canvas;
      case 'card':
        return MaterialType.card;
      case 'circle':
        return MaterialType.circle;
      case 'button':
        return MaterialType.button;
      case 'transparency':
        return MaterialType.transparency;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Material':
        return ({key, type = MaterialType.canvas, elevation = 0.0, color, shadowColor, textStyle, borderRadius, shape, borderOnForeground = true, clipBehavior = Clip.none, animationDuration = kThemeChangeDuration, child}) => MaterialObjectBinding(Material(key : key, type : type, elevation : elevation, color : color, shadowColor : shadowColor, textStyle : textStyle, borderRadius : borderRadius, shape : shape, borderOnForeground : borderOnForeground, clipBehavior : clipBehavior, animationDuration : animationDuration, child : child));
      case 'of':
        return (context) => Material.of(context);
      case 'Material.defaultSplashRadius':
        return Material.defaultSplashRadius;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialObjectBinding extends HT_ExternObject<Material> {
  MaterialObjectBinding(Material value) : super(value);

  @override
  final typeid = HT_TypeId('Material');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'type':
        return externObject.type;
      case 'elevation':
        return externObject.elevation;
      case 'color':
        return externObject.color;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'textStyle':
        return externObject.textStyle;
      case 'shape':
        return externObject.shape;
      case 'borderOnForeground':
        return externObject.borderOnForeground;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'animationDuration':
        return externObject.animationDuration;
      case 'borderRadius':
        return externObject.borderRadius;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ShapeBorderTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ShapeBorderTween':
        return ({begin, end}) => ShapeBorderTweenObjectBinding(ShapeBorderTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShapeBorderTweenObjectBinding extends HT_ExternObject<ShapeBorderTween> {
  ShapeBorderTweenObjectBinding(ShapeBorderTween value) : super(value);

  @override
  final typeid = HT_TypeId('ShapeBorderTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

