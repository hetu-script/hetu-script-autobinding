import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class PerformanceOverlayClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PerformanceOverlay':
        return ({key, optionsMask = 0, rasterizerThreshold = 0, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false}) => PerformanceOverlayObjectBinding(PerformanceOverlay(key : key, optionsMask : optionsMask, rasterizerThreshold : rasterizerThreshold, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers));
      case 'PerformanceOverlay.allEnabled':
        return ({key, rasterizerThreshold = 0, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false}) => PerformanceOverlayObjectBinding(PerformanceOverlay.allEnabled(key : key, rasterizerThreshold : rasterizerThreshold, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PerformanceOverlayObjectBinding extends HT_ExternObject<PerformanceOverlay> {
  PerformanceOverlayObjectBinding(PerformanceOverlay value) : super(value);

  @override
  final typeid = HT_TypeId('PerformanceOverlay');

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
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

