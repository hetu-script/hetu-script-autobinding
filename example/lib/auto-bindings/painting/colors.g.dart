import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';


class HSVColorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HSVColor.fromAHSV':
        return (alpha, hue, saturation, value) => HSVColorObjectBinding(HSVColor.fromAHSV(alpha, hue, saturation, value));
      case 'lerp':
        return (a, b, t) => HSVColor.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HSVColorObjectBinding extends HT_ExternObject<HSVColor> {
  HSVColorObjectBinding(HSVColor value) : super(value);

  @override
  final typeid = HT_TypeId('HSVColor');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alpha':
        return externObject.alpha;
      case 'hue':
        return externObject.hue;
      case 'saturation':
        return externObject.saturation;
      case 'value':
        return externObject.value;
      case 'hashCode':
        return externObject.hashCode;
      case 'withAlpha':
        return externObject.withAlpha;
      case 'withHue':
        return externObject.withHue;
      case 'withSaturation':
        return externObject.withSaturation;
      case 'withValue':
        return externObject.withValue;
      case 'toColor':
        return externObject.toColor;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HSLColorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HSLColor.fromAHSL':
        return (alpha, hue, saturation, lightness) => HSLColorObjectBinding(HSLColor.fromAHSL(alpha, hue, saturation, lightness));
      case 'lerp':
        return (a, b, t) => HSLColor.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HSLColorObjectBinding extends HT_ExternObject<HSLColor> {
  HSLColorObjectBinding(HSLColor value) : super(value);

  @override
  final typeid = HT_TypeId('HSLColor');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alpha':
        return externObject.alpha;
      case 'hue':
        return externObject.hue;
      case 'saturation':
        return externObject.saturation;
      case 'lightness':
        return externObject.lightness;
      case 'hashCode':
        return externObject.hashCode;
      case 'withAlpha':
        return externObject.withAlpha;
      case 'withHue':
        return externObject.withHue;
      case 'withSaturation':
        return externObject.withSaturation;
      case 'withLightness':
        return externObject.withLightness;
      case 'toColor':
        return externObject.toColor;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ColorSwatchClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ColorSwatch':
        return (primary, _swatch) => ColorSwatchObjectBinding(ColorSwatch(primary, _swatch));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorSwatchObjectBinding extends HT_ExternObject<ColorSwatch> {
  ColorSwatchObjectBinding(ColorSwatch value) : super(value);

  @override
  final typeid = HT_TypeId('ColorSwatch');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ColorPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ColorProperty':
        return (name, value, {showName = true, defaultValue = kNoDefaultValue, style = DiagnosticsTreeStyle.singleLine, level = DiagnosticLevel.info}) => ColorPropertyObjectBinding(ColorProperty(name, value, showName : showName, defaultValue : defaultValue, style : style, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorPropertyObjectBinding extends HT_ExternObject<ColorProperty> {
  ColorPropertyObjectBinding(ColorProperty value) : super(value);

  @override
  final typeid = HT_TypeId('ColorProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'toJsonMap':
        return externObject.toJsonMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

