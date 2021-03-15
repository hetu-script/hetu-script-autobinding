import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';


class TextSelectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelection':
        return ({baseOffset, extentOffset, affinity = TextAffinity.downstream, isDirectional = false}) => TextSelectionObjectBinding(TextSelection(baseOffset : baseOffset, extentOffset : extentOffset, affinity : affinity, isDirectional : isDirectional));
      case 'TextSelection.collapsed':
        return ({offset, affinity = TextAffinity.downstream}) => TextSelectionObjectBinding(TextSelection.collapsed(offset : offset, affinity : affinity));
      case 'TextSelection.fromPosition':
        return (position) => TextSelectionObjectBinding(TextSelection.fromPosition(position));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionObjectBinding extends HT_ExternObject<TextSelection> {
  TextSelectionObjectBinding(TextSelection value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelection');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'baseOffset':
        return externObject.baseOffset;
      case 'extentOffset':
        return externObject.extentOffset;
      case 'affinity':
        return externObject.affinity;
      case 'isDirectional':
        return externObject.isDirectional;
      case 'base':
        return externObject.base;
      case 'extent':
        return externObject.extent;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

