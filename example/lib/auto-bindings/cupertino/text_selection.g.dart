import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class CupertinoTextSelectionControlsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTextSelectionControls':
        return () => CupertinoTextSelectionControlsObjectBinding(CupertinoTextSelectionControls());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTextSelectionControlsObjectBinding extends HT_ExternObject<CupertinoTextSelectionControls> {
  CupertinoTextSelectionControlsObjectBinding(CupertinoTextSelectionControls value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTextSelectionControls');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getHandleSize':
        return externObject.getHandleSize;
      case 'buildToolbar':
        return externObject.buildToolbar;
      case 'buildHandle':
        return externObject.buildHandle;
      case 'getHandleAnchor':
        return externObject.getHandleAnchor;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

