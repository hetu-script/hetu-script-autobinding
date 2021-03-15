import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ExpansionTileClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ExpansionTile':
        return ({key, leading, title, subtitle, backgroundColor, onExpansionChanged, children = const <Widget>[], trailing, initiallyExpanded = false, maintainState = false, tilePadding, expandedCrossAxisAlignment, expandedAlignment, childrenPadding, collapsedBackgroundColor}) => ExpansionTileObjectBinding(ExpansionTile(key : key, leading : leading, title : title, subtitle : subtitle, backgroundColor : backgroundColor, onExpansionChanged : onExpansionChanged, children : children, trailing : trailing, initiallyExpanded : initiallyExpanded, maintainState : maintainState, tilePadding : tilePadding, expandedCrossAxisAlignment : expandedCrossAxisAlignment, expandedAlignment : expandedAlignment, childrenPadding : childrenPadding, collapsedBackgroundColor : collapsedBackgroundColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExpansionTileObjectBinding extends HT_ExternObject<ExpansionTile> {
  ExpansionTileObjectBinding(ExpansionTile value) : super(value);

  @override
  final typeid = HT_TypeId('ExpansionTile');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leading':
        return externObject.leading;
      case 'title':
        return externObject.title;
      case 'subtitle':
        return externObject.subtitle;
      case 'onExpansionChanged':
        return externObject.onExpansionChanged;
      case 'children':
        return externObject.children;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'collapsedBackgroundColor':
        return externObject.collapsedBackgroundColor;
      case 'trailing':
        return externObject.trailing;
      case 'initiallyExpanded':
        return externObject.initiallyExpanded;
      case 'maintainState':
        return externObject.maintainState;
      case 'tilePadding':
        return externObject.tilePadding;
      case 'expandedAlignment':
        return externObject.expandedAlignment;
      case 'expandedCrossAxisAlignment':
        return externObject.expandedCrossAxisAlignment;
      case 'childrenPadding':
        return externObject.childrenPadding;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

