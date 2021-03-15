import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CheckboxListTileClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CheckboxListTile':
        return ({key, value, onChanged, activeColor, checkColor, tileColor, title, subtitle, isThreeLine = false, dense, secondary, selected = false, controlAffinity = ListTileControlAffinity.platform, autofocus = false, contentPadding, tristate = false, shape, selectedTileColor}) => CheckboxListTileObjectBinding(CheckboxListTile(key : key, value : value, onChanged : onChanged, activeColor : activeColor, checkColor : checkColor, tileColor : tileColor, title : title, subtitle : subtitle, isThreeLine : isThreeLine, dense : dense, secondary : secondary, selected : selected, controlAffinity : controlAffinity, autofocus : autofocus, contentPadding : contentPadding, tristate : tristate, shape : shape, selectedTileColor : selectedTileColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CheckboxListTileObjectBinding extends HT_ExternObject<CheckboxListTile> {
  CheckboxListTileObjectBinding(CheckboxListTile value) : super(value);

  @override
  final typeid = HT_TypeId('CheckboxListTile');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'onChanged':
        return externObject.onChanged;
      case 'activeColor':
        return externObject.activeColor;
      case 'checkColor':
        return externObject.checkColor;
      case 'tileColor':
        return externObject.tileColor;
      case 'title':
        return externObject.title;
      case 'subtitle':
        return externObject.subtitle;
      case 'secondary':
        return externObject.secondary;
      case 'isThreeLine':
        return externObject.isThreeLine;
      case 'dense':
        return externObject.dense;
      case 'selected':
        return externObject.selected;
      case 'controlAffinity':
        return externObject.controlAffinity;
      case 'autofocus':
        return externObject.autofocus;
      case 'contentPadding':
        return externObject.contentPadding;
      case 'tristate':
        return externObject.tristate;
      case 'shape':
        return externObject.shape;
      case 'selectedTileColor':
        return externObject.selectedTileColor;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

