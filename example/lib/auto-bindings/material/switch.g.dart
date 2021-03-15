import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class SwitchClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Switch':
        return ({key, value, onChanged, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, onActiveThumbImageError, inactiveThumbImage, onInactiveThumbImageError, thumbColor, trackColor, materialTapTargetSize, dragStartBehavior = DragStartBehavior.start, mouseCursor, focusColor, hoverColor, overlayColor, splashRadius, focusNode, autofocus = false}) => SwitchObjectBinding(Switch(key : key, value : value, onChanged : onChanged, activeColor : activeColor, activeTrackColor : activeTrackColor, inactiveThumbColor : inactiveThumbColor, inactiveTrackColor : inactiveTrackColor, activeThumbImage : activeThumbImage, onActiveThumbImageError : onActiveThumbImageError, inactiveThumbImage : inactiveThumbImage, onInactiveThumbImageError : onInactiveThumbImageError, thumbColor : thumbColor, trackColor : trackColor, materialTapTargetSize : materialTapTargetSize, dragStartBehavior : dragStartBehavior, mouseCursor : mouseCursor, focusColor : focusColor, hoverColor : hoverColor, overlayColor : overlayColor, splashRadius : splashRadius, focusNode : focusNode, autofocus : autofocus));
      case 'Switch.adaptive':
        return ({key, value, onChanged, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, onActiveThumbImageError, inactiveThumbImage, onInactiveThumbImageError, materialTapTargetSize, thumbColor, trackColor, dragStartBehavior = DragStartBehavior.start, mouseCursor, focusColor, hoverColor, overlayColor, splashRadius, focusNode, autofocus = false}) => SwitchObjectBinding(Switch.adaptive(key : key, value : value, onChanged : onChanged, activeColor : activeColor, activeTrackColor : activeTrackColor, inactiveThumbColor : inactiveThumbColor, inactiveTrackColor : inactiveTrackColor, activeThumbImage : activeThumbImage, onActiveThumbImageError : onActiveThumbImageError, inactiveThumbImage : inactiveThumbImage, onInactiveThumbImageError : onInactiveThumbImageError, materialTapTargetSize : materialTapTargetSize, thumbColor : thumbColor, trackColor : trackColor, dragStartBehavior : dragStartBehavior, mouseCursor : mouseCursor, focusColor : focusColor, hoverColor : hoverColor, overlayColor : overlayColor, splashRadius : splashRadius, focusNode : focusNode, autofocus : autofocus));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SwitchObjectBinding extends HT_ExternObject<Switch> {
  SwitchObjectBinding(Switch value) : super(value);

  @override
  final typeid = HT_TypeId('Switch');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'onChanged':
        return externObject.onChanged;
      case 'activeColor':
        return externObject.activeColor;
      case 'activeTrackColor':
        return externObject.activeTrackColor;
      case 'inactiveThumbColor':
        return externObject.inactiveThumbColor;
      case 'inactiveTrackColor':
        return externObject.inactiveTrackColor;
      case 'activeThumbImage':
        return externObject.activeThumbImage;
      case 'onActiveThumbImageError':
        return externObject.onActiveThumbImageError;
      case 'inactiveThumbImage':
        return externObject.inactiveThumbImage;
      case 'onInactiveThumbImageError':
        return externObject.onInactiveThumbImageError;
      case 'thumbColor':
        return externObject.thumbColor;
      case 'trackColor':
        return externObject.trackColor;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'overlayColor':
        return externObject.overlayColor;
      case 'splashRadius':
        return externObject.splashRadius;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

