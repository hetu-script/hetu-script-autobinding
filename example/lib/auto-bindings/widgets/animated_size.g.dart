import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';


class AnimatedSizeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedSize':
        return ({key, child, alignment = Alignment.center, curve = Curves.linear, duration, reverseDuration, vsync, clipBehavior = Clip.hardEdge}) => AnimatedSizeObjectBinding(AnimatedSize(key : key, child : child, alignment : alignment, curve : curve, duration : duration, reverseDuration : reverseDuration, vsync : vsync, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedSizeObjectBinding extends HT_ExternObject<AnimatedSize> {
  AnimatedSizeObjectBinding(AnimatedSize value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedSize');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alignment':
        return externObject.alignment;
      case 'curve':
        return externObject.curve;
      case 'duration':
        return externObject.duration;
      case 'reverseDuration':
        return externObject.reverseDuration;
      case 'vsync':
        return externObject.vsync;
      case 'clipBehavior':
        return externObject.clipBehavior;
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

