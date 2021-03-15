import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:developer';
import 'dart:ui'as ui;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/semantics.dart';


class ParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ParentData':
        return () => ParentDataObjectBinding(ParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ParentDataObjectBinding extends HT_ExternObject<ParentData> {
  ParentDataObjectBinding(ParentData value) : super(value);

  @override
  final typeid = HT_TypeId('ParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'detach':
        return externObject.detach;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PaintingContextClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PaintingContext':
        return (_containerLayer, estimatedBounds) => PaintingContextObjectBinding(PaintingContext(_containerLayer, estimatedBounds));
      case 'repaintCompositedChild':
        return (child, {debugAlsoPaintedParent = false}) => PaintingContext.repaintCompositedChild(child, debugAlsoPaintedParent : debugAlsoPaintedParent);
      case 'debugInstrumentRepaintCompositedChild':
        return (child, {debugAlsoPaintedParent = false, customContext}) => PaintingContext.debugInstrumentRepaintCompositedChild(child, debugAlsoPaintedParent : debugAlsoPaintedParent, customContext : customContext);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PaintingContextObjectBinding extends HT_ExternObject<PaintingContext> {
  PaintingContextObjectBinding(PaintingContext value) : super(value);

  @override
  final typeid = HT_TypeId('PaintingContext');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'estimatedBounds':
        return externObject.estimatedBounds;
      case 'canvas':
        return externObject.canvas;
      case 'paintChild':
        return externObject.paintChild;
      case 'appendLayer':
        return externObject.appendLayer;
      case 'stopRecordingIfNeeded':
        return externObject.stopRecordingIfNeeded;
      case 'setIsComplexHint':
        return externObject.setIsComplexHint;
      case 'setWillChangeHint':
        return externObject.setWillChangeHint;
      case 'addLayer':
        return externObject.addLayer;
      case 'pushLayer':
        return externObject.pushLayer;
      case 'createChildContext':
        return externObject.createChildContext;
      case 'pushClipRect':
        return externObject.pushClipRect;
      case 'pushClipRRect':
        return externObject.pushClipRRect;
      case 'pushClipPath':
        return externObject.pushClipPath;
      case 'pushColorFilter':
        return externObject.pushColorFilter;
      case 'pushTransform':
        return externObject.pushTransform;
      case 'pushOpacity':
        return externObject.pushOpacity;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PipelineOwnerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PipelineOwner':
        return ({onNeedVisualUpdate, onSemanticsOwnerCreated, onSemanticsOwnerDisposed}) => PipelineOwnerObjectBinding(PipelineOwner(onNeedVisualUpdate : onNeedVisualUpdate, onSemanticsOwnerCreated : onSemanticsOwnerCreated, onSemanticsOwnerDisposed : onSemanticsOwnerDisposed));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PipelineOwnerObjectBinding extends HT_ExternObject<PipelineOwner> {
  PipelineOwnerObjectBinding(PipelineOwner value) : super(value);

  @override
  final typeid = HT_TypeId('PipelineOwner');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onNeedVisualUpdate':
        return externObject.onNeedVisualUpdate;
      case 'onSemanticsOwnerCreated':
        return externObject.onSemanticsOwnerCreated;
      case 'onSemanticsOwnerDisposed':
        return externObject.onSemanticsOwnerDisposed;
      case 'rootNode':
        return externObject.rootNode;
      case 'debugDoingLayout':
        return externObject.debugDoingLayout;
      case 'debugDoingPaint':
        return externObject.debugDoingPaint;
      case 'semanticsOwner':
        return externObject.semanticsOwner;
      case 'debugOutstandingSemanticsHandles':
        return externObject.debugOutstandingSemanticsHandles;
      case 'requestVisualUpdate':
        return externObject.requestVisualUpdate;
      case 'flushLayout':
        return externObject.flushLayout;
      case 'flushCompositingBits':
        return externObject.flushCompositingBits;
      case 'flushPaint':
        return externObject.flushPaint;
      case 'ensureSemantics':
        return externObject.ensureSemantics;
      case 'flushSemantics':
        return externObject.flushSemantics;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'rootNode':
        externObject.rootNode = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DiagnosticsDebugCreatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DiagnosticsDebugCreator':
        return (value) => DiagnosticsDebugCreatorObjectBinding(DiagnosticsDebugCreator(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DiagnosticsDebugCreatorObjectBinding extends HT_ExternObject<DiagnosticsDebugCreator> {
  DiagnosticsDebugCreatorObjectBinding(DiagnosticsDebugCreator value) : super(value);

  @override
  final typeid = HT_TypeId('DiagnosticsDebugCreator');


}

