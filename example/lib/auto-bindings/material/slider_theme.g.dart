import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ShowValueIndicatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onlyForDiscrete':
        return ShowValueIndicator.onlyForDiscrete;
      case 'onlyForContinuous':
        return ShowValueIndicator.onlyForContinuous;
      case 'always':
        return ShowValueIndicator.always;
      case 'never':
        return ShowValueIndicator.never;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class ThumbClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return Thumb.start;
      case 'end':
        return Thumb.end;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliderThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliderTheme':
        return ({key, data, child}) => SliderThemeObjectBinding(SliderTheme(key : key, data : data, child : child));
      case 'of':
        return (context) => SliderTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliderThemeObjectBinding extends HT_ExternObject<SliderTheme> {
  SliderThemeObjectBinding(SliderTheme value) : super(value);

  @override
  final typeid = HT_TypeId('SliderTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'wrap':
        return externObject.wrap;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliderThemeDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliderThemeData':
        return ({trackHeight, activeTrackColor, inactiveTrackColor, disabledActiveTrackColor, disabledInactiveTrackColor, activeTickMarkColor, inactiveTickMarkColor, disabledActiveTickMarkColor, disabledInactiveTickMarkColor, thumbColor, overlappingShapeStrokeColor, disabledThumbColor, overlayColor, valueIndicatorColor, overlayShape, tickMarkShape, thumbShape, trackShape, valueIndicatorShape, rangeTickMarkShape, rangeThumbShape, rangeTrackShape, rangeValueIndicatorShape, showValueIndicator, valueIndicatorTextStyle, minThumbSeparation, thumbSelector}) => SliderThemeDataObjectBinding(SliderThemeData(trackHeight : trackHeight, activeTrackColor : activeTrackColor, inactiveTrackColor : inactiveTrackColor, disabledActiveTrackColor : disabledActiveTrackColor, disabledInactiveTrackColor : disabledInactiveTrackColor, activeTickMarkColor : activeTickMarkColor, inactiveTickMarkColor : inactiveTickMarkColor, disabledActiveTickMarkColor : disabledActiveTickMarkColor, disabledInactiveTickMarkColor : disabledInactiveTickMarkColor, thumbColor : thumbColor, overlappingShapeStrokeColor : overlappingShapeStrokeColor, disabledThumbColor : disabledThumbColor, overlayColor : overlayColor, valueIndicatorColor : valueIndicatorColor, overlayShape : overlayShape, tickMarkShape : tickMarkShape, thumbShape : thumbShape, trackShape : trackShape, valueIndicatorShape : valueIndicatorShape, rangeTickMarkShape : rangeTickMarkShape, rangeThumbShape : rangeThumbShape, rangeTrackShape : rangeTrackShape, rangeValueIndicatorShape : rangeValueIndicatorShape, showValueIndicator : showValueIndicator, valueIndicatorTextStyle : valueIndicatorTextStyle, minThumbSeparation : minThumbSeparation, thumbSelector : thumbSelector));
      case 'lerp':
        return (a, b, t) => SliderThemeData.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliderThemeDataObjectBinding extends HT_ExternObject<SliderThemeData> {
  SliderThemeDataObjectBinding(SliderThemeData value) : super(value);

  @override
  final typeid = HT_TypeId('SliderThemeData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'trackHeight':
        return externObject.trackHeight;
      case 'activeTrackColor':
        return externObject.activeTrackColor;
      case 'inactiveTrackColor':
        return externObject.inactiveTrackColor;
      case 'disabledActiveTrackColor':
        return externObject.disabledActiveTrackColor;
      case 'disabledInactiveTrackColor':
        return externObject.disabledInactiveTrackColor;
      case 'activeTickMarkColor':
        return externObject.activeTickMarkColor;
      case 'inactiveTickMarkColor':
        return externObject.inactiveTickMarkColor;
      case 'disabledActiveTickMarkColor':
        return externObject.disabledActiveTickMarkColor;
      case 'disabledInactiveTickMarkColor':
        return externObject.disabledInactiveTickMarkColor;
      case 'thumbColor':
        return externObject.thumbColor;
      case 'overlappingShapeStrokeColor':
        return externObject.overlappingShapeStrokeColor;
      case 'disabledThumbColor':
        return externObject.disabledThumbColor;
      case 'overlayColor':
        return externObject.overlayColor;
      case 'valueIndicatorColor':
        return externObject.valueIndicatorColor;
      case 'overlayShape':
        return externObject.overlayShape;
      case 'tickMarkShape':
        return externObject.tickMarkShape;
      case 'thumbShape':
        return externObject.thumbShape;
      case 'trackShape':
        return externObject.trackShape;
      case 'valueIndicatorShape':
        return externObject.valueIndicatorShape;
      case 'rangeTickMarkShape':
        return externObject.rangeTickMarkShape;
      case 'rangeThumbShape':
        return externObject.rangeThumbShape;
      case 'rangeTrackShape':
        return externObject.rangeTrackShape;
      case 'rangeValueIndicatorShape':
        return externObject.rangeValueIndicatorShape;
      case 'showValueIndicator':
        return externObject.showValueIndicator;
      case 'valueIndicatorTextStyle':
        return externObject.valueIndicatorTextStyle;
      case 'minThumbSeparation':
        return externObject.minThumbSeparation;
      case 'thumbSelector':
        return externObject.thumbSelector;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RectangularSliderTrackShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RectangularSliderTrackShape':
        return ({disabledThumbGapWidth = 2.0}) => RectangularSliderTrackShapeObjectBinding(RectangularSliderTrackShape(disabledThumbGapWidth : disabledThumbGapWidth));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RectangularSliderTrackShapeObjectBinding extends HT_ExternObject<RectangularSliderTrackShape> {
  RectangularSliderTrackShapeObjectBinding(RectangularSliderTrackShape value) : super(value);

  @override
  final typeid = HT_TypeId('RectangularSliderTrackShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'disabledThumbGapWidth':
        return externObject.disabledThumbGapWidth;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RoundedRectSliderTrackShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RoundedRectSliderTrackShape':
        return () => RoundedRectSliderTrackShapeObjectBinding(RoundedRectSliderTrackShape());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RoundedRectSliderTrackShapeObjectBinding extends HT_ExternObject<RoundedRectSliderTrackShape> {
  RoundedRectSliderTrackShapeObjectBinding(RoundedRectSliderTrackShape value) : super(value);

  @override
  final typeid = HT_TypeId('RoundedRectSliderTrackShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RectangularRangeSliderTrackShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RectangularRangeSliderTrackShape':
        return () => RectangularRangeSliderTrackShapeObjectBinding(RectangularRangeSliderTrackShape());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RectangularRangeSliderTrackShapeObjectBinding extends HT_ExternObject<RectangularRangeSliderTrackShape> {
  RectangularRangeSliderTrackShapeObjectBinding(RectangularRangeSliderTrackShape value) : super(value);

  @override
  final typeid = HT_TypeId('RectangularRangeSliderTrackShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getPreferredRect':
        return externObject.getPreferredRect;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RoundedRectRangeSliderTrackShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RoundedRectRangeSliderTrackShape':
        return () => RoundedRectRangeSliderTrackShapeObjectBinding(RoundedRectRangeSliderTrackShape());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RoundedRectRangeSliderTrackShapeObjectBinding extends HT_ExternObject<RoundedRectRangeSliderTrackShape> {
  RoundedRectRangeSliderTrackShapeObjectBinding(RoundedRectRangeSliderTrackShape value) : super(value);

  @override
  final typeid = HT_TypeId('RoundedRectRangeSliderTrackShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getPreferredRect':
        return externObject.getPreferredRect;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RoundSliderTickMarkShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RoundSliderTickMarkShape':
        return ({tickMarkRadius}) => RoundSliderTickMarkShapeObjectBinding(RoundSliderTickMarkShape(tickMarkRadius : tickMarkRadius));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RoundSliderTickMarkShapeObjectBinding extends HT_ExternObject<RoundSliderTickMarkShape> {
  RoundSliderTickMarkShapeObjectBinding(RoundSliderTickMarkShape value) : super(value);

  @override
  final typeid = HT_TypeId('RoundSliderTickMarkShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tickMarkRadius':
        return externObject.tickMarkRadius;
      case 'getPreferredSize':
        return externObject.getPreferredSize;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RoundRangeSliderTickMarkShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RoundRangeSliderTickMarkShape':
        return ({tickMarkRadius}) => RoundRangeSliderTickMarkShapeObjectBinding(RoundRangeSliderTickMarkShape(tickMarkRadius : tickMarkRadius));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RoundRangeSliderTickMarkShapeObjectBinding extends HT_ExternObject<RoundRangeSliderTickMarkShape> {
  RoundRangeSliderTickMarkShapeObjectBinding(RoundRangeSliderTickMarkShape value) : super(value);

  @override
  final typeid = HT_TypeId('RoundRangeSliderTickMarkShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tickMarkRadius':
        return externObject.tickMarkRadius;
      case 'getPreferredSize':
        return externObject.getPreferredSize;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RoundSliderThumbShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RoundSliderThumbShape':
        return ({enabledThumbRadius = 10.0, disabledThumbRadius, elevation = 1.0, pressedElevation = 6.0}) => RoundSliderThumbShapeObjectBinding(RoundSliderThumbShape(enabledThumbRadius : enabledThumbRadius, disabledThumbRadius : disabledThumbRadius, elevation : elevation, pressedElevation : pressedElevation));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RoundSliderThumbShapeObjectBinding extends HT_ExternObject<RoundSliderThumbShape> {
  RoundSliderThumbShapeObjectBinding(RoundSliderThumbShape value) : super(value);

  @override
  final typeid = HT_TypeId('RoundSliderThumbShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'enabledThumbRadius':
        return externObject.enabledThumbRadius;
      case 'disabledThumbRadius':
        return externObject.disabledThumbRadius;
      case 'elevation':
        return externObject.elevation;
      case 'pressedElevation':
        return externObject.pressedElevation;
      case 'getPreferredSize':
        return externObject.getPreferredSize;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RoundRangeSliderThumbShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RoundRangeSliderThumbShape':
        return ({enabledThumbRadius = 10.0, disabledThumbRadius, elevation = 1.0, pressedElevation = 6.0}) => RoundRangeSliderThumbShapeObjectBinding(RoundRangeSliderThumbShape(enabledThumbRadius : enabledThumbRadius, disabledThumbRadius : disabledThumbRadius, elevation : elevation, pressedElevation : pressedElevation));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RoundRangeSliderThumbShapeObjectBinding extends HT_ExternObject<RoundRangeSliderThumbShape> {
  RoundRangeSliderThumbShapeObjectBinding(RoundRangeSliderThumbShape value) : super(value);

  @override
  final typeid = HT_TypeId('RoundRangeSliderThumbShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'enabledThumbRadius':
        return externObject.enabledThumbRadius;
      case 'disabledThumbRadius':
        return externObject.disabledThumbRadius;
      case 'elevation':
        return externObject.elevation;
      case 'pressedElevation':
        return externObject.pressedElevation;
      case 'getPreferredSize':
        return externObject.getPreferredSize;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RoundSliderOverlayShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RoundSliderOverlayShape':
        return ({overlayRadius = 24.0}) => RoundSliderOverlayShapeObjectBinding(RoundSliderOverlayShape(overlayRadius : overlayRadius));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RoundSliderOverlayShapeObjectBinding extends HT_ExternObject<RoundSliderOverlayShape> {
  RoundSliderOverlayShapeObjectBinding(RoundSliderOverlayShape value) : super(value);

  @override
  final typeid = HT_TypeId('RoundSliderOverlayShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'overlayRadius':
        return externObject.overlayRadius;
      case 'getPreferredSize':
        return externObject.getPreferredSize;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RectangularSliderValueIndicatorShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RectangularSliderValueIndicatorShape':
        return () => RectangularSliderValueIndicatorShapeObjectBinding(RectangularSliderValueIndicatorShape());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RectangularSliderValueIndicatorShapeObjectBinding extends HT_ExternObject<RectangularSliderValueIndicatorShape> {
  RectangularSliderValueIndicatorShapeObjectBinding(RectangularSliderValueIndicatorShape value) : super(value);

  @override
  final typeid = HT_TypeId('RectangularSliderValueIndicatorShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getPreferredSize':
        return externObject.getPreferredSize;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RectangularRangeSliderValueIndicatorShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RectangularRangeSliderValueIndicatorShape':
        return () => RectangularRangeSliderValueIndicatorShapeObjectBinding(RectangularRangeSliderValueIndicatorShape());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RectangularRangeSliderValueIndicatorShapeObjectBinding extends HT_ExternObject<RectangularRangeSliderValueIndicatorShape> {
  RectangularRangeSliderValueIndicatorShapeObjectBinding(RectangularRangeSliderValueIndicatorShape value) : super(value);

  @override
  final typeid = HT_TypeId('RectangularRangeSliderValueIndicatorShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getPreferredSize':
        return externObject.getPreferredSize;
      case 'getHorizontalShift':
        return externObject.getHorizontalShift;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PaddleSliderValueIndicatorShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PaddleSliderValueIndicatorShape':
        return () => PaddleSliderValueIndicatorShapeObjectBinding(PaddleSliderValueIndicatorShape());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PaddleSliderValueIndicatorShapeObjectBinding extends HT_ExternObject<PaddleSliderValueIndicatorShape> {
  PaddleSliderValueIndicatorShapeObjectBinding(PaddleSliderValueIndicatorShape value) : super(value);

  @override
  final typeid = HT_TypeId('PaddleSliderValueIndicatorShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getPreferredSize':
        return externObject.getPreferredSize;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PaddleRangeSliderValueIndicatorShapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PaddleRangeSliderValueIndicatorShape':
        return () => PaddleRangeSliderValueIndicatorShapeObjectBinding(PaddleRangeSliderValueIndicatorShape());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PaddleRangeSliderValueIndicatorShapeObjectBinding extends HT_ExternObject<PaddleRangeSliderValueIndicatorShape> {
  PaddleRangeSliderValueIndicatorShapeObjectBinding(PaddleRangeSliderValueIndicatorShape value) : super(value);

  @override
  final typeid = HT_TypeId('PaddleRangeSliderValueIndicatorShape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getPreferredSize':
        return externObject.getPreferredSize;
      case 'getHorizontalShift':
        return externObject.getHorizontalShift;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RangeValuesClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RangeValues':
        return (start, end) => RangeValuesObjectBinding(RangeValues(start, end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RangeValuesObjectBinding extends HT_ExternObject<RangeValues> {
  RangeValuesObjectBinding(RangeValues value) : super(value);

  @override
  final typeid = HT_TypeId('RangeValues');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return externObject.start;
      case 'end':
        return externObject.end;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RangeLabelsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RangeLabels':
        return (start, end) => RangeLabelsObjectBinding(RangeLabels(start, end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RangeLabelsObjectBinding extends HT_ExternObject<RangeLabels> {
  RangeLabelsObjectBinding(RangeLabels value) : super(value);

  @override
  final typeid = HT_TypeId('RangeLabels');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return externObject.start;
      case 'end':
        return externObject.end;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

