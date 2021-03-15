import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';


class SceneBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SceneBuilder':
        return () => SceneBuilderObjectBinding(SceneBuilder());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SceneBuilderObjectBinding extends HT_ExternObject<SceneBuilder> {
  SceneBuilderObjectBinding(SceneBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('SceneBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'pushTransform':
        return externObject.pushTransform;
      case 'pushOffset':
        return externObject.pushOffset;
      case 'pushClipRect':
        return externObject.pushClipRect;
      case 'pushClipRRect':
        return externObject.pushClipRRect;
      case 'pushClipPath':
        return externObject.pushClipPath;
      case 'pushOpacity':
        return externObject.pushOpacity;
      case 'pushColorFilter':
        return externObject.pushColorFilter;
      case 'pushImageFilter':
        return externObject.pushImageFilter;
      case 'pushBackdropFilter':
        return externObject.pushBackdropFilter;
      case 'pushShaderMask':
        return externObject.pushShaderMask;
      case 'pushPhysicalShape':
        return externObject.pushPhysicalShape;
      case 'pop':
        return externObject.pop;
      case 'addRetained':
        return externObject.addRetained;
      case 'addPerformanceOverlay':
        return externObject.addPerformanceOverlay;
      case 'addPicture':
        return externObject.addPicture;
      case 'addTexture':
        return externObject.addTexture;
      case 'addPlatformView':
        return externObject.addPlatformView;
      case 'addChildScene':
        return externObject.addChildScene;
      case 'setRasterizerTracingThreshold':
        return externObject.setRasterizerTracingThreshold;
      case 'setCheckerboardRasterCacheImages':
        return externObject.setCheckerboardRasterCacheImages;
      case 'setCheckerboardOffscreenLayers':
        return externObject.setCheckerboardOffscreenLayers;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SceneHostClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SceneHost':
        return (viewHolderToken, viewConnectedCallback, viewDisconnectedCallback, viewStateChangedCallback) => SceneHostObjectBinding(SceneHost(viewHolderToken, viewConnectedCallback, viewDisconnectedCallback, viewStateChangedCallback));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SceneHostObjectBinding extends HT_ExternObject<SceneHost> {
  SceneHostObjectBinding(SceneHost value) : super(value);

  @override
  final typeid = HT_TypeId('SceneHost');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dispose':
        return externObject.dispose;
      case 'setProperties':
        return externObject.setProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

