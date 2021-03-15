import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';

class PointerChangeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'cancel':
        return PointerChange.cancel;
      case 'add':
        return PointerChange.add;
      case 'remove':
        return PointerChange.remove;
      case 'hover':
        return PointerChange.hover;
      case 'down':
        return PointerChange.down;
      case 'move':
        return PointerChange.move;
      case 'up':
        return PointerChange.up;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class PointerDeviceKindClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'touch':
        return PointerDeviceKind.touch;
      case 'mouse':
        return PointerDeviceKind.mouse;
      case 'stylus':
        return PointerDeviceKind.stylus;
      case 'invertedStylus':
        return PointerDeviceKind.invertedStylus;
      case 'unknown':
        return PointerDeviceKind.unknown;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class PointerSignalKindClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'none':
        return PointerSignalKind.none;
      case 'scroll':
        return PointerSignalKind.scroll;
      case 'unknown':
        return PointerSignalKind.unknown;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerData':
        return ({embedderId = 0, timeStamp = Duration.zero, change = PointerChange.cancel, kind = PointerDeviceKind.touch, signalKind, device = 0, pointerIdentifier = 0, physicalX = 0.0, physicalY = 0.0, physicalDeltaX = 0.0, physicalDeltaY = 0.0, buttons = 0, obscured = false, synthesized = false, pressure = 0.0, pressureMin = 0.0, pressureMax = 0.0, distance = 0.0, distanceMax = 0.0, size = 0.0, radiusMajor = 0.0, radiusMinor = 0.0, radiusMin = 0.0, radiusMax = 0.0, orientation = 0.0, tilt = 0.0, platformData = 0, scrollDeltaX = 0.0, scrollDeltaY = 0.0}) => PointerDataObjectBinding(PointerData(embedderId : embedderId, timeStamp : timeStamp, change : change, kind : kind, signalKind : signalKind, device : device, pointerIdentifier : pointerIdentifier, physicalX : physicalX, physicalY : physicalY, physicalDeltaX : physicalDeltaX, physicalDeltaY : physicalDeltaY, buttons : buttons, obscured : obscured, synthesized : synthesized, pressure : pressure, pressureMin : pressureMin, pressureMax : pressureMax, distance : distance, distanceMax : distanceMax, size : size, radiusMajor : radiusMajor, radiusMinor : radiusMinor, radiusMin : radiusMin, radiusMax : radiusMax, orientation : orientation, tilt : tilt, platformData : platformData, scrollDeltaX : scrollDeltaX, scrollDeltaY : scrollDeltaY));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerDataObjectBinding extends HT_ExternObject<PointerData> {
  PointerDataObjectBinding(PointerData value) : super(value);

  @override
  final typeid = HT_TypeId('PointerData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'embedderId':
        return externObject.embedderId;
      case 'timeStamp':
        return externObject.timeStamp;
      case 'change':
        return externObject.change;
      case 'kind':
        return externObject.kind;
      case 'signalKind':
        return externObject.signalKind;
      case 'device':
        return externObject.device;
      case 'pointerIdentifier':
        return externObject.pointerIdentifier;
      case 'physicalX':
        return externObject.physicalX;
      case 'physicalY':
        return externObject.physicalY;
      case 'physicalDeltaX':
        return externObject.physicalDeltaX;
      case 'physicalDeltaY':
        return externObject.physicalDeltaY;
      case 'buttons':
        return externObject.buttons;
      case 'obscured':
        return externObject.obscured;
      case 'synthesized':
        return externObject.synthesized;
      case 'pressure':
        return externObject.pressure;
      case 'pressureMin':
        return externObject.pressureMin;
      case 'pressureMax':
        return externObject.pressureMax;
      case 'distance':
        return externObject.distance;
      case 'distanceMax':
        return externObject.distanceMax;
      case 'size':
        return externObject.size;
      case 'radiusMajor':
        return externObject.radiusMajor;
      case 'radiusMinor':
        return externObject.radiusMinor;
      case 'radiusMin':
        return externObject.radiusMin;
      case 'radiusMax':
        return externObject.radiusMax;
      case 'orientation':
        return externObject.orientation;
      case 'tilt':
        return externObject.tilt;
      case 'platformData':
        return externObject.platformData;
      case 'scrollDeltaX':
        return externObject.scrollDeltaX;
      case 'scrollDeltaY':
        return externObject.scrollDeltaY;
      case 'toString':
        return externObject.toString;
      case 'toStringFull':
        return externObject.toStringFull;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerDataPacketClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerDataPacket':
        return ({data = const <PointerData>[]}) => PointerDataPacketObjectBinding(PointerDataPacket(data : data));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerDataPacketObjectBinding extends HT_ExternObject<PointerDataPacket> {
  PointerDataPacketObjectBinding(PointerDataPacket value) : super(value);

  @override
  final typeid = HT_TypeId('PointerDataPacket');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

