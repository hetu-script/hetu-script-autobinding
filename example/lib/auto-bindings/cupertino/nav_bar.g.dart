import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
const _kDefaultNavBarBorderColor = Color(0x4D000000);
const _kDefaultNavBarBorder = Border(bottom: BorderSide(color: _kDefaultNavBarBorderColor, width: 0.0, style: BorderStyle.solid));
const _defaultHeroTag = _HeroTag(null);
@immutable class _HeroTag {const _HeroTag(this.navigator); final NavigatorState? navigator; @override String toString() => 'Default Hero tag for Cupertino navigation bars with navigator $navigator'; @override bool operator ==(Object other) {if (identical(this, other)) {return true;} if (other.runtimeType != runtimeType) {return false;} return other is _HeroTag && other.navigator == navigator;} @override int get hashCode {return identityHashCode(navigator);}}


class CupertinoNavigationBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoNavigationBar':
        return ({key, leading, automaticallyImplyLeading = true, automaticallyImplyMiddle = true, previousPageTitle, middle, trailing, border = _kDefaultNavBarBorder, backgroundColor, brightness, padding, transitionBetweenRoutes = true, heroTag = _defaultHeroTag}) => CupertinoNavigationBarObjectBinding(CupertinoNavigationBar(key : key, leading : leading, automaticallyImplyLeading : automaticallyImplyLeading, automaticallyImplyMiddle : automaticallyImplyMiddle, previousPageTitle : previousPageTitle, middle : middle, trailing : trailing, border : border, backgroundColor : backgroundColor, brightness : brightness, padding : padding, transitionBetweenRoutes : transitionBetweenRoutes, heroTag : heroTag));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoNavigationBarObjectBinding extends HT_ExternObject<CupertinoNavigationBar> {
  CupertinoNavigationBarObjectBinding(CupertinoNavigationBar value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoNavigationBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leading':
        return externObject.leading;
      case 'automaticallyImplyLeading':
        return externObject.automaticallyImplyLeading;
      case 'automaticallyImplyMiddle':
        return externObject.automaticallyImplyMiddle;
      case 'previousPageTitle':
        return externObject.previousPageTitle;
      case 'middle':
        return externObject.middle;
      case 'trailing':
        return externObject.trailing;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'brightness':
        return externObject.brightness;
      case 'padding':
        return externObject.padding;
      case 'border':
        return externObject.border;
      case 'transitionBetweenRoutes':
        return externObject.transitionBetweenRoutes;
      case 'heroTag':
        return externObject.heroTag;
      case 'preferredSize':
        return externObject.preferredSize;
      case 'shouldFullyObstruct':
        return externObject.shouldFullyObstruct;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoSliverNavigationBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoSliverNavigationBar':
        return ({key, largeTitle, leading, automaticallyImplyLeading = true, automaticallyImplyTitle = true, previousPageTitle, middle, trailing, border = _kDefaultNavBarBorder, backgroundColor, brightness, padding, transitionBetweenRoutes = true, heroTag = _defaultHeroTag, stretch = false}) => CupertinoSliverNavigationBarObjectBinding(CupertinoSliverNavigationBar(key : key, largeTitle : largeTitle, leading : leading, automaticallyImplyLeading : automaticallyImplyLeading, automaticallyImplyTitle : automaticallyImplyTitle, previousPageTitle : previousPageTitle, middle : middle, trailing : trailing, border : border, backgroundColor : backgroundColor, brightness : brightness, padding : padding, transitionBetweenRoutes : transitionBetweenRoutes, heroTag : heroTag, stretch : stretch));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoSliverNavigationBarObjectBinding extends HT_ExternObject<CupertinoSliverNavigationBar> {
  CupertinoSliverNavigationBarObjectBinding(CupertinoSliverNavigationBar value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoSliverNavigationBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'largeTitle':
        return externObject.largeTitle;
      case 'leading':
        return externObject.leading;
      case 'automaticallyImplyLeading':
        return externObject.automaticallyImplyLeading;
      case 'automaticallyImplyTitle':
        return externObject.automaticallyImplyTitle;
      case 'previousPageTitle':
        return externObject.previousPageTitle;
      case 'middle':
        return externObject.middle;
      case 'trailing':
        return externObject.trailing;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'brightness':
        return externObject.brightness;
      case 'padding':
        return externObject.padding;
      case 'border':
        return externObject.border;
      case 'transitionBetweenRoutes':
        return externObject.transitionBetweenRoutes;
      case 'heroTag':
        return externObject.heroTag;
      case 'stretch':
        return externObject.stretch;
      case 'opaque':
        return externObject.opaque;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoNavigationBarBackButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoNavigationBarBackButton':
        return ({key, color, previousPageTitle, onPressed}) => CupertinoNavigationBarBackButtonObjectBinding(CupertinoNavigationBarBackButton(key : key, color : color, previousPageTitle : previousPageTitle, onPressed : onPressed));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoNavigationBarBackButtonObjectBinding extends HT_ExternObject<CupertinoNavigationBarBackButton> {
  CupertinoNavigationBarBackButtonObjectBinding(CupertinoNavigationBarBackButton value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoNavigationBarBackButton');


}

