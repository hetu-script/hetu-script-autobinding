import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class RadioListTileClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RadioListTile':
        return ({key, value, groupValue, onChanged, toggleable = false, activeColor, title, subtitle, isThreeLine = false, dense, secondary, selected = false, controlAffinity = ListTileControlAffinity.platform, autofocus = false, contentPadding, shape, tileColor, selectedTileColor}) => RadioListTileObjectBinding(RadioListTile(key : key, value : value, groupValue : groupValue, onChanged : onChanged, toggleable : toggleable, activeColor : activeColor, title : title, subtitle : subtitle, isThreeLine : isThreeLine, dense : dense, secondary : secondary, selected : selected, controlAffinity : controlAffinity, autofocus : autofocus, contentPadding : contentPadding, shape : shape, tileColor : tileColor, selectedTileColor : selectedTileColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RadioListTileObjectBinding extends HT_ExternObject<RadioListTile> {
  RadioListTileObjectBinding(RadioListTile value) : super(value);

  @override
  final typeid = HT_TypeId('RadioListTile');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'groupValue':
        return externObject.groupValue;
      case 'onChanged':
        return externObject.onChanged;
      case 'toggleable':
        return externObject.toggleable;
      case 'activeColor':
        return externObject.activeColor;
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
      case 'shape':
        return externObject.shape;
      case 'tileColor':
        return externObject.tileColor;
      case 'selectedTileColor':
        return externObject.selectedTileColor;
      case 'checked':
        return externObject.checked;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

