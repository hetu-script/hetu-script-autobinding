import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
const kPrimaryButton = 0x01;


class PointerAddedEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerAddedEvent':
        return ({timeStamp = Duration.zero, pointer = 0, kind = PointerDeviceKind.touch, device = 0, position = Offset.zero, obscured = false, pressureMin = 1.0, pressureMax = 1.0, distance = 0.0, distanceMax = 0.0, radiusMin = 0.0, radiusMax = 0.0, orientation = 0.0, tilt = 0.0, embedderId = 0}) => PointerAddedEventObjectBinding(PointerAddedEvent(timeStamp : timeStamp, pointer : pointer, kind : kind, device : device, position : position, obscured : obscured, pressureMin : pressureMin, pressureMax : pressureMax, distance : distance, distanceMax : distanceMax, radiusMin : radiusMin, radiusMax : radiusMax, orientation : orientation, tilt : tilt, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerAddedEventObjectBinding extends HT_ExternObject<PointerAddedEvent> {
  PointerAddedEventObjectBinding(PointerAddedEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerAddedEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformed':
        return externObject.transformed;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerRemovedEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerRemovedEvent':
        return ({timeStamp = Duration.zero, pointer = 0, kind = PointerDeviceKind.touch, device = 0, position = Offset.zero, obscured = false, pressureMin = 1.0, pressureMax = 1.0, distanceMax = 0.0, radiusMin = 0.0, radiusMax = 0.0, original, embedderId = 0}) => PointerRemovedEventObjectBinding(PointerRemovedEvent(timeStamp : timeStamp, pointer : pointer, kind : kind, device : device, position : position, obscured : obscured, pressureMin : pressureMin, pressureMax : pressureMax, distanceMax : distanceMax, radiusMin : radiusMin, radiusMax : radiusMax, original : original, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerRemovedEventObjectBinding extends HT_ExternObject<PointerRemovedEvent> {
  PointerRemovedEventObjectBinding(PointerRemovedEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerRemovedEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformed':
        return externObject.transformed;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerHoverEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerHoverEvent':
        return ({timeStamp = Duration.zero, kind = PointerDeviceKind.touch, pointer = 0, device = 0, position = Offset.zero, delta = Offset.zero, buttons = 0, obscured = false, pressureMin = 1.0, pressureMax = 1.0, distance = 0.0, distanceMax = 0.0, size = 0.0, radiusMajor = 0.0, radiusMinor = 0.0, radiusMin = 0.0, radiusMax = 0.0, orientation = 0.0, tilt = 0.0, synthesized = false, embedderId = 0}) => PointerHoverEventObjectBinding(PointerHoverEvent(timeStamp : timeStamp, kind : kind, pointer : pointer, device : device, position : position, delta : delta, buttons : buttons, obscured : obscured, pressureMin : pressureMin, pressureMax : pressureMax, distance : distance, distanceMax : distanceMax, size : size, radiusMajor : radiusMajor, radiusMinor : radiusMinor, radiusMin : radiusMin, radiusMax : radiusMax, orientation : orientation, tilt : tilt, synthesized : synthesized, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerHoverEventObjectBinding extends HT_ExternObject<PointerHoverEvent> {
  PointerHoverEventObjectBinding(PointerHoverEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerHoverEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformed':
        return externObject.transformed;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerEnterEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerEnterEvent':
        return ({timeStamp = Duration.zero, pointer = 0, kind = PointerDeviceKind.touch, device = 0, position = Offset.zero, delta = Offset.zero, buttons = 0, obscured = false, pressureMin = 1.0, pressureMax = 1.0, distance = 0.0, distanceMax = 0.0, size = 0.0, radiusMajor = 0.0, radiusMinor = 0.0, radiusMin = 0.0, radiusMax = 0.0, orientation = 0.0, tilt = 0.0, down = false, synthesized = false, embedderId = 0}) => PointerEnterEventObjectBinding(PointerEnterEvent(timeStamp : timeStamp, pointer : pointer, kind : kind, device : device, position : position, delta : delta, buttons : buttons, obscured : obscured, pressureMin : pressureMin, pressureMax : pressureMax, distance : distance, distanceMax : distanceMax, size : size, radiusMajor : radiusMajor, radiusMinor : radiusMinor, radiusMin : radiusMin, radiusMax : radiusMax, orientation : orientation, tilt : tilt, down : down, synthesized : synthesized, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerEnterEventObjectBinding extends HT_ExternObject<PointerEnterEvent> {
  PointerEnterEventObjectBinding(PointerEnterEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerEnterEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformed':
        return externObject.transformed;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerExitEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerExitEvent':
        return ({timeStamp = Duration.zero, kind = PointerDeviceKind.touch, pointer = 0, device = 0, position = Offset.zero, delta = Offset.zero, buttons = 0, obscured = false, pressureMin = 1.0, pressureMax = 1.0, distance = 0.0, distanceMax = 0.0, size = 0.0, radiusMajor = 0.0, radiusMinor = 0.0, radiusMin = 0.0, radiusMax = 0.0, orientation = 0.0, tilt = 0.0, down = false, synthesized = false, embedderId = 0}) => PointerExitEventObjectBinding(PointerExitEvent(timeStamp : timeStamp, kind : kind, pointer : pointer, device : device, position : position, delta : delta, buttons : buttons, obscured : obscured, pressureMin : pressureMin, pressureMax : pressureMax, distance : distance, distanceMax : distanceMax, size : size, radiusMajor : radiusMajor, radiusMinor : radiusMinor, radiusMin : radiusMin, radiusMax : radiusMax, orientation : orientation, tilt : tilt, down : down, synthesized : synthesized, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerExitEventObjectBinding extends HT_ExternObject<PointerExitEvent> {
  PointerExitEventObjectBinding(PointerExitEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerExitEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformed':
        return externObject.transformed;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerDownEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerDownEvent':
        return ({timeStamp = Duration.zero, pointer = 0, kind = PointerDeviceKind.touch, device = 0, position = Offset.zero, buttons = kPrimaryButton, obscured = false, pressure = 1.0, pressureMin = 1.0, pressureMax = 1.0, distanceMax = 0.0, size = 0.0, radiusMajor = 0.0, radiusMinor = 0.0, radiusMin = 0.0, radiusMax = 0.0, orientation = 0.0, tilt = 0.0, embedderId = 0}) => PointerDownEventObjectBinding(PointerDownEvent(timeStamp : timeStamp, pointer : pointer, kind : kind, device : device, position : position, buttons : buttons, obscured : obscured, pressure : pressure, pressureMin : pressureMin, pressureMax : pressureMax, distanceMax : distanceMax, size : size, radiusMajor : radiusMajor, radiusMinor : radiusMinor, radiusMin : radiusMin, radiusMax : radiusMax, orientation : orientation, tilt : tilt, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerDownEventObjectBinding extends HT_ExternObject<PointerDownEvent> {
  PointerDownEventObjectBinding(PointerDownEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerDownEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformed':
        return externObject.transformed;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerMoveEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerMoveEvent':
        return ({timeStamp = Duration.zero, pointer = 0, kind = PointerDeviceKind.touch, device = 0, position = Offset.zero, delta = Offset.zero, buttons = kPrimaryButton, obscured = false, pressure = 1.0, pressureMin = 1.0, pressureMax = 1.0, distanceMax = 0.0, size = 0.0, radiusMajor = 0.0, radiusMinor = 0.0, radiusMin = 0.0, radiusMax = 0.0, orientation = 0.0, tilt = 0.0, platformData = 0, synthesized = false, embedderId = 0}) => PointerMoveEventObjectBinding(PointerMoveEvent(timeStamp : timeStamp, pointer : pointer, kind : kind, device : device, position : position, delta : delta, buttons : buttons, obscured : obscured, pressure : pressure, pressureMin : pressureMin, pressureMax : pressureMax, distanceMax : distanceMax, size : size, radiusMajor : radiusMajor, radiusMinor : radiusMinor, radiusMin : radiusMin, radiusMax : radiusMax, orientation : orientation, tilt : tilt, platformData : platformData, synthesized : synthesized, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerMoveEventObjectBinding extends HT_ExternObject<PointerMoveEvent> {
  PointerMoveEventObjectBinding(PointerMoveEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerMoveEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformed':
        return externObject.transformed;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerUpEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerUpEvent':
        return ({timeStamp = Duration.zero, pointer = 0, kind = PointerDeviceKind.touch, device = 0, position = Offset.zero, buttons = 0, obscured = false, pressure = 0.0, pressureMin = 1.0, pressureMax = 1.0, distance = 0.0, distanceMax = 0.0, size = 0.0, radiusMajor = 0.0, radiusMinor = 0.0, radiusMin = 0.0, radiusMax = 0.0, orientation = 0.0, tilt = 0.0, embedderId = 0}) => PointerUpEventObjectBinding(PointerUpEvent(timeStamp : timeStamp, pointer : pointer, kind : kind, device : device, position : position, buttons : buttons, obscured : obscured, pressure : pressure, pressureMin : pressureMin, pressureMax : pressureMax, distance : distance, distanceMax : distanceMax, size : size, radiusMajor : radiusMajor, radiusMinor : radiusMinor, radiusMin : radiusMin, radiusMax : radiusMax, orientation : orientation, tilt : tilt, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerUpEventObjectBinding extends HT_ExternObject<PointerUpEvent> {
  PointerUpEventObjectBinding(PointerUpEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerUpEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformed':
        return externObject.transformed;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerScrollEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerScrollEvent':
        return ({timeStamp = Duration.zero, kind = PointerDeviceKind.mouse, device = 0, position = Offset.zero, scrollDelta = Offset.zero, embedderId = 0}) => PointerScrollEventObjectBinding(PointerScrollEvent(timeStamp : timeStamp, kind : kind, device : device, position : position, scrollDelta : scrollDelta, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerScrollEventObjectBinding extends HT_ExternObject<PointerScrollEvent> {
  PointerScrollEventObjectBinding(PointerScrollEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerScrollEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scrollDelta':
        return externObject.scrollDelta;
      case 'transformed':
        return externObject.transformed;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PointerCancelEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerCancelEvent':
        return ({timeStamp = Duration.zero, pointer = 0, kind = PointerDeviceKind.touch, device = 0, position = Offset.zero, buttons = 0, obscured = false, pressureMin = 1.0, pressureMax = 1.0, distance = 0.0, distanceMax = 0.0, size = 0.0, radiusMajor = 0.0, radiusMinor = 0.0, radiusMin = 0.0, radiusMax = 0.0, orientation = 0.0, tilt = 0.0, embedderId = 0}) => PointerCancelEventObjectBinding(PointerCancelEvent(timeStamp : timeStamp, pointer : pointer, kind : kind, device : device, position : position, buttons : buttons, obscured : obscured, pressureMin : pressureMin, pressureMax : pressureMax, distance : distance, distanceMax : distanceMax, size : size, radiusMajor : radiusMajor, radiusMinor : radiusMinor, radiusMin : radiusMin, radiusMax : radiusMax, orientation : orientation, tilt : tilt, embedderId : embedderId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerCancelEventObjectBinding extends HT_ExternObject<PointerCancelEvent> {
  PointerCancelEventObjectBinding(PointerCancelEvent value) : super(value);

  @override
  final typeid = HT_TypeId('PointerCancelEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'transformed':
        return externObject.transformed;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

