import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';

class NavigationRailLabelTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'none':
        return NavigationRailLabelType.none;
      case 'selected':
        return NavigationRailLabelType.selected;
      case 'all':
        return NavigationRailLabelType.all;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NavigationRailClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NavigationRail':
        return ({backgroundColor, extended = false, leading, trailing, destinations, selectedIndex, onDestinationSelected, elevation, groupAlignment, labelType, unselectedLabelTextStyle, selectedLabelTextStyle, unselectedIconTheme, selectedIconTheme, minWidth, minExtendedWidth}) => NavigationRailObjectBinding(NavigationRail(backgroundColor : backgroundColor, extended : extended, leading : leading, trailing : trailing, destinations : destinations, selectedIndex : selectedIndex, onDestinationSelected : onDestinationSelected, elevation : elevation, groupAlignment : groupAlignment, labelType : labelType, unselectedLabelTextStyle : unselectedLabelTextStyle, selectedLabelTextStyle : selectedLabelTextStyle, unselectedIconTheme : unselectedIconTheme, selectedIconTheme : selectedIconTheme, minWidth : minWidth, minExtendedWidth : minExtendedWidth));
      case 'extendedAnimation':
        return (context) => NavigationRail.extendedAnimation(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NavigationRailObjectBinding extends HT_ExternObject<NavigationRail> {
  NavigationRailObjectBinding(NavigationRail value) : super(value);

  @override
  final typeid = HT_TypeId('NavigationRail');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'extended':
        return externObject.extended;
      case 'leading':
        return externObject.leading;
      case 'trailing':
        return externObject.trailing;
      case 'destinations':
        return externObject.destinations;
      case 'selectedIndex':
        return externObject.selectedIndex;
      case 'onDestinationSelected':
        return externObject.onDestinationSelected;
      case 'elevation':
        return externObject.elevation;
      case 'groupAlignment':
        return externObject.groupAlignment;
      case 'labelType':
        return externObject.labelType;
      case 'unselectedLabelTextStyle':
        return externObject.unselectedLabelTextStyle;
      case 'selectedLabelTextStyle':
        return externObject.selectedLabelTextStyle;
      case 'unselectedIconTheme':
        return externObject.unselectedIconTheme;
      case 'selectedIconTheme':
        return externObject.selectedIconTheme;
      case 'minWidth':
        return externObject.minWidth;
      case 'minExtendedWidth':
        return externObject.minExtendedWidth;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class NavigationRailDestinationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NavigationRailDestination':
        return ({icon, selectedIcon, label, padding}) => NavigationRailDestinationObjectBinding(NavigationRailDestination(icon : icon, selectedIcon : selectedIcon, label : label, padding : padding));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NavigationRailDestinationObjectBinding extends HT_ExternObject<NavigationRailDestination> {
  NavigationRailDestinationObjectBinding(NavigationRailDestination value) : super(value);

  @override
  final typeid = HT_TypeId('NavigationRailDestination');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'icon':
        return externObject.icon;
      case 'selectedIcon':
        return externObject.selectedIcon;
      case 'label':
        return externObject.label;
      case 'padding':
        return externObject.padding;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

