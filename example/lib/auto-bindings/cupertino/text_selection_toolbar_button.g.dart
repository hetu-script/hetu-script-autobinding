import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class CupertinoTextSelectionToolbarButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTextSelectionToolbarButton':
        return ({key, onPressed, child}) => CupertinoTextSelectionToolbarButtonObjectBinding(CupertinoTextSelectionToolbarButton(key : key, onPressed : onPressed, child : child));
      case 'CupertinoTextSelectionToolbarButton.text':
        return ({key, onPressed, text}) => CupertinoTextSelectionToolbarButtonObjectBinding(CupertinoTextSelectionToolbarButton.text(key : key, onPressed : onPressed, text : text));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTextSelectionToolbarButtonObjectBinding extends HT_ExternObject<CupertinoTextSelectionToolbarButton> {
  CupertinoTextSelectionToolbarButtonObjectBinding(CupertinoTextSelectionToolbarButton value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTextSelectionToolbarButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'onPressed':
        return externObject.onPressed;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

