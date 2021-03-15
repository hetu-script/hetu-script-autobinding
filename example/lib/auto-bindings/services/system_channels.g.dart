import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:ui';


class SystemChannelsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SystemChannels.navigation':
        return SystemChannels.navigation;
      case 'SystemChannels.platform':
        return SystemChannels.platform;
      case 'SystemChannels.textInput':
        return SystemChannels.textInput;
      case 'SystemChannels.keyEvent':
        return SystemChannels.keyEvent;
      case 'SystemChannels.lifecycle':
        return SystemChannels.lifecycle;
      case 'SystemChannels.system':
        return SystemChannels.system;
      case 'SystemChannels.accessibility':
        return SystemChannels.accessibility;
      case 'SystemChannels.platform_views':
        return SystemChannels.platform_views;
      case 'SystemChannels.skia':
        return SystemChannels.skia;
      case 'SystemChannels.mouseCursor':
        return SystemChannels.mouseCursor;
      case 'SystemChannels.restoration':
        return SystemChannels.restoration;
      case 'SystemChannels.deferredComponent':
        return SystemChannels.deferredComponent;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


