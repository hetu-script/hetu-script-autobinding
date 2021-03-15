import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class MaterialSliceClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialSlice':
        return ({key, child, color}) => MaterialSliceObjectBinding(MaterialSlice(key : key, child : child, color : color));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialSliceObjectBinding extends HT_ExternObject<MaterialSlice> {
  MaterialSliceObjectBinding(MaterialSlice value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialSlice');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'color':
        return externObject.color;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MaterialGapClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialGap':
        return ({key, size = 16.0}) => MaterialGapObjectBinding(MaterialGap(key : key, size : size));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialGapObjectBinding extends HT_ExternObject<MaterialGap> {
  MaterialGapObjectBinding(MaterialGap value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialGap');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'size':
        return externObject.size;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MergeableMaterialClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MergeableMaterial':
        return ({key, mainAxis = Axis.vertical, elevation = 2, hasDividers = false, children = const <MergeableMaterialItem>[], dividerColor}) => MergeableMaterialObjectBinding(MergeableMaterial(key : key, mainAxis : mainAxis, elevation : elevation, hasDividers : hasDividers, children : children, dividerColor : dividerColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MergeableMaterialObjectBinding extends HT_ExternObject<MergeableMaterial> {
  MergeableMaterialObjectBinding(MergeableMaterial value) : super(value);

  @override
  final typeid = HT_TypeId('MergeableMaterial');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'children':
        return externObject.children;
      case 'mainAxis':
        return externObject.mainAxis;
      case 'elevation':
        return externObject.elevation;
      case 'hasDividers':
        return externObject.hasDividers;
      case 'dividerColor':
        return externObject.dividerColor;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

