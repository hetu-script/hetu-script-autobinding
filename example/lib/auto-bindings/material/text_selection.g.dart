import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class MaterialTextSelectionControlsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialTextSelectionControls':
        return () => MaterialTextSelectionControlsObjectBinding(MaterialTextSelectionControls());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialTextSelectionControlsObjectBinding extends HT_ExternObject<MaterialTextSelectionControls> {
  MaterialTextSelectionControlsObjectBinding(MaterialTextSelectionControls value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialTextSelectionControls');

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
      case 'canSelectAll':
        return externObject.canSelectAll;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

