import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class CupertinoContextMenuClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoContextMenu':
        return ({key, actions, child, previewBuilder}) => CupertinoContextMenuObjectBinding(CupertinoContextMenu(key : key, actions : actions, child : child, previewBuilder : previewBuilder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoContextMenuObjectBinding extends HT_ExternObject<CupertinoContextMenu> {
  CupertinoContextMenuObjectBinding(CupertinoContextMenu value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoContextMenu');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'actions':
        return externObject.actions;
      case 'previewBuilder':
        return externObject.previewBuilder;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

