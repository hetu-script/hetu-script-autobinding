import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
const _kScrollbarThickness = 6.0;
const _kMinThumbExtent = 18.0;
const _kScrollbarFadeDuration = Duration(milliseconds: 300);
const _kScrollbarTimeToFade = Duration(milliseconds: 600);


class ScrollbarPainterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollbarPainter':
        return ({color, fadeoutOpacityAnimation, trackColor = const Color(0x00000000), trackBorderColor = const Color(0x00000000), textDirection, thickness = _kScrollbarThickness, padding = EdgeInsets.zero, mainAxisMargin = 0.0, crossAxisMargin = 0.0, radius, minLength = _kMinThumbExtent, minOverscrollLength}) => ScrollbarPainterObjectBinding(ScrollbarPainter(color : color, fadeoutOpacityAnimation : fadeoutOpacityAnimation, trackColor : trackColor, trackBorderColor : trackBorderColor, textDirection : textDirection, thickness : thickness, padding : padding, mainAxisMargin : mainAxisMargin, crossAxisMargin : crossAxisMargin, radius : radius, minLength : minLength, minOverscrollLength : minOverscrollLength));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollbarPainterObjectBinding extends HT_ExternObject<ScrollbarPainter> {
  ScrollbarPainterObjectBinding(ScrollbarPainter value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollbarPainter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'fadeoutOpacityAnimation':
        return externObject.fadeoutOpacityAnimation;
      case 'color':
        return externObject.color;
      case 'trackColor':
        return externObject.trackColor;
      case 'trackBorderColor':
        return externObject.trackBorderColor;
      case 'textDirection':
        return externObject.textDirection;
      case 'thickness':
        return externObject.thickness;
      case 'mainAxisMargin':
        return externObject.mainAxisMargin;
      case 'crossAxisMargin':
        return externObject.crossAxisMargin;
      case 'radius':
        return externObject.radius;
      case 'padding':
        return externObject.padding;
      case 'minLength':
        return externObject.minLength;
      case 'minOverscrollLength':
        return externObject.minOverscrollLength;
      case 'semanticsBuilder':
        return externObject.semanticsBuilder;
      case 'update':
        return externObject.update;
      case 'updateThickness':
        return externObject.updateThickness;
      case 'dispose':
        return externObject.dispose;
      case 'getTrackToScroll':
        return externObject.getTrackToScroll;
      case 'paint':
        return externObject.paint;
      case 'hitTestInteractive':
        return externObject.hitTestInteractive;
      case 'hitTestOnlyThumbInteractive':
        return externObject.hitTestOnlyThumbInteractive;
      case 'hitTest':
        return externObject.hitTest;
      case 'shouldRepaint':
        return externObject.shouldRepaint;
      case 'shouldRebuildSemantics':
        return externObject.shouldRebuildSemantics;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'color':
        externObject.color = value;
        break;
      case 'trackColor':
        externObject.trackColor = value;
        break;
      case 'trackBorderColor':
        externObject.trackBorderColor = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'thickness':
        externObject.thickness = value;
        break;
      case 'mainAxisMargin':
        externObject.mainAxisMargin = value;
        break;
      case 'crossAxisMargin':
        externObject.crossAxisMargin = value;
        break;
      case 'radius':
        externObject.radius = value;
        break;
      case 'padding':
        externObject.padding = value;
        break;
      case 'minLength':
        externObject.minLength = value;
        break;
      case 'minOverscrollLength':
        externObject.minOverscrollLength = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawScrollbarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawScrollbar':
        return ({key, child, controller, isAlwaysShown, radius, thickness, thumbColor, fadeDuration = _kScrollbarFadeDuration, timeToFade = _kScrollbarTimeToFade, pressDuration = Duration.zero, notificationPredicate = defaultScrollNotificationPredicate}) => RawScrollbarObjectBinding(RawScrollbar(key : key, child : child, controller : controller, isAlwaysShown : isAlwaysShown, radius : radius, thickness : thickness, thumbColor : thumbColor, fadeDuration : fadeDuration, timeToFade : timeToFade, pressDuration : pressDuration, notificationPredicate : notificationPredicate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawScrollbarObjectBinding extends HT_ExternObject<RawScrollbar> {
  RawScrollbarObjectBinding(RawScrollbar value) : super(value);

  @override
  final typeid = HT_TypeId('RawScrollbar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'controller':
        return externObject.controller;
      case 'isAlwaysShown':
        return externObject.isAlwaysShown;
      case 'radius':
        return externObject.radius;
      case 'thickness':
        return externObject.thickness;
      case 'thumbColor':
        return externObject.thumbColor;
      case 'fadeDuration':
        return externObject.fadeDuration;
      case 'timeToFade':
        return externObject.timeToFade;
      case 'pressDuration':
        return externObject.pressDuration;
      case 'notificationPredicate':
        return externObject.notificationPredicate;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RawScrollbarStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawScrollbarState':
        return () => RawScrollbarStateObjectBinding(RawScrollbarState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawScrollbarStateObjectBinding extends HT_ExternObject<RawScrollbarState> {
  RawScrollbarStateObjectBinding(RawScrollbarState value) : super(value);

  @override
  final typeid = HT_TypeId('RawScrollbarState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scrollbarPainter':
        return externObject.scrollbarPainter;
      case 'showScrollbar':
        return externObject.showScrollbar;
      case 'initState':
        return externObject.initState;
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'updateScrollbarPainter':
        return externObject.updateScrollbarPainter;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'getScrollbarDirection':
        return externObject.getScrollbarDirection;
      case 'handleThumbPress':
        return externObject.handleThumbPress;
      case 'handleThumbPressStart':
        return externObject.handleThumbPressStart;
      case 'handleThumbPressUpdate':
        return externObject.handleThumbPressUpdate;
      case 'handleThumbPressEnd':
        return externObject.handleThumbPressEnd;
      case 'isPointerOverTrack':
        return externObject.isPointerOverTrack;
      case 'isPointerOverThumb':
        return externObject.isPointerOverThumb;
      case 'isPointerOverScrollbar':
        return externObject.isPointerOverScrollbar;
      case 'handleHover':
        return externObject.handleHover;
      case 'handleHoverExit':
        return externObject.handleHoverExit;
      case 'dispose':
        return externObject.dispose;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

