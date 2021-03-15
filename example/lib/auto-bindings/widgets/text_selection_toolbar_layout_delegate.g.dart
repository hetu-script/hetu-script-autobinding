import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/rendering.dart';


class TextSelectionToolbarLayoutDelegateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextSelectionToolbarLayoutDelegate':
        return ({anchorAbove, anchorBelow, fitsAbove}) => TextSelectionToolbarLayoutDelegateObjectBinding(TextSelectionToolbarLayoutDelegate(anchorAbove : anchorAbove, anchorBelow : anchorBelow, fitsAbove : fitsAbove));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextSelectionToolbarLayoutDelegateObjectBinding extends HT_ExternObject<TextSelectionToolbarLayoutDelegate> {
  TextSelectionToolbarLayoutDelegateObjectBinding(TextSelectionToolbarLayoutDelegate value) : super(value);

  @override
  final typeid = HT_TypeId('TextSelectionToolbarLayoutDelegate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'anchorAbove':
        return externObject.anchorAbove;
      case 'anchorBelow':
        return externObject.anchorBelow;
      case 'fitsAbove':
        return externObject.fitsAbove;
      case 'getConstraintsForChild':
        return externObject.getConstraintsForChild;
      case 'getPositionForChild':
        return externObject.getPositionForChild;
      case 'shouldRelayout':
        return externObject.shouldRelayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

