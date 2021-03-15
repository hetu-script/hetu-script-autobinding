import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CollapseModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'parallax':
        return CollapseMode.parallax;
      case 'pin':
        return CollapseMode.pin;
      case 'none':
        return CollapseMode.none;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class StretchModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'zoomBackground':
        return StretchMode.zoomBackground;
      case 'blurBackground':
        return StretchMode.blurBackground;
      case 'fadeTitle':
        return StretchMode.fadeTitle;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlexibleSpaceBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlexibleSpaceBar':
        return ({key, title, background, centerTitle, titlePadding, collapseMode = CollapseMode.parallax, stretchModes = const <StretchMode>[StretchMode.zoomBackground]}) => FlexibleSpaceBarObjectBinding(FlexibleSpaceBar(key : key, title : title, background : background, centerTitle : centerTitle, titlePadding : titlePadding, collapseMode : collapseMode, stretchModes : stretchModes));
      case 'createSettings':
        return ({toolbarOpacity, minExtent, maxExtent, currentExtent, child}) => FlexibleSpaceBar.createSettings(toolbarOpacity : toolbarOpacity, minExtent : minExtent, maxExtent : maxExtent, currentExtent : currentExtent, child : child);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlexibleSpaceBarObjectBinding extends HT_ExternObject<FlexibleSpaceBar> {
  FlexibleSpaceBarObjectBinding(FlexibleSpaceBar value) : super(value);

  @override
  final typeid = HT_TypeId('FlexibleSpaceBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'title':
        return externObject.title;
      case 'background':
        return externObject.background;
      case 'centerTitle':
        return externObject.centerTitle;
      case 'collapseMode':
        return externObject.collapseMode;
      case 'stretchModes':
        return externObject.stretchModes;
      case 'titlePadding':
        return externObject.titlePadding;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FlexibleSpaceBarSettingsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlexibleSpaceBarSettings':
        return ({key, toolbarOpacity, minExtent, maxExtent, currentExtent, child}) => FlexibleSpaceBarSettingsObjectBinding(FlexibleSpaceBarSettings(key : key, toolbarOpacity : toolbarOpacity, minExtent : minExtent, maxExtent : maxExtent, currentExtent : currentExtent, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlexibleSpaceBarSettingsObjectBinding extends HT_ExternObject<FlexibleSpaceBarSettings> {
  FlexibleSpaceBarSettingsObjectBinding(FlexibleSpaceBarSettings value) : super(value);

  @override
  final typeid = HT_TypeId('FlexibleSpaceBarSettings');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'toolbarOpacity':
        return externObject.toolbarOpacity;
      case 'minExtent':
        return externObject.minExtent;
      case 'maxExtent':
        return externObject.maxExtent;
      case 'currentExtent':
        return externObject.currentExtent;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

