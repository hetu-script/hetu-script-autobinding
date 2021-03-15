import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SwitchListTileClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SwitchListTile':
        return ({key, value, onChanged, tileColor, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, inactiveThumbImage, title, subtitle, isThreeLine = false, dense, contentPadding, secondary, selected = false, autofocus = false, controlAffinity = ListTileControlAffinity.platform, shape, selectedTileColor}) => SwitchListTileObjectBinding(SwitchListTile(key : key, value : value, onChanged : onChanged, tileColor : tileColor, activeColor : activeColor, activeTrackColor : activeTrackColor, inactiveThumbColor : inactiveThumbColor, inactiveTrackColor : inactiveTrackColor, activeThumbImage : activeThumbImage, inactiveThumbImage : inactiveThumbImage, title : title, subtitle : subtitle, isThreeLine : isThreeLine, dense : dense, contentPadding : contentPadding, secondary : secondary, selected : selected, autofocus : autofocus, controlAffinity : controlAffinity, shape : shape, selectedTileColor : selectedTileColor));
      case 'SwitchListTile.adaptive':
        return ({key, value, onChanged, tileColor, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, inactiveThumbImage, title, subtitle, isThreeLine = false, dense, contentPadding, secondary, selected = false, autofocus = false, controlAffinity = ListTileControlAffinity.platform, shape, selectedTileColor}) => SwitchListTileObjectBinding(SwitchListTile.adaptive(key : key, value : value, onChanged : onChanged, tileColor : tileColor, activeColor : activeColor, activeTrackColor : activeTrackColor, inactiveThumbColor : inactiveThumbColor, inactiveTrackColor : inactiveTrackColor, activeThumbImage : activeThumbImage, inactiveThumbImage : inactiveThumbImage, title : title, subtitle : subtitle, isThreeLine : isThreeLine, dense : dense, contentPadding : contentPadding, secondary : secondary, selected : selected, autofocus : autofocus, controlAffinity : controlAffinity, shape : shape, selectedTileColor : selectedTileColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SwitchListTileObjectBinding extends HT_ExternObject<SwitchListTile> {
  SwitchListTileObjectBinding(SwitchListTile value) : super(value);

  @override
  final typeid = HT_TypeId('SwitchListTile');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'onChanged':
        return externObject.onChanged;
      case 'activeColor':
        return externObject.activeColor;
      case 'activeTrackColor':
        return externObject.activeTrackColor;
      case 'inactiveThumbColor':
        return externObject.inactiveThumbColor;
      case 'inactiveTrackColor':
        return externObject.inactiveTrackColor;
      case 'tileColor':
        return externObject.tileColor;
      case 'activeThumbImage':
        return externObject.activeThumbImage;
      case 'inactiveThumbImage':
        return externObject.inactiveThumbImage;
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
      case 'contentPadding':
        return externObject.contentPadding;
      case 'selected':
        return externObject.selected;
      case 'autofocus':
        return externObject.autofocus;
      case 'controlAffinity':
        return externObject.controlAffinity;
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

