import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


class AndroidViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AndroidView':
        return ({key, viewType, onPlatformViewCreated, hitTestBehavior = PlatformViewHitTestBehavior.opaque, layoutDirection, gestureRecognizers, creationParams, creationParamsCodec, clipBehavior = Clip.hardEdge}) => AndroidViewObjectBinding(AndroidView(key : key, viewType : viewType, onPlatformViewCreated : onPlatformViewCreated, hitTestBehavior : hitTestBehavior, layoutDirection : layoutDirection, gestureRecognizers : gestureRecognizers, creationParams : creationParams, creationParamsCodec : creationParamsCodec, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AndroidViewObjectBinding extends HT_ExternObject<AndroidView> {
  AndroidViewObjectBinding(AndroidView value) : super(value);

  @override
  final typeid = HT_TypeId('AndroidView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'viewType':
        return externObject.viewType;
      case 'onPlatformViewCreated':
        return externObject.onPlatformViewCreated;
      case 'hitTestBehavior':
        return externObject.hitTestBehavior;
      case 'layoutDirection':
        return externObject.layoutDirection;
      case 'gestureRecognizers':
        return externObject.gestureRecognizers;
      case 'creationParams':
        return externObject.creationParams;
      case 'creationParamsCodec':
        return externObject.creationParamsCodec;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class UiKitViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'UiKitView':
        return ({key, viewType, onPlatformViewCreated, hitTestBehavior = PlatformViewHitTestBehavior.opaque, layoutDirection, creationParams, creationParamsCodec, gestureRecognizers}) => UiKitViewObjectBinding(UiKitView(key : key, viewType : viewType, onPlatformViewCreated : onPlatformViewCreated, hitTestBehavior : hitTestBehavior, layoutDirection : layoutDirection, creationParams : creationParams, creationParamsCodec : creationParamsCodec, gestureRecognizers : gestureRecognizers));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class UiKitViewObjectBinding extends HT_ExternObject<UiKitView> {
  UiKitViewObjectBinding(UiKitView value) : super(value);

  @override
  final typeid = HT_TypeId('UiKitView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'viewType':
        return externObject.viewType;
      case 'onPlatformViewCreated':
        return externObject.onPlatformViewCreated;
      case 'hitTestBehavior':
        return externObject.hitTestBehavior;
      case 'layoutDirection':
        return externObject.layoutDirection;
      case 'creationParams':
        return externObject.creationParams;
      case 'creationParamsCodec':
        return externObject.creationParamsCodec;
      case 'gestureRecognizers':
        return externObject.gestureRecognizers;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HtmlElementViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HtmlElementView':
        return ({key, viewType}) => HtmlElementViewObjectBinding(HtmlElementView(key : key, viewType : viewType));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HtmlElementViewObjectBinding extends HT_ExternObject<HtmlElementView> {
  HtmlElementViewObjectBinding(HtmlElementView value) : super(value);

  @override
  final typeid = HT_TypeId('HtmlElementView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'viewType':
        return externObject.viewType;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PlatformViewLinkClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PlatformViewLink':
        return ({key, surfaceFactory, onCreatePlatformView, viewType}) => PlatformViewLinkObjectBinding(PlatformViewLink(key : key, surfaceFactory : surfaceFactory, onCreatePlatformView : onCreatePlatformView, viewType : viewType));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformViewLinkObjectBinding extends HT_ExternObject<PlatformViewLink> {
  PlatformViewLinkObjectBinding(PlatformViewLink value) : super(value);

  @override
  final typeid = HT_TypeId('PlatformViewLink');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'viewType':
        return externObject.viewType;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PlatformViewSurfaceClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PlatformViewSurface':
        return ({key, controller, hitTestBehavior, gestureRecognizers}) => PlatformViewSurfaceObjectBinding(PlatformViewSurface(key : key, controller : controller, hitTestBehavior : hitTestBehavior, gestureRecognizers : gestureRecognizers));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformViewSurfaceObjectBinding extends HT_ExternObject<PlatformViewSurface> {
  PlatformViewSurfaceObjectBinding(PlatformViewSurface value) : super(value);

  @override
  final typeid = HT_TypeId('PlatformViewSurface');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'gestureRecognizers':
        return externObject.gestureRecognizers;
      case 'hitTestBehavior':
        return externObject.hitTestBehavior;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AndroidViewSurfaceClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AndroidViewSurface':
        return ({key, controller, hitTestBehavior, gestureRecognizers}) => AndroidViewSurfaceObjectBinding(AndroidViewSurface(key : key, controller : controller, hitTestBehavior : hitTestBehavior, gestureRecognizers : gestureRecognizers));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AndroidViewSurfaceObjectBinding extends HT_ExternObject<AndroidViewSurface> {
  AndroidViewSurfaceObjectBinding(AndroidViewSurface value) : super(value);

  @override
  final typeid = HT_TypeId('AndroidViewSurface');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createRenderObject':
        return externObject.createRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

