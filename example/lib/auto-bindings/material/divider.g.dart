import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/painting.dart';


class DividerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Divider':
        return ({key, height, thickness, indent, endIndent, color}) => DividerObjectBinding(Divider(key : key, height : height, thickness : thickness, indent : indent, endIndent : endIndent, color : color));
      case 'createBorderSide':
        return (context, {color, width}) => Divider.createBorderSide(context, color : color, width : width);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DividerObjectBinding extends HT_ExternObject<Divider> {
  DividerObjectBinding(Divider value) : super(value);

  @override
  final typeid = HT_TypeId('Divider');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'height':
        return externObject.height;
      case 'thickness':
        return externObject.thickness;
      case 'indent':
        return externObject.indent;
      case 'endIndent':
        return externObject.endIndent;
      case 'color':
        return externObject.color;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class VerticalDividerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'VerticalDivider':
        return ({key, width, thickness, indent, endIndent, color}) => VerticalDividerObjectBinding(VerticalDivider(key : key, width : width, thickness : thickness, indent : indent, endIndent : endIndent, color : color));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class VerticalDividerObjectBinding extends HT_ExternObject<VerticalDivider> {
  VerticalDividerObjectBinding(VerticalDivider value) : super(value);

  @override
  final typeid = HT_TypeId('VerticalDivider');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'width':
        return externObject.width;
      case 'thickness':
        return externObject.thickness;
      case 'indent':
        return externObject.indent;
      case 'endIndent':
        return externObject.endIndent;
      case 'color':
        return externObject.color;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

