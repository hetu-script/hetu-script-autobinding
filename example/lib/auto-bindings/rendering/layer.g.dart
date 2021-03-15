import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';


class AnnotationEntryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnnotationEntry':
        return ({annotation, localPosition}) => AnnotationEntryObjectBinding(AnnotationEntry(annotation : annotation, localPosition : localPosition));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnnotationEntryObjectBinding extends HT_ExternObject<AnnotationEntry> {
  AnnotationEntryObjectBinding(AnnotationEntry value) : super(value);

  @override
  final typeid = HT_TypeId('AnnotationEntry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'annotation':
        return externObject.annotation;
      case 'localPosition':
        return externObject.localPosition;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnnotationResultClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnnotationResult':
        return () => AnnotationResultObjectBinding(AnnotationResult());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnnotationResultObjectBinding extends HT_ExternObject<AnnotationResult> {
  AnnotationResultObjectBinding(AnnotationResult value) : super(value);

  @override
  final typeid = HT_TypeId('AnnotationResult');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'entries':
        return externObject.entries;
      case 'annotations':
        return externObject.annotations;
      case 'add':
        return externObject.add;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PictureLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PictureLayer':
        return (canvasBounds) => PictureLayerObjectBinding(PictureLayer(canvasBounds));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PictureLayerObjectBinding extends HT_ExternObject<PictureLayer> {
  PictureLayerObjectBinding(PictureLayer value) : super(value);

  @override
  final typeid = HT_TypeId('PictureLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'canvasBounds':
        return externObject.canvasBounds;
      case 'picture':
        return externObject.picture;
      case 'isComplexHint':
        return externObject.isComplexHint;
      case 'willChangeHint':
        return externObject.willChangeHint;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'findAnnotations':
        return externObject.findAnnotations;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'picture':
        externObject.picture = value;
        break;
      case 'isComplexHint':
        externObject.isComplexHint = value;
        break;
      case 'willChangeHint':
        externObject.willChangeHint = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextureLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextureLayer':
        return ({rect, textureId, freeze = false, filterQuality = ui.FilterQuality.low}) => TextureLayerObjectBinding(TextureLayer(rect : rect, textureId : textureId, freeze : freeze, filterQuality : filterQuality));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextureLayerObjectBinding extends HT_ExternObject<TextureLayer> {
  TextureLayerObjectBinding(TextureLayer value) : super(value);

  @override
  final typeid = HT_TypeId('TextureLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'rect':
        return externObject.rect;
      case 'textureId':
        return externObject.textureId;
      case 'freeze':
        return externObject.freeze;
      case 'filterQuality':
        return externObject.filterQuality;
      case 'addToScene':
        return externObject.addToScene;
      case 'findAnnotations':
        return externObject.findAnnotations;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PlatformViewLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PlatformViewLayer':
        return ({rect, viewId}) => PlatformViewLayerObjectBinding(PlatformViewLayer(rect : rect, viewId : viewId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformViewLayerObjectBinding extends HT_ExternObject<PlatformViewLayer> {
  PlatformViewLayerObjectBinding(PlatformViewLayer value) : super(value);

  @override
  final typeid = HT_TypeId('PlatformViewLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'rect':
        return externObject.rect;
      case 'viewId':
        return externObject.viewId;
      case 'addToScene':
        return externObject.addToScene;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PerformanceOverlayLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PerformanceOverlayLayer':
        return ({overlayRect, optionsMask, rasterizerThreshold, checkerboardRasterCacheImages, checkerboardOffscreenLayers}) => PerformanceOverlayLayerObjectBinding(PerformanceOverlayLayer(overlayRect : overlayRect, optionsMask : optionsMask, rasterizerThreshold : rasterizerThreshold, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PerformanceOverlayLayerObjectBinding extends HT_ExternObject<PerformanceOverlayLayer> {
  PerformanceOverlayLayerObjectBinding(PerformanceOverlayLayer value) : super(value);

  @override
  final typeid = HT_TypeId('PerformanceOverlayLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'optionsMask':
        return externObject.optionsMask;
      case 'rasterizerThreshold':
        return externObject.rasterizerThreshold;
      case 'checkerboardRasterCacheImages':
        return externObject.checkerboardRasterCacheImages;
      case 'checkerboardOffscreenLayers':
        return externObject.checkerboardOffscreenLayers;
      case 'overlayRect':
        return externObject.overlayRect;
      case 'addToScene':
        return externObject.addToScene;
      case 'findAnnotations':
        return externObject.findAnnotations;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'overlayRect':
        externObject.overlayRect = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ContainerLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ContainerLayer':
        return () => ContainerLayerObjectBinding(ContainerLayer());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ContainerLayerObjectBinding extends HT_ExternObject<ContainerLayer> {
  ContainerLayerObjectBinding(ContainerLayer value) : super(value);

  @override
  final typeid = HT_TypeId('ContainerLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'firstChild':
        return externObject.firstChild;
      case 'lastChild':
        return externObject.lastChild;
      case 'hasChildren':
        return externObject.hasChildren;
      case 'buildScene':
        return externObject.buildScene;
      case 'updateSubtreeNeedsAddToScene':
        return externObject.updateSubtreeNeedsAddToScene;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'append':
        return externObject.append;
      case 'removeAllChildren':
        return externObject.removeAllChildren;
      case 'addToScene':
        return externObject.addToScene;
      case 'addChildrenToScene':
        return externObject.addChildrenToScene;
      case 'applyTransform':
        return externObject.applyTransform;
      case 'depthFirstIterateChildren':
        return externObject.depthFirstIterateChildren;
      case 'debugDescribeChildren':
        return externObject.debugDescribeChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class OffsetLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OffsetLayer':
        return ({offset = Offset.zero}) => OffsetLayerObjectBinding(OffsetLayer(offset : offset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OffsetLayerObjectBinding extends HT_ExternObject<OffsetLayer> {
  OffsetLayerObjectBinding(OffsetLayer value) : super(value);

  @override
  final typeid = HT_TypeId('OffsetLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offset':
        return externObject.offset;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'applyTransform':
        return externObject.applyTransform;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'toImage':
        return externObject.toImage;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'offset':
        externObject.offset = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipRectLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClipRectLayer':
        return ({clipRect, clipBehavior = Clip.hardEdge}) => ClipRectLayerObjectBinding(ClipRectLayer(clipRect : clipRect, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipRectLayerObjectBinding extends HT_ExternObject<ClipRectLayer> {
  ClipRectLayerObjectBinding(ClipRectLayer value) : super(value);

  @override
  final typeid = HT_TypeId('ClipRectLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipRect':
        return externObject.clipRect;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'clipRect':
        externObject.clipRect = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipRRectLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClipRRectLayer':
        return ({clipRRect, clipBehavior = Clip.antiAlias}) => ClipRRectLayerObjectBinding(ClipRRectLayer(clipRRect : clipRRect, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipRRectLayerObjectBinding extends HT_ExternObject<ClipRRectLayer> {
  ClipRRectLayerObjectBinding(ClipRRectLayer value) : super(value);

  @override
  final typeid = HT_TypeId('ClipRRectLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipRRect':
        return externObject.clipRRect;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'clipRRect':
        externObject.clipRRect = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipPathLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClipPathLayer':
        return ({clipPath, clipBehavior = Clip.antiAlias}) => ClipPathLayerObjectBinding(ClipPathLayer(clipPath : clipPath, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipPathLayerObjectBinding extends HT_ExternObject<ClipPathLayer> {
  ClipPathLayerObjectBinding(ClipPathLayer value) : super(value);

  @override
  final typeid = HT_TypeId('ClipPathLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipPath':
        return externObject.clipPath;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'clipPath':
        externObject.clipPath = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorFilterLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ColorFilterLayer':
        return ({colorFilter}) => ColorFilterLayerObjectBinding(ColorFilterLayer(colorFilter : colorFilter));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorFilterLayerObjectBinding extends HT_ExternObject<ColorFilterLayer> {
  ColorFilterLayerObjectBinding(ColorFilterLayer value) : super(value);

  @override
  final typeid = HT_TypeId('ColorFilterLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'colorFilter':
        return externObject.colorFilter;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'colorFilter':
        externObject.colorFilter = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageFilterLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageFilterLayer':
        return ({imageFilter}) => ImageFilterLayerObjectBinding(ImageFilterLayer(imageFilter : imageFilter));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageFilterLayerObjectBinding extends HT_ExternObject<ImageFilterLayer> {
  ImageFilterLayerObjectBinding(ImageFilterLayer value) : super(value);

  @override
  final typeid = HT_TypeId('ImageFilterLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'imageFilter':
        return externObject.imageFilter;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'imageFilter':
        externObject.imageFilter = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TransformLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TransformLayer':
        return ({transform, offset = Offset.zero}) => TransformLayerObjectBinding(TransformLayer(transform : transform, offset : offset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TransformLayerObjectBinding extends HT_ExternObject<TransformLayer> {
  TransformLayerObjectBinding(TransformLayer value) : super(value);

  @override
  final typeid = HT_TypeId('TransformLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transform':
        return externObject.transform;
      case 'addToScene':
        return externObject.addToScene;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'applyTransform':
        return externObject.applyTransform;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'transform':
        externObject.transform = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OpacityLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OpacityLayer':
        return ({alpha, offset = Offset.zero}) => OpacityLayerObjectBinding(OpacityLayer(alpha : alpha, offset : offset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OpacityLayerObjectBinding extends HT_ExternObject<OpacityLayer> {
  OpacityLayerObjectBinding(OpacityLayer value) : super(value);

  @override
  final typeid = HT_TypeId('OpacityLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'alpha':
        return externObject.alpha;
      case 'offset':
        return externObject.offset;
      case 'applyTransform':
        return externObject.applyTransform;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'alpha':
        externObject.alpha = value;
        break;
      case 'offset':
        externObject.offset = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShaderMaskLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ShaderMaskLayer':
        return ({shader, maskRect, blendMode}) => ShaderMaskLayerObjectBinding(ShaderMaskLayer(shader : shader, maskRect : maskRect, blendMode : blendMode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShaderMaskLayerObjectBinding extends HT_ExternObject<ShaderMaskLayer> {
  ShaderMaskLayerObjectBinding(ShaderMaskLayer value) : super(value);

  @override
  final typeid = HT_TypeId('ShaderMaskLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'shader':
        return externObject.shader;
      case 'maskRect':
        return externObject.maskRect;
      case 'blendMode':
        return externObject.blendMode;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'shader':
        externObject.shader = value;
        break;
      case 'maskRect':
        externObject.maskRect = value;
        break;
      case 'blendMode':
        externObject.blendMode = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BackdropFilterLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BackdropFilterLayer':
        return ({filter}) => BackdropFilterLayerObjectBinding(BackdropFilterLayer(filter : filter));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BackdropFilterLayerObjectBinding extends HT_ExternObject<BackdropFilterLayer> {
  BackdropFilterLayerObjectBinding(BackdropFilterLayer value) : super(value);

  @override
  final typeid = HT_TypeId('BackdropFilterLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'filter':
        return externObject.filter;
      case 'addToScene':
        return externObject.addToScene;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'filter':
        externObject.filter = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PhysicalModelLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PhysicalModelLayer':
        return ({clipPath, clipBehavior = Clip.none, elevation, color, shadowColor}) => PhysicalModelLayerObjectBinding(PhysicalModelLayer(clipPath : clipPath, clipBehavior : clipBehavior, elevation : elevation, color : color, shadowColor : shadowColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PhysicalModelLayerObjectBinding extends HT_ExternObject<PhysicalModelLayer> {
  PhysicalModelLayerObjectBinding(PhysicalModelLayer value) : super(value);

  @override
  final typeid = HT_TypeId('PhysicalModelLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipPath':
        return externObject.clipPath;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'elevation':
        return externObject.elevation;
      case 'color':
        return externObject.color;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'addToScene':
        return externObject.addToScene;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'clipPath':
        externObject.clipPath = value;
        break;
      case 'clipBehavior':
        externObject.clipBehavior = value;
        break;
      case 'elevation':
        externObject.elevation = value;
        break;
      case 'color':
        externObject.color = value;
        break;
      case 'shadowColor':
        externObject.shadowColor = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LayerLinkClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LayerLink':
        return () => LayerLinkObjectBinding(LayerLink());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LayerLinkObjectBinding extends HT_ExternObject<LayerLink> {
  LayerLinkObjectBinding(LayerLink value) : super(value);

  @override
  final typeid = HT_TypeId('LayerLink');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leaderSize':
        return externObject.leaderSize;
      case 'leader':
        return externObject.leader;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'leaderSize':
        externObject.leaderSize = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LeaderLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LeaderLayer':
        return ({link, offset = Offset.zero}) => LeaderLayerObjectBinding(LeaderLayer(link : link, offset : offset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LeaderLayerObjectBinding extends HT_ExternObject<LeaderLayer> {
  LeaderLayerObjectBinding(LeaderLayer value) : super(value);

  @override
  final typeid = HT_TypeId('LeaderLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offset':
        return externObject.offset;
      case 'link':
        return externObject.link;
      case 'alwaysNeedsAddToScene':
        return externObject.alwaysNeedsAddToScene;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'addToScene':
        return externObject.addToScene;
      case 'applyTransform':
        return externObject.applyTransform;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'offset':
        externObject.offset = value;
        break;
      case 'link':
        externObject.link = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FollowerLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FollowerLayer':
        return ({link, showWhenUnlinked = true, unlinkedOffset = Offset.zero, linkedOffset = Offset.zero}) => FollowerLayerObjectBinding(FollowerLayer(link : link, showWhenUnlinked : showWhenUnlinked, unlinkedOffset : unlinkedOffset, linkedOffset : linkedOffset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FollowerLayerObjectBinding extends HT_ExternObject<FollowerLayer> {
  FollowerLayerObjectBinding(FollowerLayer value) : super(value);

  @override
  final typeid = HT_TypeId('FollowerLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'showWhenUnlinked':
        return externObject.showWhenUnlinked;
      case 'unlinkedOffset':
        return externObject.unlinkedOffset;
      case 'linkedOffset':
        return externObject.linkedOffset;
      case 'link':
        return externObject.link;
      case 'alwaysNeedsAddToScene':
        return externObject.alwaysNeedsAddToScene;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'getLastTransform':
        return externObject.getLastTransform;
      case 'addToScene':
        return externObject.addToScene;
      case 'applyTransform':
        return externObject.applyTransform;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'showWhenUnlinked':
        externObject.showWhenUnlinked = value;
        break;
      case 'unlinkedOffset':
        externObject.unlinkedOffset = value;
        break;
      case 'linkedOffset':
        externObject.linkedOffset = value;
        break;
      case 'link':
        externObject.link = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnnotatedRegionLayerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnnotatedRegionLayer':
        return (value, {size, offset, opaque = false}) => AnnotatedRegionLayerObjectBinding(AnnotatedRegionLayer<Object>(value, size : size, offset : offset, opaque : opaque));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnnotatedRegionLayerObjectBinding extends HT_ExternObject<AnnotatedRegionLayer> {
  AnnotatedRegionLayerObjectBinding(AnnotatedRegionLayer value) : super(value);

  @override
  final typeid = HT_TypeId('AnnotatedRegionLayer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'size':
        return externObject.size;
      case 'offset':
        return externObject.offset;
      case 'opaque':
        return externObject.opaque;
      case 'findAnnotations':
        return externObject.findAnnotations;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

