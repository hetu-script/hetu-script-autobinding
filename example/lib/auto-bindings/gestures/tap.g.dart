import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';


class TapDownDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TapDownDetails':
        return ({globalPosition = Offset.zero, localPosition, kind}) => TapDownDetailsObjectBinding(TapDownDetails(globalPosition : globalPosition, localPosition : localPosition, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TapDownDetailsObjectBinding extends HT_ExternObject<TapDownDetails> {
  TapDownDetailsObjectBinding(TapDownDetails value) : super(value);

  @override
  final typeid = HT_TypeId('TapDownDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'globalPosition':
        return externObject.globalPosition;
      case 'kind':
        return externObject.kind;
      case 'localPosition':
        return externObject.localPosition;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TapUpDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TapUpDetails':
        return ({kind, globalPosition = Offset.zero, localPosition}) => TapUpDetailsObjectBinding(TapUpDetails(kind : kind, globalPosition : globalPosition, localPosition : localPosition));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TapUpDetailsObjectBinding extends HT_ExternObject<TapUpDetails> {
  TapUpDetailsObjectBinding(TapUpDetails value) : super(value);

  @override
  final typeid = HT_TypeId('TapUpDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'globalPosition':
        return externObject.globalPosition;
      case 'localPosition':
        return externObject.localPosition;
      case 'kind':
        return externObject.kind;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TapGestureRecognizerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TapGestureRecognizer':
        return ({debugOwner}) => TapGestureRecognizerObjectBinding(TapGestureRecognizer(debugOwner : debugOwner));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TapGestureRecognizerObjectBinding extends HT_ExternObject<TapGestureRecognizer> {
  TapGestureRecognizerObjectBinding(TapGestureRecognizer value) : super(value);

  @override
  final typeid = HT_TypeId('TapGestureRecognizer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onTapDown':
        return externObject.onTapDown;
      case 'onTapUp':
        return externObject.onTapUp;
      case 'onTap':
        return externObject.onTap;
      case 'onTapCancel':
        return externObject.onTapCancel;
      case 'onSecondaryTap':
        return externObject.onSecondaryTap;
      case 'onSecondaryTapDown':
        return externObject.onSecondaryTapDown;
      case 'onSecondaryTapUp':
        return externObject.onSecondaryTapUp;
      case 'onSecondaryTapCancel':
        return externObject.onSecondaryTapCancel;
      case 'onTertiaryTapDown':
        return externObject.onTertiaryTapDown;
      case 'onTertiaryTapUp':
        return externObject.onTertiaryTapUp;
      case 'onTertiaryTapCancel':
        return externObject.onTertiaryTapCancel;
      case 'debugDescription':
        return externObject.debugDescription;
      case 'isPointerAllowed':
        return externObject.isPointerAllowed;
      case 'handleTapDown':
        return externObject.handleTapDown;
      case 'handleTapUp':
        return externObject.handleTapUp;
      case 'handleTapCancel':
        return externObject.handleTapCancel;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'onTapDown':
        externObject.onTapDown = value;
        break;
      case 'onTapUp':
        externObject.onTapUp = value;
        break;
      case 'onTap':
        externObject.onTap = value;
        break;
      case 'onTapCancel':
        externObject.onTapCancel = value;
        break;
      case 'onSecondaryTap':
        externObject.onSecondaryTap = value;
        break;
      case 'onSecondaryTapDown':
        externObject.onSecondaryTapDown = value;
        break;
      case 'onSecondaryTapUp':
        externObject.onSecondaryTapUp = value;
        break;
      case 'onSecondaryTapCancel':
        externObject.onSecondaryTapCancel = value;
        break;
      case 'onTertiaryTapDown':
        externObject.onTertiaryTapDown = value;
        break;
      case 'onTertiaryTapUp':
        externObject.onTertiaryTapUp = value;
        break;
      case 'onTertiaryTapCancel':
        externObject.onTertiaryTapCancel = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

