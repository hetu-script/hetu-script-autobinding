import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
const _snackBarDisplayDuration = Duration(milliseconds: 4000);

class SnackBarClosedReasonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'action':
        return SnackBarClosedReason.action;
      case 'dismiss':
        return SnackBarClosedReason.dismiss;
      case 'swipe':
        return SnackBarClosedReason.swipe;
      case 'hide':
        return SnackBarClosedReason.hide;
      case 'remove':
        return SnackBarClosedReason.remove;
      case 'timeout':
        return SnackBarClosedReason.timeout;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SnackBarActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SnackBarAction':
        return ({key, textColor, disabledTextColor, label, onPressed}) => SnackBarActionObjectBinding(SnackBarAction(key : key, textColor : textColor, disabledTextColor : disabledTextColor, label : label, onPressed : onPressed));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SnackBarActionObjectBinding extends HT_ExternObject<SnackBarAction> {
  SnackBarActionObjectBinding(SnackBarAction value) : super(value);

  @override
  final typeid = HT_TypeId('SnackBarAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textColor':
        return externObject.textColor;
      case 'disabledTextColor':
        return externObject.disabledTextColor;
      case 'label':
        return externObject.label;
      case 'onPressed':
        return externObject.onPressed;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SnackBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SnackBar':
        return ({key, content, backgroundColor, elevation, margin, padding, width, shape, behavior, action, duration = _snackBarDisplayDuration, animation, onVisible}) => SnackBarObjectBinding(SnackBar(key : key, content : content, backgroundColor : backgroundColor, elevation : elevation, margin : margin, padding : padding, width : width, shape : shape, behavior : behavior, action : action, duration : duration, animation : animation, onVisible : onVisible));
      case 'createAnimationController':
        return ({vsync}) => SnackBar.createAnimationController(vsync : vsync);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SnackBarObjectBinding extends HT_ExternObject<SnackBar> {
  SnackBarObjectBinding(SnackBar value) : super(value);

  @override
  final typeid = HT_TypeId('SnackBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'content':
        return externObject.content;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'elevation':
        return externObject.elevation;
      case 'margin':
        return externObject.margin;
      case 'padding':
        return externObject.padding;
      case 'width':
        return externObject.width;
      case 'shape':
        return externObject.shape;
      case 'behavior':
        return externObject.behavior;
      case 'action':
        return externObject.action;
      case 'duration':
        return externObject.duration;
      case 'animation':
        return externObject.animation;
      case 'onVisible':
        return externObject.onVisible;
      case 'withAnimation':
        return externObject.withAnimation;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

