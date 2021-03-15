import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class _DefaultHeroTag {const _DefaultHeroTag(); @override String toString() => '<default FloatingActionButton tag>';}


class FloatingActionButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FloatingActionButton':
        return ({key, child, tooltip, foregroundColor, backgroundColor, focusColor, hoverColor, splashColor, heroTag = const _DefaultHeroTag(), elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, onPressed, mouseCursor, mini = false, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, isExtended = false}) => FloatingActionButtonObjectBinding(FloatingActionButton(key : key, child : child, tooltip : tooltip, foregroundColor : foregroundColor, backgroundColor : backgroundColor, focusColor : focusColor, hoverColor : hoverColor, splashColor : splashColor, heroTag : heroTag, elevation : elevation, focusElevation : focusElevation, hoverElevation : hoverElevation, highlightElevation : highlightElevation, disabledElevation : disabledElevation, onPressed : onPressed, mouseCursor : mouseCursor, mini : mini, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, materialTapTargetSize : materialTapTargetSize, isExtended : isExtended));
      case 'FloatingActionButton.extended':
        return ({key, tooltip, foregroundColor, backgroundColor, focusColor, hoverColor, heroTag = const _DefaultHeroTag(), elevation, focusElevation, hoverElevation, splashColor, highlightElevation, disabledElevation, onPressed, mouseCursor = SystemMouseCursors.click, shape, isExtended = true, materialTapTargetSize, clipBehavior = Clip.none, focusNode, autofocus = false, icon, label}) => FloatingActionButtonObjectBinding(FloatingActionButton.extended(key : key, tooltip : tooltip, foregroundColor : foregroundColor, backgroundColor : backgroundColor, focusColor : focusColor, hoverColor : hoverColor, heroTag : heroTag, elevation : elevation, focusElevation : focusElevation, hoverElevation : hoverElevation, splashColor : splashColor, highlightElevation : highlightElevation, disabledElevation : disabledElevation, onPressed : onPressed, mouseCursor : mouseCursor, shape : shape, isExtended : isExtended, materialTapTargetSize : materialTapTargetSize, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, icon : icon, label : label));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FloatingActionButtonObjectBinding extends HT_ExternObject<FloatingActionButton> {
  FloatingActionButtonObjectBinding(FloatingActionButton value) : super(value);

  @override
  final typeid = HT_TypeId('FloatingActionButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'tooltip':
        return externObject.tooltip;
      case 'foregroundColor':
        return externObject.foregroundColor;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'splashColor':
        return externObject.splashColor;
      case 'heroTag':
        return externObject.heroTag;
      case 'onPressed':
        return externObject.onPressed;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'elevation':
        return externObject.elevation;
      case 'focusElevation':
        return externObject.focusElevation;
      case 'hoverElevation':
        return externObject.hoverElevation;
      case 'highlightElevation':
        return externObject.highlightElevation;
      case 'disabledElevation':
        return externObject.disabledElevation;
      case 'mini':
        return externObject.mini;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'isExtended':
        return externObject.isExtended;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

