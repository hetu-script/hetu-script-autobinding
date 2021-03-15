import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TimePickerEntryModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dial':
        return TimePickerEntryMode.dial;
      case 'input':
        return TimePickerEntryMode.input;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

