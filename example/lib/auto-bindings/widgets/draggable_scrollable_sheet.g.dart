import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';


class DraggableScrollableSheetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DraggableScrollableSheet':
        return ({key, initialChildSize = 0.5, minChildSize = 0.25, maxChildSize = 1.0, expand = true, builder}) => DraggableScrollableSheetObjectBinding(DraggableScrollableSheet(key : key, initialChildSize : initialChildSize, minChildSize : minChildSize, maxChildSize : maxChildSize, expand : expand, builder : builder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DraggableScrollableSheetObjectBinding extends HT_ExternObject<DraggableScrollableSheet> {
  DraggableScrollableSheetObjectBinding(DraggableScrollableSheet value) : super(value);

  @override
  final typeid = HT_TypeId('DraggableScrollableSheet');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initialChildSize':
        return externObject.initialChildSize;
      case 'minChildSize':
        return externObject.minChildSize;
      case 'maxChildSize':
        return externObject.maxChildSize;
      case 'expand':
        return externObject.expand;
      case 'builder':
        return externObject.builder;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DraggableScrollableNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DraggableScrollableNotification':
        return ({extent, minExtent, maxExtent, initialExtent, context}) => DraggableScrollableNotificationObjectBinding(DraggableScrollableNotification(extent : extent, minExtent : minExtent, maxExtent : maxExtent, initialExtent : initialExtent, context : context));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DraggableScrollableNotificationObjectBinding extends HT_ExternObject<DraggableScrollableNotification> {
  DraggableScrollableNotificationObjectBinding(DraggableScrollableNotification value) : super(value);

  @override
  final typeid = HT_TypeId('DraggableScrollableNotification');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'extent':
        return externObject.extent;
      case 'minExtent':
        return externObject.minExtent;
      case 'maxExtent':
        return externObject.maxExtent;
      case 'initialExtent':
        return externObject.initialExtent;
      case 'context':
        return externObject.context;
      case 'debugFillDescription':
        return externObject.debugFillDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DraggableScrollableActuatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DraggableScrollableActuator':
        return ({key, child}) => DraggableScrollableActuatorObjectBinding(DraggableScrollableActuator(key : key, child : child));
      case 'reset':
        return (context) => DraggableScrollableActuator.reset(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DraggableScrollableActuatorObjectBinding extends HT_ExternObject<DraggableScrollableActuator> {
  DraggableScrollableActuatorObjectBinding(DraggableScrollableActuator value) : super(value);

  @override
  final typeid = HT_TypeId('DraggableScrollableActuator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

