import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

class DismissDirectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'vertical':
        return DismissDirection.vertical;
      case 'horizontal':
        return DismissDirection.horizontal;
      case 'endToStart':
        return DismissDirection.endToStart;
      case 'startToEnd':
        return DismissDirection.startToEnd;
      case 'up':
        return DismissDirection.up;
      case 'down':
        return DismissDirection.down;
      case 'none':
        return DismissDirection.none;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DismissibleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Dismissible':
        return ({key, child, background, secondaryBackground, confirmDismiss, onResize, onDismissed, direction = DismissDirection.horizontal, resizeDuration = const Duration(milliseconds: 300), dismissThresholds = const <DismissDirection, double>{}, movementDuration = const Duration(milliseconds: 200), crossAxisEndOffset = 0.0, dragStartBehavior = DragStartBehavior.start, behavior = HitTestBehavior.opaque}) => DismissibleObjectBinding(Dismissible(key : key, child : child, background : background, secondaryBackground : secondaryBackground, confirmDismiss : confirmDismiss, onResize : onResize, onDismissed : onDismissed, direction : direction, resizeDuration : resizeDuration, dismissThresholds : dismissThresholds, movementDuration : movementDuration, crossAxisEndOffset : crossAxisEndOffset, dragStartBehavior : dragStartBehavior, behavior : behavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DismissibleObjectBinding extends HT_ExternObject<Dismissible> {
  DismissibleObjectBinding(Dismissible value) : super(value);

  @override
  final typeid = HT_TypeId('Dismissible');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'background':
        return externObject.background;
      case 'secondaryBackground':
        return externObject.secondaryBackground;
      case 'confirmDismiss':
        return externObject.confirmDismiss;
      case 'onResize':
        return externObject.onResize;
      case 'onDismissed':
        return externObject.onDismissed;
      case 'direction':
        return externObject.direction;
      case 'resizeDuration':
        return externObject.resizeDuration;
      case 'dismissThresholds':
        return externObject.dismissThresholds;
      case 'movementDuration':
        return externObject.movementDuration;
      case 'crossAxisEndOffset':
        return externObject.crossAxisEndOffset;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'behavior':
        return externObject.behavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

