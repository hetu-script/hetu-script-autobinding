import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/gestures.dart';


class PlatformViewsServiceClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initAndroidView':
        return ({id, viewType, layoutDirection, creationParams, creationParamsCodec, onFocus}) => PlatformViewsService.initAndroidView(id : id, viewType : viewType, layoutDirection : layoutDirection, creationParams : creationParams, creationParamsCodec : creationParamsCodec, onFocus : onFocus);
      case 'initSurfaceAndroidView':
        return ({id, viewType, layoutDirection, creationParams, creationParamsCodec, onFocus}) => PlatformViewsService.initSurfaceAndroidView(id : id, viewType : viewType, layoutDirection : layoutDirection, creationParams : creationParams, creationParamsCodec : creationParamsCodec, onFocus : onFocus);
      case 'initUiKitView':
        return ({id, viewType, layoutDirection, creationParams, creationParamsCodec}) => PlatformViewsService.initUiKitView(id : id, viewType : viewType, layoutDirection : layoutDirection, creationParams : creationParams, creationParamsCodec : creationParamsCodec);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class AndroidPointerPropertiesClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AndroidPointerProperties':
        return ({id, toolType}) => AndroidPointerPropertiesObjectBinding(AndroidPointerProperties(id : id, toolType : toolType));
      case 'AndroidPointerProperties.kToolTypeUnknown':
        return AndroidPointerProperties.kToolTypeUnknown;
      case 'AndroidPointerProperties.kToolTypeFinger':
        return AndroidPointerProperties.kToolTypeFinger;
      case 'AndroidPointerProperties.kToolTypeStylus':
        return AndroidPointerProperties.kToolTypeStylus;
      case 'AndroidPointerProperties.kToolTypeMouse':
        return AndroidPointerProperties.kToolTypeMouse;
      case 'AndroidPointerProperties.kToolTypeEraser':
        return AndroidPointerProperties.kToolTypeEraser;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AndroidPointerPropertiesObjectBinding extends HT_ExternObject<AndroidPointerProperties> {
  AndroidPointerPropertiesObjectBinding(AndroidPointerProperties value) : super(value);

  @override
  final typeid = HT_TypeId('AndroidPointerProperties');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'id':
        return externObject.id;
      case 'toolType':
        return externObject.toolType;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AndroidPointerCoordsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AndroidPointerCoords':
        return ({orientation, pressure, size, toolMajor, toolMinor, touchMajor, touchMinor, x, y}) => AndroidPointerCoordsObjectBinding(AndroidPointerCoords(orientation : orientation, pressure : pressure, size : size, toolMajor : toolMajor, toolMinor : toolMinor, touchMajor : touchMajor, touchMinor : touchMinor, x : x, y : y));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AndroidPointerCoordsObjectBinding extends HT_ExternObject<AndroidPointerCoords> {
  AndroidPointerCoordsObjectBinding(AndroidPointerCoords value) : super(value);

  @override
  final typeid = HT_TypeId('AndroidPointerCoords');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'orientation':
        return externObject.orientation;
      case 'pressure':
        return externObject.pressure;
      case 'size':
        return externObject.size;
      case 'toolMajor':
        return externObject.toolMajor;
      case 'toolMinor':
        return externObject.toolMinor;
      case 'touchMajor':
        return externObject.touchMajor;
      case 'touchMinor':
        return externObject.touchMinor;
      case 'x':
        return externObject.x;
      case 'y':
        return externObject.y;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AndroidMotionEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AndroidMotionEvent':
        return ({downTime, eventTime, action, pointerCount, pointerProperties, pointerCoords, metaState, buttonState, xPrecision, yPrecision, deviceId, edgeFlags, source, flags, motionEventId}) => AndroidMotionEventObjectBinding(AndroidMotionEvent(downTime : downTime, eventTime : eventTime, action : action, pointerCount : pointerCount, pointerProperties : pointerProperties, pointerCoords : pointerCoords, metaState : metaState, buttonState : buttonState, xPrecision : xPrecision, yPrecision : yPrecision, deviceId : deviceId, edgeFlags : edgeFlags, source : source, flags : flags, motionEventId : motionEventId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AndroidMotionEventObjectBinding extends HT_ExternObject<AndroidMotionEvent> {
  AndroidMotionEventObjectBinding(AndroidMotionEvent value) : super(value);

  @override
  final typeid = HT_TypeId('AndroidMotionEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'downTime':
        return externObject.downTime;
      case 'eventTime':
        return externObject.eventTime;
      case 'action':
        return externObject.action;
      case 'pointerCount':
        return externObject.pointerCount;
      case 'pointerProperties':
        return externObject.pointerProperties;
      case 'pointerCoords':
        return externObject.pointerCoords;
      case 'metaState':
        return externObject.metaState;
      case 'buttonState':
        return externObject.buttonState;
      case 'xPrecision':
        return externObject.xPrecision;
      case 'yPrecision':
        return externObject.yPrecision;
      case 'deviceId':
        return externObject.deviceId;
      case 'edgeFlags':
        return externObject.edgeFlags;
      case 'source':
        return externObject.source;
      case 'flags':
        return externObject.flags;
      case 'motionEventId':
        return externObject.motionEventId;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

