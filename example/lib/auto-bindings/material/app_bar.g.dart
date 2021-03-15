import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class AppBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AppBar':
        return ({key, leading, automaticallyImplyLeading = true, title, actions, flexibleSpace, bottom, elevation, shadowColor, shape, backgroundColor, foregroundColor, brightness, iconTheme, actionsIconTheme, textTheme, primary = true, centerTitle, excludeHeaderSemantics = false, titleSpacing, toolbarOpacity = 1.0, bottomOpacity = 1.0, toolbarHeight, leadingWidth, backwardsCompatibility, toolbarTextStyle, titleTextStyle, systemOverlayStyle}) => AppBarObjectBinding(AppBar(key : key, leading : leading, automaticallyImplyLeading : automaticallyImplyLeading, title : title, actions : actions, flexibleSpace : flexibleSpace, bottom : bottom, elevation : elevation, shadowColor : shadowColor, shape : shape, backgroundColor : backgroundColor, foregroundColor : foregroundColor, brightness : brightness, iconTheme : iconTheme, actionsIconTheme : actionsIconTheme, textTheme : textTheme, primary : primary, centerTitle : centerTitle, excludeHeaderSemantics : excludeHeaderSemantics, titleSpacing : titleSpacing, toolbarOpacity : toolbarOpacity, bottomOpacity : bottomOpacity, toolbarHeight : toolbarHeight, leadingWidth : leadingWidth, backwardsCompatibility : backwardsCompatibility, toolbarTextStyle : toolbarTextStyle, titleTextStyle : titleTextStyle, systemOverlayStyle : systemOverlayStyle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AppBarObjectBinding extends HT_ExternObject<AppBar> {
  AppBarObjectBinding(AppBar value) : super(value);

  @override
  final typeid = HT_TypeId('AppBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leading':
        return externObject.leading;
      case 'automaticallyImplyLeading':
        return externObject.automaticallyImplyLeading;
      case 'title':
        return externObject.title;
      case 'actions':
        return externObject.actions;
      case 'flexibleSpace':
        return externObject.flexibleSpace;
      case 'bottom':
        return externObject.bottom;
      case 'elevation':
        return externObject.elevation;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'shape':
        return externObject.shape;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'foregroundColor':
        return externObject.foregroundColor;
      case 'brightness':
        return externObject.brightness;
      case 'iconTheme':
        return externObject.iconTheme;
      case 'actionsIconTheme':
        return externObject.actionsIconTheme;
      case 'textTheme':
        return externObject.textTheme;
      case 'primary':
        return externObject.primary;
      case 'centerTitle':
        return externObject.centerTitle;
      case 'excludeHeaderSemantics':
        return externObject.excludeHeaderSemantics;
      case 'titleSpacing':
        return externObject.titleSpacing;
      case 'toolbarOpacity':
        return externObject.toolbarOpacity;
      case 'bottomOpacity':
        return externObject.bottomOpacity;
      case 'preferredSize':
        return externObject.preferredSize;
      case 'toolbarHeight':
        return externObject.toolbarHeight;
      case 'leadingWidth':
        return externObject.leadingWidth;
      case 'backwardsCompatibility':
        return externObject.backwardsCompatibility;
      case 'toolbarTextStyle':
        return externObject.toolbarTextStyle;
      case 'titleTextStyle':
        return externObject.titleTextStyle;
      case 'systemOverlayStyle':
        return externObject.systemOverlayStyle;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverAppBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverAppBar':
        return ({key, leading, automaticallyImplyLeading = true, title, actions, flexibleSpace, bottom, elevation, shadowColor, forceElevated = false, backgroundColor, foregroundColor, brightness, iconTheme, actionsIconTheme, textTheme, primary = true, centerTitle, excludeHeaderSemantics = false, titleSpacing, collapsedHeight, expandedHeight, floating = false, pinned = false, snap = false, stretch = false, stretchTriggerOffset = 100.0, onStretchTrigger, shape, toolbarHeight = kToolbarHeight, leadingWidth, backwardsCompatibility = true, toolbarTextStyle, titleTextStyle, systemOverlayStyle}) => SliverAppBarObjectBinding(SliverAppBar(key : key, leading : leading, automaticallyImplyLeading : automaticallyImplyLeading, title : title, actions : actions, flexibleSpace : flexibleSpace, bottom : bottom, elevation : elevation, shadowColor : shadowColor, forceElevated : forceElevated, backgroundColor : backgroundColor, foregroundColor : foregroundColor, brightness : brightness, iconTheme : iconTheme, actionsIconTheme : actionsIconTheme, textTheme : textTheme, primary : primary, centerTitle : centerTitle, excludeHeaderSemantics : excludeHeaderSemantics, titleSpacing : titleSpacing, collapsedHeight : collapsedHeight, expandedHeight : expandedHeight, floating : floating, pinned : pinned, snap : snap, stretch : stretch, stretchTriggerOffset : stretchTriggerOffset, onStretchTrigger : onStretchTrigger, shape : shape, toolbarHeight : toolbarHeight, leadingWidth : leadingWidth, backwardsCompatibility : backwardsCompatibility, toolbarTextStyle : toolbarTextStyle, titleTextStyle : titleTextStyle, systemOverlayStyle : systemOverlayStyle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverAppBarObjectBinding extends HT_ExternObject<SliverAppBar> {
  SliverAppBarObjectBinding(SliverAppBar value) : super(value);

  @override
  final typeid = HT_TypeId('SliverAppBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leading':
        return externObject.leading;
      case 'automaticallyImplyLeading':
        return externObject.automaticallyImplyLeading;
      case 'title':
        return externObject.title;
      case 'actions':
        return externObject.actions;
      case 'flexibleSpace':
        return externObject.flexibleSpace;
      case 'bottom':
        return externObject.bottom;
      case 'elevation':
        return externObject.elevation;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'forceElevated':
        return externObject.forceElevated;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'foregroundColor':
        return externObject.foregroundColor;
      case 'brightness':
        return externObject.brightness;
      case 'iconTheme':
        return externObject.iconTheme;
      case 'actionsIconTheme':
        return externObject.actionsIconTheme;
      case 'textTheme':
        return externObject.textTheme;
      case 'primary':
        return externObject.primary;
      case 'centerTitle':
        return externObject.centerTitle;
      case 'excludeHeaderSemantics':
        return externObject.excludeHeaderSemantics;
      case 'titleSpacing':
        return externObject.titleSpacing;
      case 'collapsedHeight':
        return externObject.collapsedHeight;
      case 'expandedHeight':
        return externObject.expandedHeight;
      case 'floating':
        return externObject.floating;
      case 'pinned':
        return externObject.pinned;
      case 'shape':
        return externObject.shape;
      case 'snap':
        return externObject.snap;
      case 'stretch':
        return externObject.stretch;
      case 'stretchTriggerOffset':
        return externObject.stretchTriggerOffset;
      case 'onStretchTrigger':
        return externObject.onStretchTrigger;
      case 'toolbarHeight':
        return externObject.toolbarHeight;
      case 'leadingWidth':
        return externObject.leadingWidth;
      case 'backwardsCompatibility':
        return externObject.backwardsCompatibility;
      case 'toolbarTextStyle':
        return externObject.toolbarTextStyle;
      case 'titleTextStyle':
        return externObject.titleTextStyle;
      case 'systemOverlayStyle':
        return externObject.systemOverlayStyle;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

