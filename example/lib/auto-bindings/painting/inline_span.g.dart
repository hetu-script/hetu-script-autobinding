import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';


class AccumulatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Accumulator':
        return ([_value = 0]) => AccumulatorObjectBinding(Accumulator(_value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AccumulatorObjectBinding extends HT_ExternObject<Accumulator> {
  AccumulatorObjectBinding(Accumulator value) : super(value);

  @override
  final typeid = HT_TypeId('Accumulator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'increment':
        return externObject.increment;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class InlineSpanSemanticsInformationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InlineSpanSemanticsInformation':
        return (text, {isPlaceholder = false, semanticsLabel, recognizer}) => InlineSpanSemanticsInformationObjectBinding(InlineSpanSemanticsInformation(text, isPlaceholder : isPlaceholder, semanticsLabel : semanticsLabel, recognizer : recognizer));
      case 'InlineSpanSemanticsInformation.placeholder':
        return InlineSpanSemanticsInformation.placeholder;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InlineSpanSemanticsInformationObjectBinding extends HT_ExternObject<InlineSpanSemanticsInformation> {
  InlineSpanSemanticsInformationObjectBinding(InlineSpanSemanticsInformation value) : super(value);

  @override
  final typeid = HT_TypeId('InlineSpanSemanticsInformation');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'text':
        return externObject.text;
      case 'semanticsLabel':
        return externObject.semanticsLabel;
      case 'recognizer':
        return externObject.recognizer;
      case 'isPlaceholder':
        return externObject.isPlaceholder;
      case 'requiresOwnNode':
        return externObject.requiresOwnNode;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

