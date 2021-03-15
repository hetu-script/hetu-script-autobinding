import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';


class OverScrollHeaderStretchConfigurationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OverScrollHeaderStretchConfiguration':
        return ({stretchTriggerOffset = 100.0, onStretchTrigger}) => OverScrollHeaderStretchConfigurationObjectBinding(OverScrollHeaderStretchConfiguration(stretchTriggerOffset : stretchTriggerOffset, onStretchTrigger : onStretchTrigger));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverScrollHeaderStretchConfigurationObjectBinding extends HT_ExternObject<OverScrollHeaderStretchConfiguration> {
  OverScrollHeaderStretchConfigurationObjectBinding(OverScrollHeaderStretchConfiguration value) : super(value);

  @override
  final typeid = HT_TypeId('OverScrollHeaderStretchConfiguration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'stretchTriggerOffset':
        return externObject.stretchTriggerOffset;
      case 'onStretchTrigger':
        return externObject.onStretchTrigger;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PersistentHeaderShowOnScreenConfigurationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PersistentHeaderShowOnScreenConfiguration':
        return ({minShowOnScreenExtent = double.negativeInfinity, maxShowOnScreenExtent = double.infinity}) => PersistentHeaderShowOnScreenConfigurationObjectBinding(PersistentHeaderShowOnScreenConfiguration(minShowOnScreenExtent : minShowOnScreenExtent, maxShowOnScreenExtent : maxShowOnScreenExtent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PersistentHeaderShowOnScreenConfigurationObjectBinding extends HT_ExternObject<PersistentHeaderShowOnScreenConfiguration> {
  PersistentHeaderShowOnScreenConfigurationObjectBinding(PersistentHeaderShowOnScreenConfiguration value) : super(value);

  @override
  final typeid = HT_TypeId('PersistentHeaderShowOnScreenConfiguration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'minShowOnScreenExtent':
        return externObject.minShowOnScreenExtent;
      case 'maxShowOnScreenExtent':
        return externObject.maxShowOnScreenExtent;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FloatingHeaderSnapConfigurationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FloatingHeaderSnapConfiguration':
        return ({vsync, curve = Curves.ease, duration = const Duration(milliseconds: 300)}) => FloatingHeaderSnapConfigurationObjectBinding(FloatingHeaderSnapConfiguration(vsync : vsync, curve : curve, duration : duration));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FloatingHeaderSnapConfigurationObjectBinding extends HT_ExternObject<FloatingHeaderSnapConfiguration> {
  FloatingHeaderSnapConfigurationObjectBinding(FloatingHeaderSnapConfiguration value) : super(value);

  @override
  final typeid = HT_TypeId('FloatingHeaderSnapConfiguration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'vsync':
        return externObject.vsync;
      case 'curve':
        return externObject.curve;
      case 'duration':
        return externObject.duration;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

