import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';


class GestureRecognizerFactoryWithHandlersClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GestureRecognizerFactoryWithHandlers':
        return (_constructor, _initializer) => GestureRecognizerFactoryWithHandlersObjectBinding(GestureRecognizerFactoryWithHandlers<GestureRecognizer>(_constructor, _initializer));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GestureRecognizerFactoryWithHandlersObjectBinding extends HT_ExternObject<GestureRecognizerFactoryWithHandlers> {
  GestureRecognizerFactoryWithHandlersObjectBinding(GestureRecognizerFactoryWithHandlers value) : super(value);

  @override
  final typeid = HT_TypeId('GestureRecognizerFactoryWithHandlers');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'constructor':
        return externObject.constructor;
      case 'initializer':
        return externObject.initializer;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class GestureDetectorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GestureDetector':
        return ({key, child, onTapDown, onTapUp, onTap, onTapCancel, onSecondaryTap, onSecondaryTapDown, onSecondaryTapUp, onSecondaryTapCancel, onTertiaryTapDown, onTertiaryTapUp, onTertiaryTapCancel, onDoubleTapDown, onDoubleTap, onDoubleTapCancel, onLongPress, onLongPressStart, onLongPressMoveUpdate, onLongPressUp, onLongPressEnd, onSecondaryLongPress, onSecondaryLongPressStart, onSecondaryLongPressMoveUpdate, onSecondaryLongPressUp, onSecondaryLongPressEnd, onVerticalDragDown, onVerticalDragStart, onVerticalDragUpdate, onVerticalDragEnd, onVerticalDragCancel, onHorizontalDragDown, onHorizontalDragStart, onHorizontalDragUpdate, onHorizontalDragEnd, onHorizontalDragCancel, onForcePressStart, onForcePressPeak, onForcePressUpdate, onForcePressEnd, onPanDown, onPanStart, onPanUpdate, onPanEnd, onPanCancel, onScaleStart, onScaleUpdate, onScaleEnd, behavior, excludeFromSemantics = false, dragStartBehavior = DragStartBehavior.start}) => GestureDetectorObjectBinding(GestureDetector(key : key, child : child, onTapDown : onTapDown, onTapUp : onTapUp, onTap : onTap, onTapCancel : onTapCancel, onSecondaryTap : onSecondaryTap, onSecondaryTapDown : onSecondaryTapDown, onSecondaryTapUp : onSecondaryTapUp, onSecondaryTapCancel : onSecondaryTapCancel, onTertiaryTapDown : onTertiaryTapDown, onTertiaryTapUp : onTertiaryTapUp, onTertiaryTapCancel : onTertiaryTapCancel, onDoubleTapDown : onDoubleTapDown, onDoubleTap : onDoubleTap, onDoubleTapCancel : onDoubleTapCancel, onLongPress : onLongPress, onLongPressStart : onLongPressStart, onLongPressMoveUpdate : onLongPressMoveUpdate, onLongPressUp : onLongPressUp, onLongPressEnd : onLongPressEnd, onSecondaryLongPress : onSecondaryLongPress, onSecondaryLongPressStart : onSecondaryLongPressStart, onSecondaryLongPressMoveUpdate : onSecondaryLongPressMoveUpdate, onSecondaryLongPressUp : onSecondaryLongPressUp, onSecondaryLongPressEnd : onSecondaryLongPressEnd, onVerticalDragDown : onVerticalDragDown, onVerticalDragStart : onVerticalDragStart, onVerticalDragUpdate : onVerticalDragUpdate, onVerticalDragEnd : onVerticalDragEnd, onVerticalDragCancel : onVerticalDragCancel, onHorizontalDragDown : onHorizontalDragDown, onHorizontalDragStart : onHorizontalDragStart, onHorizontalDragUpdate : onHorizontalDragUpdate, onHorizontalDragEnd : onHorizontalDragEnd, onHorizontalDragCancel : onHorizontalDragCancel, onForcePressStart : onForcePressStart, onForcePressPeak : onForcePressPeak, onForcePressUpdate : onForcePressUpdate, onForcePressEnd : onForcePressEnd, onPanDown : onPanDown, onPanStart : onPanStart, onPanUpdate : onPanUpdate, onPanEnd : onPanEnd, onPanCancel : onPanCancel, onScaleStart : onScaleStart, onScaleUpdate : onScaleUpdate, onScaleEnd : onScaleEnd, behavior : behavior, excludeFromSemantics : excludeFromSemantics, dragStartBehavior : dragStartBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GestureDetectorObjectBinding extends HT_ExternObject<GestureDetector> {
  GestureDetectorObjectBinding(GestureDetector value) : super(value);

  @override
  final typeid = HT_TypeId('GestureDetector');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
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
      case 'onDoubleTapDown':
        return externObject.onDoubleTapDown;
      case 'onDoubleTap':
        return externObject.onDoubleTap;
      case 'onDoubleTapCancel':
        return externObject.onDoubleTapCancel;
      case 'onLongPress':
        return externObject.onLongPress;
      case 'onLongPressStart':
        return externObject.onLongPressStart;
      case 'onLongPressMoveUpdate':
        return externObject.onLongPressMoveUpdate;
      case 'onLongPressUp':
        return externObject.onLongPressUp;
      case 'onLongPressEnd':
        return externObject.onLongPressEnd;
      case 'onSecondaryLongPress':
        return externObject.onSecondaryLongPress;
      case 'onSecondaryLongPressStart':
        return externObject.onSecondaryLongPressStart;
      case 'onSecondaryLongPressMoveUpdate':
        return externObject.onSecondaryLongPressMoveUpdate;
      case 'onSecondaryLongPressUp':
        return externObject.onSecondaryLongPressUp;
      case 'onSecondaryLongPressEnd':
        return externObject.onSecondaryLongPressEnd;
      case 'onVerticalDragDown':
        return externObject.onVerticalDragDown;
      case 'onVerticalDragStart':
        return externObject.onVerticalDragStart;
      case 'onVerticalDragUpdate':
        return externObject.onVerticalDragUpdate;
      case 'onVerticalDragEnd':
        return externObject.onVerticalDragEnd;
      case 'onVerticalDragCancel':
        return externObject.onVerticalDragCancel;
      case 'onHorizontalDragDown':
        return externObject.onHorizontalDragDown;
      case 'onHorizontalDragStart':
        return externObject.onHorizontalDragStart;
      case 'onHorizontalDragUpdate':
        return externObject.onHorizontalDragUpdate;
      case 'onHorizontalDragEnd':
        return externObject.onHorizontalDragEnd;
      case 'onHorizontalDragCancel':
        return externObject.onHorizontalDragCancel;
      case 'onPanDown':
        return externObject.onPanDown;
      case 'onPanStart':
        return externObject.onPanStart;
      case 'onPanUpdate':
        return externObject.onPanUpdate;
      case 'onPanEnd':
        return externObject.onPanEnd;
      case 'onPanCancel':
        return externObject.onPanCancel;
      case 'onScaleStart':
        return externObject.onScaleStart;
      case 'onScaleUpdate':
        return externObject.onScaleUpdate;
      case 'onScaleEnd':
        return externObject.onScaleEnd;
      case 'onForcePressStart':
        return externObject.onForcePressStart;
      case 'onForcePressPeak':
        return externObject.onForcePressPeak;
      case 'onForcePressUpdate':
        return externObject.onForcePressUpdate;
      case 'onForcePressEnd':
        return externObject.onForcePressEnd;
      case 'behavior':
        return externObject.behavior;
      case 'excludeFromSemantics':
        return externObject.excludeFromSemantics;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RawGestureDetectorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawGestureDetector':
        return ({key, child, gestures = const <Type, GestureRecognizerFactory>{}, behavior, excludeFromSemantics = false, semantics}) => RawGestureDetectorObjectBinding(RawGestureDetector(key : key, child : child, gestures : gestures, behavior : behavior, excludeFromSemantics : excludeFromSemantics, semantics : semantics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawGestureDetectorObjectBinding extends HT_ExternObject<RawGestureDetector> {
  RawGestureDetectorObjectBinding(RawGestureDetector value) : super(value);

  @override
  final typeid = HT_TypeId('RawGestureDetector');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'gestures':
        return externObject.gestures;
      case 'behavior':
        return externObject.behavior;
      case 'excludeFromSemantics':
        return externObject.excludeFromSemantics;
      case 'semantics':
        return externObject.semantics;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RawGestureDetectorStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawGestureDetectorState':
        return () => RawGestureDetectorStateObjectBinding(RawGestureDetectorState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawGestureDetectorStateObjectBinding extends HT_ExternObject<RawGestureDetectorState> {
  RawGestureDetectorStateObjectBinding(RawGestureDetectorState value) : super(value);

  @override
  final typeid = HT_TypeId('RawGestureDetectorState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initState':
        return externObject.initState;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'replaceGestureRecognizers':
        return externObject.replaceGestureRecognizers;
      case 'replaceSemanticsActions':
        return externObject.replaceSemanticsActions;
      case 'dispose':
        return externObject.dispose;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

