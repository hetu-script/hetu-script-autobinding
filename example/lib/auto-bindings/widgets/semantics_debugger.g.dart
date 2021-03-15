import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/rendering.dart';


class SemanticsDebuggerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsDebugger':
        return ({key, child, labelStyle = const TextStyle(color: Color(0xFF000000), fontSize: 10.0, height: 0.8)}) => SemanticsDebuggerObjectBinding(SemanticsDebugger(key : key, child : child, labelStyle : labelStyle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsDebuggerObjectBinding extends HT_ExternObject<SemanticsDebugger> {
  SemanticsDebuggerObjectBinding(SemanticsDebugger value) : super(value);

  @override
  final typeid = HT_TypeId('SemanticsDebugger');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

