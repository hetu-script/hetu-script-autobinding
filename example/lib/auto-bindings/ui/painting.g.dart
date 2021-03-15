import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';
import 'dart:math' as math;

class BlendModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clear':
        return BlendMode.clear;
      case 'src':
        return BlendMode.src;
      case 'dst':
        return BlendMode.dst;
      case 'srcOver':
        return BlendMode.srcOver;
      case 'dstOver':
        return BlendMode.dstOver;
      case 'srcIn':
        return BlendMode.srcIn;
      case 'dstIn':
        return BlendMode.dstIn;
      case 'srcOut':
        return BlendMode.srcOut;
      case 'dstOut':
        return BlendMode.dstOut;
      case 'srcATop':
        return BlendMode.srcATop;
      case 'dstATop':
        return BlendMode.dstATop;
      case 'xor':
        return BlendMode.xor;
      case 'plus':
        return BlendMode.plus;
      case 'modulate':
        return BlendMode.modulate;
      case 'screen':
        return BlendMode.screen;
      case 'overlay':
        return BlendMode.overlay;
      case 'darken':
        return BlendMode.darken;
      case 'lighten':
        return BlendMode.lighten;
      case 'colorDodge':
        return BlendMode.colorDodge;
      case 'colorBurn':
        return BlendMode.colorBurn;
      case 'hardLight':
        return BlendMode.hardLight;
      case 'softLight':
        return BlendMode.softLight;
      case 'difference':
        return BlendMode.difference;
      case 'exclusion':
        return BlendMode.exclusion;
      case 'multiply':
        return BlendMode.multiply;
      case 'hue':
        return BlendMode.hue;
      case 'saturation':
        return BlendMode.saturation;
      case 'color':
        return BlendMode.color;
      case 'luminosity':
        return BlendMode.luminosity;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class FilterQualityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'none':
        return FilterQuality.none;
      case 'low':
        return FilterQuality.low;
      case 'medium':
        return FilterQuality.medium;
      case 'high':
        return FilterQuality.high;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class StrokeCapClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'butt':
        return StrokeCap.butt;
      case 'round':
        return StrokeCap.round;
      case 'square':
        return StrokeCap.square;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class StrokeJoinClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'miter':
        return StrokeJoin.miter;
      case 'round':
        return StrokeJoin.round;
      case 'bevel':
        return StrokeJoin.bevel;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class PaintingStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'fill':
        return PaintingStyle.fill;
      case 'stroke':
        return PaintingStyle.stroke;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class ClipClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'none':
        return Clip.none;
      case 'hardEdge':
        return Clip.hardEdge;
      case 'antiAlias':
        return Clip.antiAlias;
      case 'antiAliasWithSaveLayer':
        return Clip.antiAliasWithSaveLayer;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class ImageByteFormatClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'rawRgba':
        return ImageByteFormat.rawRgba;
      case 'rawUnmodified':
        return ImageByteFormat.rawUnmodified;
      case 'png':
        return ImageByteFormat.png;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class PixelFormatClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'rgba8888':
        return PixelFormat.rgba8888;
      case 'bgra8888':
        return PixelFormat.bgra8888;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class PathFillTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'nonZero':
        return PathFillType.nonZero;
      case 'evenOdd':
        return PathFillType.evenOdd;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class PathOperationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'difference':
        return PathOperation.difference;
      case 'intersect':
        return PathOperation.intersect;
      case 'union':
        return PathOperation.union;
      case 'xor':
        return PathOperation.xor;
      case 'reverseDifference':
        return PathOperation.reverseDifference;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class BlurStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'normal':
        return BlurStyle.normal;
      case 'solid':
        return BlurStyle.solid;
      case 'outer':
        return BlurStyle.outer;
      case 'inner':
        return BlurStyle.inner;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class TileModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clamp':
        return TileMode.clamp;
      case 'repeated':
        return TileMode.repeated;
      case 'mirror':
        return TileMode.mirror;
      case 'decal':
        return TileMode.decal;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class VertexModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'triangles':
        return VertexMode.triangles;
      case 'triangleStrip':
        return VertexMode.triangleStrip;
      case 'triangleFan':
        return VertexMode.triangleFan;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class PointModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'points':
        return PointMode.points;
      case 'lines':
        return PointMode.lines;
      case 'polygon':
        return PointMode.polygon;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class ClipOpClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'difference':
        return ClipOp.difference;
      case 'intersect':
        return ClipOp.intersect;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Color':
        return (value) => ColorObjectBinding(Color(value));
      case 'Color.fromARGB':
        return (a, r, g, b) => ColorObjectBinding(Color.fromARGB(a, r, g, b));
      case 'Color.fromRGBO':
        return (r, g, b, opacity) => ColorObjectBinding(Color.fromRGBO(r, g, b, opacity));
      case 'lerp':
        return (a, b, t) => Color.lerp(a, b, t);
      case 'alphaBlend':
        return (foreground, background) => Color.alphaBlend(foreground, background);
      case 'getAlphaFromOpacity':
        return (opacity) => Color.getAlphaFromOpacity(opacity);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorObjectBinding extends HT_ExternObject<Color> {
  ColorObjectBinding(Color value) : super(value);

  @override
  final typeid = HT_TypeId('Color');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'alpha':
        return externObject.alpha;
      case 'opacity':
        return externObject.opacity;
      case 'red':
        return externObject.red;
      case 'green':
        return externObject.green;
      case 'blue':
        return externObject.blue;
      case 'hashCode':
        return externObject.hashCode;
      case 'withAlpha':
        return externObject.withAlpha;
      case 'withOpacity':
        return externObject.withOpacity;
      case 'withRed':
        return externObject.withRed;
      case 'withGreen':
        return externObject.withGreen;
      case 'withBlue':
        return externObject.withBlue;
      case 'computeLuminance':
        return externObject.computeLuminance;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PaintClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Paint':
        return () => PaintObjectBinding(Paint());
      case 'Paint.enableDithering':
        return Paint.enableDithering;
      default:
        throw HTErr_Undefined(id);
    }
  }
  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'Paint.enableDithering':
        return Paint.enableDithering = value;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PaintObjectBinding extends HT_ExternObject<Paint> {
  PaintObjectBinding(Paint value) : super(value);

  @override
  final typeid = HT_TypeId('Paint');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isAntiAlias':
        return externObject.isAntiAlias;
      case 'color':
        return externObject.color;
      case 'blendMode':
        return externObject.blendMode;
      case 'style':
        return externObject.style;
      case 'strokeWidth':
        return externObject.strokeWidth;
      case 'strokeCap':
        return externObject.strokeCap;
      case 'strokeJoin':
        return externObject.strokeJoin;
      case 'strokeMiterLimit':
        return externObject.strokeMiterLimit;
      case 'maskFilter':
        return externObject.maskFilter;
      case 'filterQuality':
        return externObject.filterQuality;
      case 'shader':
        return externObject.shader;
      case 'colorFilter':
        return externObject.colorFilter;
      case 'imageFilter':
        return externObject.imageFilter;
      case 'invertColors':
        return externObject.invertColors;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'isAntiAlias':
        externObject.isAntiAlias = value;
        break;
      case 'color':
        externObject.color = value;
        break;
      case 'blendMode':
        externObject.blendMode = value;
        break;
      case 'style':
        externObject.style = value;
        break;
      case 'strokeWidth':
        externObject.strokeWidth = value;
        break;
      case 'strokeCap':
        externObject.strokeCap = value;
        break;
      case 'strokeJoin':
        externObject.strokeJoin = value;
        break;
      case 'strokeMiterLimit':
        externObject.strokeMiterLimit = value;
        break;
      case 'maskFilter':
        externObject.maskFilter = value;
        break;
      case 'filterQuality':
        externObject.filterQuality = value;
        break;
      case 'shader':
        externObject.shader = value;
        break;
      case 'colorFilter':
        externObject.colorFilter = value;
        break;
      case 'imageFilter':
        externObject.imageFilter = value;
        break;
      case 'invertColors':
        externObject.invertColors = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PathClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Path':
        return () => PathObjectBinding(Path());
      case 'combine':
        return (operation, path1, path2) => Path.combine(operation, path1, path2);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PathObjectBinding extends HT_ExternObject<Path> {
  PathObjectBinding(Path value) : super(value);

  @override
  final typeid = HT_TypeId('Path');


}

class TangentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Tangent':
        return (position, vector) => TangentObjectBinding(Tangent(position, vector));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TangentObjectBinding extends HT_ExternObject<Tangent> {
  TangentObjectBinding(Tangent value) : super(value);

  @override
  final typeid = HT_TypeId('Tangent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'position':
        return externObject.position;
      case 'vector':
        return externObject.vector;
      case 'angle':
        return externObject.angle;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MaskFilterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaskFilter.blur':
        return (_style, _sigma) => MaskFilterObjectBinding(MaskFilter.blur(_style, _sigma));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaskFilterObjectBinding extends HT_ExternObject<MaskFilter> {
  MaskFilterObjectBinding(MaskFilter value) : super(value);

  @override
  final typeid = HT_TypeId('MaskFilter');

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

class ColorFilterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ColorFilter.mode':
        return (color, blendMode) => ColorFilterObjectBinding(ColorFilter.mode(color, blendMode));
      case 'ColorFilter.matrix':
        return (matrix) => ColorFilterObjectBinding(ColorFilter.matrix(matrix));
      case 'ColorFilter.linearToSrgbGamma':
        return () => ColorFilterObjectBinding(ColorFilter.linearToSrgbGamma());
      case 'ColorFilter.srgbToLinearGamma':
        return () => ColorFilterObjectBinding(ColorFilter.srgbToLinearGamma());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorFilterObjectBinding extends HT_ExternObject<ColorFilter> {
  ColorFilterObjectBinding(ColorFilter value) : super(value);

  @override
  final typeid = HT_TypeId('ColorFilter');

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

class GradientClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Gradient.linear':
        return (from, to, colors, [colorStops, tileMode = TileMode.clamp, matrix4]) => GradientObjectBinding(Gradient.linear(from, to, colors, colorStops, tileMode, matrix4));
      case 'Gradient.radial':
        return (center, radius, colors, [colorStops, tileMode = TileMode.clamp, matrix4, focal, focalRadius = 0.0]) => GradientObjectBinding(Gradient.radial(center, radius, colors, colorStops, tileMode, matrix4, focal, focalRadius));
      case 'Gradient.sweep':
        return (center, colors, [colorStops, tileMode = TileMode.clamp, startAngle = 0.0, endAngle = math.pi * 2, matrix4]) => GradientObjectBinding(Gradient.sweep(center, colors, colorStops, tileMode, startAngle, endAngle, matrix4));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GradientObjectBinding extends HT_ExternObject<Gradient> {
  GradientObjectBinding(Gradient value) : super(value);

  @override
  final typeid = HT_TypeId('Gradient');


}

class ImageShaderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageShader':
        return (image, tmx, tmy, matrix4) => ImageShaderObjectBinding(ImageShader(image, tmx, tmy, matrix4));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageShaderObjectBinding extends HT_ExternObject<ImageShader> {
  ImageShaderObjectBinding(ImageShader value) : super(value);

  @override
  final typeid = HT_TypeId('ImageShader');


}

class VerticesClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Vertices':
        return (mode, positions, {textureCoordinates, colors, indices}) => VerticesObjectBinding(Vertices(mode, positions, textureCoordinates : textureCoordinates, colors : colors, indices : indices));
      case 'Vertices.raw':
        return (mode, positions, {textureCoordinates, colors, indices}) => VerticesObjectBinding(Vertices.raw(mode, positions, textureCoordinates : textureCoordinates, colors : colors, indices : indices));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class VerticesObjectBinding extends HT_ExternObject<Vertices> {
  VerticesObjectBinding(Vertices value) : super(value);

  @override
  final typeid = HT_TypeId('Vertices');


}

class CanvasClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Canvas':
        return (recorder, [cullRect]) => CanvasObjectBinding(Canvas(recorder, cullRect));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CanvasObjectBinding extends HT_ExternObject<Canvas> {
  CanvasObjectBinding(Canvas value) : super(value);

  @override
  final typeid = HT_TypeId('Canvas');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'save':
        return externObject.save;
      case 'saveLayer':
        return externObject.saveLayer;
      case 'restore':
        return externObject.restore;
      case 'getSaveCount':
        return externObject.getSaveCount;
      case 'translate':
        return externObject.translate;
      case 'scale':
        return externObject.scale;
      case 'rotate':
        return externObject.rotate;
      case 'skew':
        return externObject.skew;
      case 'transform':
        return externObject.transform;
      case 'clipRect':
        return externObject.clipRect;
      case 'clipRRect':
        return externObject.clipRRect;
      case 'clipPath':
        return externObject.clipPath;
      case 'drawColor':
        return externObject.drawColor;
      case 'drawLine':
        return externObject.drawLine;
      case 'drawPaint':
        return externObject.drawPaint;
      case 'drawRect':
        return externObject.drawRect;
      case 'drawRRect':
        return externObject.drawRRect;
      case 'drawDRRect':
        return externObject.drawDRRect;
      case 'drawOval':
        return externObject.drawOval;
      case 'drawCircle':
        return externObject.drawCircle;
      case 'drawArc':
        return externObject.drawArc;
      case 'drawPath':
        return externObject.drawPath;
      case 'drawImage':
        return externObject.drawImage;
      case 'drawImageRect':
        return externObject.drawImageRect;
      case 'drawImageNine':
        return externObject.drawImageNine;
      case 'drawPicture':
        return externObject.drawPicture;
      case 'drawParagraph':
        return externObject.drawParagraph;
      case 'drawPoints':
        return externObject.drawPoints;
      case 'drawRawPoints':
        return externObject.drawRawPoints;
      case 'drawVertices':
        return externObject.drawVertices;
      case 'drawAtlas':
        return externObject.drawAtlas;
      case 'drawRawAtlas':
        return externObject.drawRawAtlas;
      case 'drawShadow':
        return externObject.drawShadow;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PictureRecorderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PictureRecorder':
        return () => PictureRecorderObjectBinding(PictureRecorder());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PictureRecorderObjectBinding extends HT_ExternObject<PictureRecorder> {
  PictureRecorderObjectBinding(PictureRecorder value) : super(value);

  @override
  final typeid = HT_TypeId('PictureRecorder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isRecording':
        return externObject.isRecording;
      case 'endRecording':
        return externObject.endRecording;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ShadowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Shadow':
        return ({color = const Color(_kColorDefault), offset = Offset.zero, blurRadius = 0.0}) => ShadowObjectBinding(Shadow(color : color, offset : offset, blurRadius : blurRadius));
      case 'convertRadiusToSigma':
        return (radius) => Shadow.convertRadiusToSigma(radius);
      case 'lerp':
        return (a, b, t) => Shadow.lerp(a, b, t);
      case 'lerpList':
        return (a, b, t) => Shadow.lerpList(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
  static const _kColorDefault = 0xFF000000;
}

class ShadowObjectBinding extends HT_ExternObject<Shadow> {
  ShadowObjectBinding(Shadow value) : super(value);

  @override
  final typeid = HT_TypeId('Shadow');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'offset':
        return externObject.offset;
      case 'blurRadius':
        return externObject.blurRadius;
      case 'blurSigma':
        return externObject.blurSigma;
      case 'hashCode':
        return externObject.hashCode;
      case 'toPaint':
        return externObject.toPaint;
      case 'scale':
        return externObject.scale;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ImmutableBufferClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'fromUint8List':
        return (list) => ImmutableBuffer.fromUint8List(list);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class ImageDescriptorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'encoded':
        return (buffer) => ImageDescriptor.encoded(buffer);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


