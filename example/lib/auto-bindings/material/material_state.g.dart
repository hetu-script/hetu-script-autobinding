import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

class MaterialStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hovered':
        return MaterialState.hovered;
      case 'focused':
        return MaterialState.focused;
      case 'pressed':
        return MaterialState.pressed;
      case 'dragged':
        return MaterialState.dragged;
      case 'selected':
        return MaterialState.selected;
      case 'disabled':
        return MaterialState.disabled;
      case 'error':
        return MaterialState.error;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

