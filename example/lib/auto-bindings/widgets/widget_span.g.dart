import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui'as ui;
import 'package:flutter/painting.dart';


class WidgetSpanClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WidgetSpan':
        return ({child, alignment = ui.PlaceholderAlignment.bottom, baseline, style}) => WidgetSpanObjectBinding(WidgetSpan(child : child, alignment : alignment, baseline : baseline, style : style));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WidgetSpanObjectBinding extends HT_ExternObject<WidgetSpan> {
  WidgetSpanObjectBinding(WidgetSpan value) : super(value);

  @override
  final typeid = HT_TypeId('WidgetSpan');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'hashCode':
        return externObject.hashCode;
      case 'build':
        return externObject.build;
      case 'visitChildren':
        return externObject.visitChildren;
      case 'getSpanForPositionVisitor':
        return externObject.getSpanForPositionVisitor;
      case 'codeUnitAtVisitor':
        return externObject.codeUnitAtVisitor;
      case 'compareTo':
        return externObject.compareTo;
      case 'getSpanForPosition':
        return externObject.getSpanForPosition;
      case 'debugAssertIsValid':
        return externObject.debugAssertIsValid;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

