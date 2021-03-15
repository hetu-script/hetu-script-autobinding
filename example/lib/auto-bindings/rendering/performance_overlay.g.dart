import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';

class PerformanceOverlayOptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'displayRasterizerStatistics':
        return PerformanceOverlayOption.displayRasterizerStatistics;
      case 'visualizeRasterizerStatistics':
        return PerformanceOverlayOption.visualizeRasterizerStatistics;
      case 'displayEngineStatistics':
        return PerformanceOverlayOption.displayEngineStatistics;
      case 'visualizeEngineStatistics':
        return PerformanceOverlayOption.visualizeEngineStatistics;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPerformanceOverlayClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderPerformanceOverlay':
        return ({optionsMask = 0, rasterizerThreshold = 0, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false}) => RenderPerformanceOverlayObjectBinding(RenderPerformanceOverlay(optionsMask : optionsMask, rasterizerThreshold : rasterizerThreshold, checkerboardRasterCacheImages : checkerboardRasterCacheImages, checkerboardOffscreenLayers : checkerboardOffscreenLayers));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderPerformanceOverlayObjectBinding extends HT_ExternObject<RenderPerformanceOverlay> {
  RenderPerformanceOverlayObjectBinding(RenderPerformanceOverlay value) : super(value);

  @override
  final typeid = HT_TypeId('RenderPerformanceOverlay');

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
      case 'sizedByParent':
        return externObject.sizedByParent;
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'optionsMask':
        externObject.optionsMask = value;
        break;
      case 'rasterizerThreshold':
        externObject.rasterizerThreshold = value;
        break;
      case 'checkerboardRasterCacheImages':
        externObject.checkerboardRasterCacheImages = value;
        break;
      case 'checkerboardOffscreenLayers':
        externObject.checkerboardOffscreenLayers = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

