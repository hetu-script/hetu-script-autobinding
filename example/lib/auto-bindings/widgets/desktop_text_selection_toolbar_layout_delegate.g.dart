import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class DesktopTextSelectionToolbarLayoutDelegateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DesktopTextSelectionToolbarLayoutDelegate':
        return ({anchor}) => DesktopTextSelectionToolbarLayoutDelegateObjectBinding(DesktopTextSelectionToolbarLayoutDelegate(anchor : anchor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DesktopTextSelectionToolbarLayoutDelegateObjectBinding extends HT_ExternObject<DesktopTextSelectionToolbarLayoutDelegate> {
  DesktopTextSelectionToolbarLayoutDelegateObjectBinding(DesktopTextSelectionToolbarLayoutDelegate value) : super(value);

  @override
  final typeid = HT_TypeId('DesktopTextSelectionToolbarLayoutDelegate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'anchor':
        return externObject.anchor;
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

