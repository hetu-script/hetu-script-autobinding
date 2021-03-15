import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
const _kPanelHeaderCollapsedHeight = kMinInteractiveDimension;
const _kPanelHeaderExpandedDefaultPadding = EdgeInsets.symmetric(vertical: 64.0 - _kPanelHeaderCollapsedHeight);


class ExpansionPanelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ExpansionPanel':
        return ({headerBuilder, body, isExpanded = false, canTapOnHeader = false, backgroundColor}) => ExpansionPanelObjectBinding(ExpansionPanel(headerBuilder : headerBuilder, body : body, isExpanded : isExpanded, canTapOnHeader : canTapOnHeader, backgroundColor : backgroundColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExpansionPanelObjectBinding extends HT_ExternObject<ExpansionPanel> {
  ExpansionPanelObjectBinding(ExpansionPanel value) : super(value);

  @override
  final typeid = HT_TypeId('ExpansionPanel');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'headerBuilder':
        return externObject.headerBuilder;
      case 'body':
        return externObject.body;
      case 'isExpanded':
        return externObject.isExpanded;
      case 'canTapOnHeader':
        return externObject.canTapOnHeader;
      case 'backgroundColor':
        return externObject.backgroundColor;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ExpansionPanelRadioClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ExpansionPanelRadio':
        return ({value, headerBuilder, body, canTapOnHeader = false, backgroundColor}) => ExpansionPanelRadioObjectBinding(ExpansionPanelRadio(value : value, headerBuilder : headerBuilder, body : body, canTapOnHeader : canTapOnHeader, backgroundColor : backgroundColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExpansionPanelRadioObjectBinding extends HT_ExternObject<ExpansionPanelRadio> {
  ExpansionPanelRadioObjectBinding(ExpansionPanelRadio value) : super(value);

  @override
  final typeid = HT_TypeId('ExpansionPanelRadio');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ExpansionPanelListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ExpansionPanelList':
        return ({key, children = const <ExpansionPanel>[], expansionCallback, animationDuration = kThemeAnimationDuration, expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding, dividerColor, elevation = 2}) => ExpansionPanelListObjectBinding(ExpansionPanelList(key : key, children : children, expansionCallback : expansionCallback, animationDuration : animationDuration, expandedHeaderPadding : expandedHeaderPadding, dividerColor : dividerColor, elevation : elevation));
      case 'ExpansionPanelList.radio':
        return ({key, children = const <ExpansionPanelRadio>[], expansionCallback, animationDuration = kThemeAnimationDuration, initialOpenPanelValue, expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding, dividerColor, elevation = 2}) => ExpansionPanelListObjectBinding(ExpansionPanelList.radio(key : key, children : children, expansionCallback : expansionCallback, animationDuration : animationDuration, initialOpenPanelValue : initialOpenPanelValue, expandedHeaderPadding : expandedHeaderPadding, dividerColor : dividerColor, elevation : elevation));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExpansionPanelListObjectBinding extends HT_ExternObject<ExpansionPanelList> {
  ExpansionPanelListObjectBinding(ExpansionPanelList value) : super(value);

  @override
  final typeid = HT_TypeId('ExpansionPanelList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'children':
        return externObject.children;
      case 'expansionCallback':
        return externObject.expansionCallback;
      case 'animationDuration':
        return externObject.animationDuration;
      case 'initialOpenPanelValue':
        return externObject.initialOpenPanelValue;
      case 'expandedHeaderPadding':
        return externObject.expandedHeaderPadding;
      case 'dividerColor':
        return externObject.dividerColor;
      case 'elevation':
        return externObject.elevation;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

