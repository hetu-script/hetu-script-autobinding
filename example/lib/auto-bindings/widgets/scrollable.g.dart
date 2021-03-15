import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class ScrollIncrementTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'line':
        return ScrollIncrementType.line;
      case 'page':
        return ScrollIncrementType.page;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollableClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Scrollable':
        return ({key, axisDirection = AxisDirection.down, controller, physics, viewportBuilder, incrementCalculator, excludeFromSemantics = false, semanticChildCount, dragStartBehavior = DragStartBehavior.start, restorationId}) => ScrollableObjectBinding(Scrollable(key : key, axisDirection : axisDirection, controller : controller, physics : physics, viewportBuilder : viewportBuilder, incrementCalculator : incrementCalculator, excludeFromSemantics : excludeFromSemantics, semanticChildCount : semanticChildCount, dragStartBehavior : dragStartBehavior, restorationId : restorationId));
      case 'of':
        return (context) => Scrollable.of(context);
      case 'recommendDeferredLoadingForContext':
        return (context) => Scrollable.recommendDeferredLoadingForContext(context);
      case 'ensureVisible':
        return (context, {alignment = 0.0, duration = Duration.zero, curve = Curves.ease, alignmentPolicy = ScrollPositionAlignmentPolicy.explicit}) => Scrollable.ensureVisible(context, alignment : alignment, duration : duration, curve : curve, alignmentPolicy : alignmentPolicy);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollableObjectBinding extends HT_ExternObject<Scrollable> {
  ScrollableObjectBinding(Scrollable value) : super(value);

  @override
  final typeid = HT_TypeId('Scrollable');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'axisDirection':
        return externObject.axisDirection;
      case 'controller':
        return externObject.controller;
      case 'physics':
        return externObject.physics;
      case 'viewportBuilder':
        return externObject.viewportBuilder;
      case 'incrementCalculator':
        return externObject.incrementCalculator;
      case 'excludeFromSemantics':
        return externObject.excludeFromSemantics;
      case 'semanticChildCount':
        return externObject.semanticChildCount;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'restorationId':
        return externObject.restorationId;
      case 'axis':
        return externObject.axis;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScrollableStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollableState':
        return () => ScrollableStateObjectBinding(ScrollableState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollableStateObjectBinding extends HT_ExternObject<ScrollableState> {
  ScrollableStateObjectBinding(ScrollableState value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollableState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'position':
        return externObject.position;
      case 'axisDirection':
        return externObject.axisDirection;
      case 'vsync':
        return externObject.vsync;
      case 'notificationContext':
        return externObject.notificationContext;
      case 'storageContext':
        return externObject.storageContext;
      case 'restorationId':
        return externObject.restorationId;
      case 'restoreState':
        return externObject.restoreState;
      case 'saveOffset':
        return externObject.saveOffset;
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'dispose':
        return externObject.dispose;
      case 'setSemanticsActions':
        return externObject.setSemanticsActions;
      case 'setCanDrag':
        return externObject.setCanDrag;
      case 'setIgnorePointer':
        return externObject.setIgnorePointer;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScrollIncrementDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollIncrementDetails':
        return ({type, metrics}) => ScrollIncrementDetailsObjectBinding(ScrollIncrementDetails(type : type, metrics : metrics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollIncrementDetailsObjectBinding extends HT_ExternObject<ScrollIncrementDetails> {
  ScrollIncrementDetailsObjectBinding(ScrollIncrementDetails value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollIncrementDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'type':
        return externObject.type;
      case 'metrics':
        return externObject.metrics;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScrollIntentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollIntent':
        return ({direction, type = ScrollIncrementType.line}) => ScrollIntentObjectBinding(ScrollIntent(direction : direction, type : type));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollIntentObjectBinding extends HT_ExternObject<ScrollIntent> {
  ScrollIntentObjectBinding(ScrollIntent value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollIntent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'direction':
        return externObject.direction;
      case 'type':
        return externObject.type;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScrollActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollAction':
        return () => ScrollActionObjectBinding(ScrollAction());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollActionObjectBinding extends HT_ExternObject<ScrollAction> {
  ScrollActionObjectBinding(ScrollAction value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isEnabled':
        return externObject.isEnabled;
      case 'invoke':
        return externObject.invoke;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

