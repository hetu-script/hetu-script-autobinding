import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';


class ElevationOverlayClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'applyOverlay':
        return (context, color, elevation) => ElevationOverlay.applyOverlay(context, color, elevation);
      case 'overlayColor':
        return (context, elevation) => ElevationOverlay.overlayColor(context, elevation);
      case 'colorWithOverlay':
        return (surface, overlay, elevation) => ElevationOverlay.colorWithOverlay(surface, overlay, elevation);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


