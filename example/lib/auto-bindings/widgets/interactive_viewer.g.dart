import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';


class InteractiveViewerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InteractiveViewer':
        return ({key, clipBehavior = Clip.hardEdge, alignPanAxis = false, boundaryMargin = EdgeInsets.zero, constrained = true, maxScale = 2.5, minScale = 0.8, onInteractionEnd, onInteractionStart, onInteractionUpdate, panEnabled = true, scaleEnabled = true, transformationController, child}) => InteractiveViewerObjectBinding(InteractiveViewer(key : key, clipBehavior : clipBehavior, alignPanAxis : alignPanAxis, boundaryMargin : boundaryMargin, constrained : constrained, maxScale : maxScale, minScale : minScale, onInteractionEnd : onInteractionEnd, onInteractionStart : onInteractionStart, onInteractionUpdate : onInteractionUpdate, panEnabled : panEnabled, scaleEnabled : scaleEnabled, transformationController : transformationController, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InteractiveViewerObjectBinding extends HT_ExternObject<InteractiveViewer> {
  InteractiveViewerObjectBinding(InteractiveViewer value) : super(value);

  @override
  final typeid = HT_TypeId('InteractiveViewer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'alignPanAxis':
        return externObject.alignPanAxis;
      case 'boundaryMargin':
        return externObject.boundaryMargin;
      case 'child':
        return externObject.child;
      case 'constrained':
        return externObject.constrained;
      case 'panEnabled':
        return externObject.panEnabled;
      case 'scaleEnabled':
        return externObject.scaleEnabled;
      case 'maxScale':
        return externObject.maxScale;
      case 'minScale':
        return externObject.minScale;
      case 'onInteractionEnd':
        return externObject.onInteractionEnd;
      case 'onInteractionStart':
        return externObject.onInteractionStart;
      case 'onInteractionUpdate':
        return externObject.onInteractionUpdate;
      case 'transformationController':
        return externObject.transformationController;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TransformationControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TransformationController':
        return ([value]) => TransformationControllerObjectBinding(TransformationController(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TransformationControllerObjectBinding extends HT_ExternObject<TransformationController> {
  TransformationControllerObjectBinding(TransformationController value) : super(value);

  @override
  final typeid = HT_TypeId('TransformationController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'toScene':
        return externObject.toScene;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

