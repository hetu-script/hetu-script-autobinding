import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/animation.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';


class TweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Tween':
        return ({begin, end}) => TweenObjectBinding(Tween<dynamic>(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TweenObjectBinding extends HT_ExternObject<Tween> {
  TweenObjectBinding(Tween value) : super(value);

  @override
  final typeid = HT_TypeId('Tween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'begin':
        return externObject.begin;
      case 'end':
        return externObject.end;
      case 'lerp':
        return externObject.lerp;
      case 'transform':
        return externObject.transform;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'begin':
        externObject.begin = value;
        break;
      case 'end':
        externObject.end = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReverseTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ReverseTween':
        return (parent) => ReverseTweenObjectBinding(ReverseTween(parent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReverseTweenObjectBinding extends HT_ExternObject<ReverseTween> {
  ReverseTweenObjectBinding(ReverseTween value) : super(value);

  @override
  final typeid = HT_TypeId('ReverseTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'parent':
        return externObject.parent;
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ColorTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ColorTween':
        return ({begin, end}) => ColorTweenObjectBinding(ColorTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorTweenObjectBinding extends HT_ExternObject<ColorTween> {
  ColorTweenObjectBinding(ColorTween value) : super(value);

  @override
  final typeid = HT_TypeId('ColorTween');

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

class SizeTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SizeTween':
        return ({begin, end}) => SizeTweenObjectBinding(SizeTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SizeTweenObjectBinding extends HT_ExternObject<SizeTween> {
  SizeTweenObjectBinding(SizeTween value) : super(value);

  @override
  final typeid = HT_TypeId('SizeTween');

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

class RectTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RectTween':
        return ({begin, end}) => RectTweenObjectBinding(RectTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RectTweenObjectBinding extends HT_ExternObject<RectTween> {
  RectTweenObjectBinding(RectTween value) : super(value);

  @override
  final typeid = HT_TypeId('RectTween');

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

class IntTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IntTween':
        return ({begin, end}) => IntTweenObjectBinding(IntTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IntTweenObjectBinding extends HT_ExternObject<IntTween> {
  IntTweenObjectBinding(IntTween value) : super(value);

  @override
  final typeid = HT_TypeId('IntTween');

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

class StepTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StepTween':
        return ({begin, end}) => StepTweenObjectBinding(StepTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StepTweenObjectBinding extends HT_ExternObject<StepTween> {
  StepTweenObjectBinding(StepTween value) : super(value);

  @override
  final typeid = HT_TypeId('StepTween');

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

class ConstantTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ConstantTween':
        return (value) => ConstantTweenObjectBinding(ConstantTween(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ConstantTweenObjectBinding extends HT_ExternObject<ConstantTween> {
  ConstantTweenObjectBinding(ConstantTween value) : super(value);

  @override
  final typeid = HT_TypeId('ConstantTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CurveTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CurveTween':
        return ({curve}) => CurveTweenObjectBinding(CurveTween(curve : curve));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CurveTweenObjectBinding extends HT_ExternObject<CurveTween> {
  CurveTweenObjectBinding(CurveTween value) : super(value);

  @override
  final typeid = HT_TypeId('CurveTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'curve':
        return externObject.curve;
      case 'transform':
        return externObject.transform;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'curve':
        externObject.curve = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

