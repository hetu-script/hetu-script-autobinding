import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class TextSelectionHandleTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'left':
        return TextSelectionHandleType.left;
      case 'right':
        return TextSelectionHandleType.right;
      case 'collapsed':
        return TextSelectionHandleType.collapsed;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class ClipboardStatusClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'pasteable':
        return ClipboardStatus.pasteable;
      case 'unknown':
        return ClipboardStatus.unknown;
      case 'notPasteable':
        return ClipboardStatus.notPasteable;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ToolbarItemsParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ToolbarItemsParentData':
        return () => ToolbarItemsParentDataObjectBinding(ToolbarItemsParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ToolbarItemsParentDataObjectBinding extends HT_ExternObject<ToolbarItemsParentData> {
  ToolbarItemsParentDataObjectBinding(ToolbarItemsParentData value) : super(value);

  @override
  final typeid = HT_TypeId('ToolbarItemsParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'shouldPaint':
        return externObject.shouldPaint;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'shouldPaint':
        externObject.shouldPaint = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionOverlayClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelectionOverlay':
        return ({value, context, debugRequiredFor, toolbarLayerLink, startHandleLayerLink, endHandleLayerLink, renderObject, selectionControls, handlesVisible = false, selectionDelegate, dragStartBehavior = DragStartBehavior.start, onSelectionHandleTapped, clipboardStatus}) => TextSelectionOverlayObjectBinding(TextSelectionOverlay(value : value, context : context, debugRequiredFor : debugRequiredFor, toolbarLayerLink : toolbarLayerLink, startHandleLayerLink : startHandleLayerLink, endHandleLayerLink : endHandleLayerLink, renderObject : renderObject, selectionControls : selectionControls, handlesVisible : handlesVisible, selectionDelegate : selectionDelegate, dragStartBehavior : dragStartBehavior, onSelectionHandleTapped : onSelectionHandleTapped, clipboardStatus : clipboardStatus));
      case 'TextSelectionOverlay.fadeDuration':
        return TextSelectionOverlay.fadeDuration;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionOverlayObjectBinding extends HT_ExternObject<TextSelectionOverlay> {
  TextSelectionOverlayObjectBinding(TextSelectionOverlay value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelectionOverlay');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'context':
        return externObject.context;
      case 'debugRequiredFor':
        return externObject.debugRequiredFor;
      case 'toolbarLayerLink':
        return externObject.toolbarLayerLink;
      case 'startHandleLayerLink':
        return externObject.startHandleLayerLink;
      case 'endHandleLayerLink':
        return externObject.endHandleLayerLink;
      case 'renderObject':
        return externObject.renderObject;
      case 'selectionControls':
        return externObject.selectionControls;
      case 'selectionDelegate':
        return externObject.selectionDelegate;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'onSelectionHandleTapped':
        return externObject.onSelectionHandleTapped;
      case 'clipboardStatus':
        return externObject.clipboardStatus;
      case 'value':
        return externObject.value;
      case 'handlesVisible':
        return externObject.handlesVisible;
      case 'handlesAreVisible':
        return externObject.handlesAreVisible;
      case 'toolbarIsVisible':
        return externObject.toolbarIsVisible;
      case 'showHandles':
        return externObject.showHandles;
      case 'hideHandles':
        return externObject.hideHandles;
      case 'showToolbar':
        return externObject.showToolbar;
      case 'update':
        return externObject.update;
      case 'updateForScroll':
        return externObject.updateForScroll;
      case 'hide':
        return externObject.hide;
      case 'hideToolbar':
        return externObject.hideToolbar;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'handlesVisible':
        externObject.handlesVisible = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionGestureDetectorBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelectionGestureDetectorBuilder':
        return ({delegate}) => TextSelectionGestureDetectorBuilderObjectBinding(TextSelectionGestureDetectorBuilder(delegate : delegate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionGestureDetectorBuilderObjectBinding extends HT_ExternObject<TextSelectionGestureDetectorBuilder> {
  TextSelectionGestureDetectorBuilderObjectBinding(TextSelectionGestureDetectorBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelectionGestureDetectorBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'delegate':
        return externObject.delegate;
      case 'shouldShowSelectionToolbar':
        return externObject.shouldShowSelectionToolbar;
      case 'editableText':
        return externObject.editableText;
      case 'renderEditable':
        return externObject.renderEditable;
      case 'onTapDown':
        return externObject.onTapDown;
      case 'onForcePressStart':
        return externObject.onForcePressStart;
      case 'onForcePressEnd':
        return externObject.onForcePressEnd;
      case 'onSingleTapUp':
        return externObject.onSingleTapUp;
      case 'onSingleTapCancel':
        return externObject.onSingleTapCancel;
      case 'onSingleLongTapStart':
        return externObject.onSingleLongTapStart;
      case 'onSingleLongTapMoveUpdate':
        return externObject.onSingleLongTapMoveUpdate;
      case 'onSingleLongTapEnd':
        return externObject.onSingleLongTapEnd;
      case 'onSecondaryTap':
        return externObject.onSecondaryTap;
      case 'onSecondaryTapDown':
        return externObject.onSecondaryTapDown;
      case 'onDoubleTapDown':
        return externObject.onDoubleTapDown;
      case 'onDragSelectionStart':
        return externObject.onDragSelectionStart;
      case 'onDragSelectionUpdate':
        return externObject.onDragSelectionUpdate;
      case 'onDragSelectionEnd':
        return externObject.onDragSelectionEnd;
      case 'buildGestureDetector':
        return externObject.buildGestureDetector;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextSelectionGestureDetectorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelectionGestureDetector':
        return ({key, onTapDown, onForcePressStart, onForcePressEnd, onSecondaryTap, onSecondaryTapDown, onSingleTapUp, onSingleTapCancel, onSingleLongTapStart, onSingleLongTapMoveUpdate, onSingleLongTapEnd, onDoubleTapDown, onDragSelectionStart, onDragSelectionUpdate, onDragSelectionEnd, behavior, child}) => TextSelectionGestureDetectorObjectBinding(TextSelectionGestureDetector(key : key, onTapDown : onTapDown, onForcePressStart : onForcePressStart, onForcePressEnd : onForcePressEnd, onSecondaryTap : onSecondaryTap, onSecondaryTapDown : onSecondaryTapDown, onSingleTapUp : onSingleTapUp, onSingleTapCancel : onSingleTapCancel, onSingleLongTapStart : onSingleLongTapStart, onSingleLongTapMoveUpdate : onSingleLongTapMoveUpdate, onSingleLongTapEnd : onSingleLongTapEnd, onDoubleTapDown : onDoubleTapDown, onDragSelectionStart : onDragSelectionStart, onDragSelectionUpdate : onDragSelectionUpdate, onDragSelectionEnd : onDragSelectionEnd, behavior : behavior, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionGestureDetectorObjectBinding extends HT_ExternObject<TextSelectionGestureDetector> {
  TextSelectionGestureDetectorObjectBinding(TextSelectionGestureDetector value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelectionGestureDetector');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onTapDown':
        return externObject.onTapDown;
      case 'onForcePressStart':
        return externObject.onForcePressStart;
      case 'onForcePressEnd':
        return externObject.onForcePressEnd;
      case 'onSecondaryTap':
        return externObject.onSecondaryTap;
      case 'onSecondaryTapDown':
        return externObject.onSecondaryTapDown;
      case 'onSingleTapUp':
        return externObject.onSingleTapUp;
      case 'onSingleTapCancel':
        return externObject.onSingleTapCancel;
      case 'onSingleLongTapStart':
        return externObject.onSingleLongTapStart;
      case 'onSingleLongTapMoveUpdate':
        return externObject.onSingleLongTapMoveUpdate;
      case 'onSingleLongTapEnd':
        return externObject.onSingleLongTapEnd;
      case 'onDoubleTapDown':
        return externObject.onDoubleTapDown;
      case 'onDragSelectionStart':
        return externObject.onDragSelectionStart;
      case 'onDragSelectionUpdate':
        return externObject.onDragSelectionUpdate;
      case 'onDragSelectionEnd':
        return externObject.onDragSelectionEnd;
      case 'behavior':
        return externObject.behavior;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ClipboardStatusNotifierClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClipboardStatusNotifier':
        return ({value = ClipboardStatus.unknown}) => ClipboardStatusNotifierObjectBinding(ClipboardStatusNotifier(value : value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipboardStatusNotifierObjectBinding extends HT_ExternObject<ClipboardStatusNotifier> {
  ClipboardStatusNotifierObjectBinding(ClipboardStatusNotifier value) : super(value);

  @override
  final typeid = HT_TypeId('ClipboardStatusNotifier');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'disposed':
        return externObject.disposed;
      case 'update':
        return externObject.update;
      case 'addListener':
        return externObject.addListener;
      case 'removeListener':
        return externObject.removeListener;
      case 'didChangeAppLifecycleState':
        return externObject.didChangeAppLifecycleState;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

