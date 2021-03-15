import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:developer'as developer;
import 'dart:math'as math;
import 'dart:typed_data';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';


class WidgetInspectorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WidgetInspector':
        return ({key, child, selectButtonBuilder}) => WidgetInspectorObjectBinding(WidgetInspector(key : key, child : child, selectButtonBuilder : selectButtonBuilder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WidgetInspectorObjectBinding extends HT_ExternObject<WidgetInspector> {
  WidgetInspectorObjectBinding(WidgetInspector value) : super(value);

  @override
  final typeid = HT_TypeId('WidgetInspector');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'selectButtonBuilder':
        return externObject.selectButtonBuilder;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class InspectorSelectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InspectorSelection':
        return () => InspectorSelectionObjectBinding(InspectorSelection());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InspectorSelectionObjectBinding extends HT_ExternObject<InspectorSelection> {
  InspectorSelectionObjectBinding(InspectorSelection value) : super(value);

  @override
  final typeid = HT_TypeId('InspectorSelection');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'candidates':
        return externObject.candidates;
      case 'index':
        return externObject.index;
      case 'current':
        return externObject.current;
      case 'currentElement':
        return externObject.currentElement;
      case 'active':
        return externObject.active;
      case 'clear':
        return externObject.clear;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'candidates':
        externObject.candidates = value;
        break;
      case 'index':
        externObject.index = value;
        break;
      case 'current':
        externObject.current = value;
        break;
      case 'currentElement':
        externObject.currentElement = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DevToolsDeepLinkPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DevToolsDeepLinkProperty':
        return (description, url) => DevToolsDeepLinkPropertyObjectBinding(DevToolsDeepLinkProperty(description, url));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DevToolsDeepLinkPropertyObjectBinding extends HT_ExternObject<DevToolsDeepLinkProperty> {
  DevToolsDeepLinkPropertyObjectBinding(DevToolsDeepLinkProperty value) : super(value);

  @override
  final typeid = HT_TypeId('DevToolsDeepLinkProperty');


}

class InspectorSerializationDelegateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InspectorSerializationDelegate':
        return ({groupName, summaryTree = false, maxDescendentsTruncatableNode = -1, expandPropertyValues = true, subtreeDepth = 1, includeProperties = false, service, addAdditionalPropertiesCallback}) => InspectorSerializationDelegateObjectBinding(InspectorSerializationDelegate(groupName : groupName, summaryTree : summaryTree, maxDescendentsTruncatableNode : maxDescendentsTruncatableNode, expandPropertyValues : expandPropertyValues, subtreeDepth : subtreeDepth, includeProperties : includeProperties, service : service, addAdditionalPropertiesCallback : addAdditionalPropertiesCallback));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InspectorSerializationDelegateObjectBinding extends HT_ExternObject<InspectorSerializationDelegate> {
  InspectorSerializationDelegateObjectBinding(InspectorSerializationDelegate value) : super(value);

  @override
  final typeid = HT_TypeId('InspectorSerializationDelegate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'service':
        return externObject.service;
      case 'groupName':
        return externObject.groupName;
      case 'summaryTree':
        return externObject.summaryTree;
      case 'maxDescendentsTruncatableNode':
        return externObject.maxDescendentsTruncatableNode;
      case 'includeProperties':
        return externObject.includeProperties;
      case 'subtreeDepth':
        return externObject.subtreeDepth;
      case 'expandPropertyValues':
        return externObject.expandPropertyValues;
      case 'addAdditionalPropertiesCallback':
        return externObject.addAdditionalPropertiesCallback;
      case 'additionalNodeProperties':
        return externObject.additionalNodeProperties;
      case 'delegateForNode':
        return externObject.delegateForNode;
      case 'filterChildren':
        return externObject.filterChildren;
      case 'filterProperties':
        return externObject.filterProperties;
      case 'truncateNodesList':
        return externObject.truncateNodesList;
      case 'copyWith':
        return externObject.copyWith;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

