import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';


class CupertinoSwitchClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoSwitch':
        return ({key, value, onChanged, activeColor, trackColor, dragStartBehavior = DragStartBehavior.start}) => CupertinoSwitchObjectBinding(CupertinoSwitch(key : key, value : value, onChanged : onChanged, activeColor : activeColor, trackColor : trackColor, dragStartBehavior : dragStartBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoSwitchObjectBinding extends HT_ExternObject<CupertinoSwitch> {
  CupertinoSwitchObjectBinding(CupertinoSwitch value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoSwitch');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'onChanged':
        return externObject.onChanged;
      case 'activeColor':
        return externObject.activeColor;
      case 'trackColor':
        return externObject.trackColor;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

