import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class _TextSelectionToolbarContainer extends StatelessWidget {const _TextSelectionToolbarContainer({Key? key, required this.child}) : super(key: key); final Widget child; @override Widget build(BuildContext context) {return Material(borderRadius: const BorderRadius.all(Radius.circular(7.0)), clipBehavior: Clip.antiAlias, elevation: 1.0, type: MaterialType.card, child: child);}}


class TextSelectionToolbarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelectionToolbar':
        return ({key, anchorAbove, anchorBelow, toolbarBuilder = _defaultToolbarBuilder, children}) => TextSelectionToolbarObjectBinding(TextSelectionToolbar(key : key, anchorAbove : anchorAbove, anchorBelow : anchorBelow, toolbarBuilder : toolbarBuilder, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
  static Widget _defaultToolbarBuilder(BuildContext context, Widget child) {return _TextSelectionToolbarContainer(child: child);}
}

class TextSelectionToolbarObjectBinding extends HT_ExternObject<TextSelectionToolbar> {
  TextSelectionToolbarObjectBinding(TextSelectionToolbar value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelectionToolbar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'anchorAbove':
        return externObject.anchorAbove;
      case 'anchorBelow':
        return externObject.anchorBelow;
      case 'children':
        return externObject.children;
      case 'toolbarBuilder':
        return externObject.toolbarBuilder;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

