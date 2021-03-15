import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class DragAnchorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return DragAnchor.child;
      case 'pointer':
        return DragAnchor.pointer;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DraggableClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Draggable':
        return ({key, child, feedback, data, axis, childWhenDragging, feedbackOffset = Offset.zero, dragAnchor = DragAnchor.child, affinity, maxSimultaneousDrags, onDragStarted, onDragUpdate, onDraggableCanceled, onDragEnd, onDragCompleted, ignoringFeedbackSemantics = true, rootOverlay = false}) => DraggableObjectBinding(Draggable<Object>(key : key, child : child, feedback : feedback, data : data, axis : axis, childWhenDragging : childWhenDragging, feedbackOffset : feedbackOffset, dragAnchor : dragAnchor, affinity : affinity, maxSimultaneousDrags : maxSimultaneousDrags, onDragStarted : onDragStarted, onDragUpdate : onDragUpdate, onDraggableCanceled : onDraggableCanceled, onDragEnd : onDragEnd, onDragCompleted : onDragCompleted, ignoringFeedbackSemantics : ignoringFeedbackSemantics, rootOverlay : rootOverlay));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DraggableObjectBinding extends HT_ExternObject<Draggable> {
  DraggableObjectBinding(Draggable value) : super(value);

  @override
  final typeid = HT_TypeId('Draggable');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'axis':
        return externObject.axis;
      case 'child':
        return externObject.child;
      case 'childWhenDragging':
        return externObject.childWhenDragging;
      case 'feedback':
        return externObject.feedback;
      case 'feedbackOffset':
        return externObject.feedbackOffset;
      case 'dragAnchor':
        return externObject.dragAnchor;
      case 'ignoringFeedbackSemantics':
        return externObject.ignoringFeedbackSemantics;
      case 'affinity':
        return externObject.affinity;
      case 'maxSimultaneousDrags':
        return externObject.maxSimultaneousDrags;
      case 'onDragStarted':
        return externObject.onDragStarted;
      case 'onDragUpdate':
        return externObject.onDragUpdate;
      case 'onDraggableCanceled':
        return externObject.onDraggableCanceled;
      case 'onDragCompleted':
        return externObject.onDragCompleted;
      case 'onDragEnd':
        return externObject.onDragEnd;
      case 'rootOverlay':
        return externObject.rootOverlay;
      case 'createRecognizer':
        return externObject.createRecognizer;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LongPressDraggableClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LongPressDraggable':
        return ({key, child, feedback, data, axis, childWhenDragging, feedbackOffset = Offset.zero, dragAnchor = DragAnchor.child, maxSimultaneousDrags, onDragStarted, onDragUpdate, onDraggableCanceled, onDragEnd, onDragCompleted, hapticFeedbackOnStart = true, ignoringFeedbackSemantics = true}) => LongPressDraggableObjectBinding(LongPressDraggable<Object>(key : key, child : child, feedback : feedback, data : data, axis : axis, childWhenDragging : childWhenDragging, feedbackOffset : feedbackOffset, dragAnchor : dragAnchor, maxSimultaneousDrags : maxSimultaneousDrags, onDragStarted : onDragStarted, onDragUpdate : onDragUpdate, onDraggableCanceled : onDraggableCanceled, onDragEnd : onDragEnd, onDragCompleted : onDragCompleted, hapticFeedbackOnStart : hapticFeedbackOnStart, ignoringFeedbackSemantics : ignoringFeedbackSemantics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LongPressDraggableObjectBinding extends HT_ExternObject<LongPressDraggable> {
  LongPressDraggableObjectBinding(LongPressDraggable value) : super(value);

  @override
  final typeid = HT_TypeId('LongPressDraggable');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hapticFeedbackOnStart':
        return externObject.hapticFeedbackOnStart;
      case 'createRecognizer':
        return externObject.createRecognizer;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DraggableDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DraggableDetails':
        return ({wasAccepted = false, velocity, offset}) => DraggableDetailsObjectBinding(DraggableDetails(wasAccepted : wasAccepted, velocity : velocity, offset : offset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DraggableDetailsObjectBinding extends HT_ExternObject<DraggableDetails> {
  DraggableDetailsObjectBinding(DraggableDetails value) : super(value);

  @override
  final typeid = HT_TypeId('DraggableDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'wasAccepted':
        return externObject.wasAccepted;
      case 'velocity':
        return externObject.velocity;
      case 'offset':
        return externObject.offset;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DragTargetDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DragTargetDetails':
        return ({data, offset}) => DragTargetDetailsObjectBinding(DragTargetDetails(data : data, offset : offset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DragTargetDetailsObjectBinding extends HT_ExternObject<DragTargetDetails> {
  DragTargetDetailsObjectBinding(DragTargetDetails value) : super(value);

  @override
  final typeid = HT_TypeId('DragTargetDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'offset':
        return externObject.offset;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DragTargetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DragTarget':
        return ({key, builder, onWillAccept, onAccept, onAcceptWithDetails, onLeave, onMove}) => DragTargetObjectBinding(DragTarget<Object>(key : key, builder : builder, onWillAccept : onWillAccept, onAccept : onAccept, onAcceptWithDetails : onAcceptWithDetails, onLeave : onLeave, onMove : onMove));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DragTargetObjectBinding extends HT_ExternObject<DragTarget> {
  DragTargetObjectBinding(DragTarget value) : super(value);

  @override
  final typeid = HT_TypeId('DragTarget');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'onWillAccept':
        return externObject.onWillAccept;
      case 'onAccept':
        return externObject.onAccept;
      case 'onAcceptWithDetails':
        return externObject.onAcceptWithDetails;
      case 'onLeave':
        return externObject.onLeave;
      case 'onMove':
        return externObject.onMove;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

