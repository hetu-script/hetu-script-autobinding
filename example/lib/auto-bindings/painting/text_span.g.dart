import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';


class TextSpanClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSpan':
        return ({text, children, style, recognizer, semanticsLabel}) => TextSpanObjectBinding(TextSpan(text : text, children : children, style : style, recognizer : recognizer, semanticsLabel : semanticsLabel));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSpanObjectBinding extends HT_ExternObject<TextSpan> {
  TextSpanObjectBinding(TextSpan value) : super(value);

  @override
  final typeid = HT_TypeId('TextSpan');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'text':
        return externObject.text;
      case 'children':
        return externObject.children;
      case 'recognizer':
        return externObject.recognizer;
      case 'semanticsLabel':
        return externObject.semanticsLabel;
      case 'hashCode':
        return externObject.hashCode;
      case 'build':
        return externObject.build;
      case 'visitChildren':
        return externObject.visitChildren;
      case 'getSpanForPositionVisitor':
        return externObject.getSpanForPositionVisitor;
      case 'computeToPlainText':
        return externObject.computeToPlainText;
      case 'computeSemanticsInformation':
        return externObject.computeSemanticsInformation;
      case 'codeUnitAtVisitor':
        return externObject.codeUnitAtVisitor;
      case 'describeSemantics':
        return externObject.describeSemantics;
      case 'debugAssertIsValid':
        return externObject.debugAssertIsValid;
      case 'compareTo':
        return externObject.compareTo;
      case 'toStringShort':
        return externObject.toStringShort;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'debugDescribeChildren':
        return externObject.debugDescribeChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

