import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/semantics.dart';
import 'dart:ui';
import 'package:flutter/services.dart';


class SemanticsServiceClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'announce':
        return (message, textDirection) => SemanticsService.announce(message, textDirection);
      case 'tooltip':
        return (message) => SemanticsService.tooltip(message);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


