import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

class ListTileStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'list':
        return ListTileStyle.list;
      case 'drawer':
        return ListTileStyle.drawer;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class ListTileControlAffinityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leading':
        return ListTileControlAffinity.leading;
      case 'trailing':
        return ListTileControlAffinity.trailing;
      case 'platform':
        return ListTileControlAffinity.platform;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListTileThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListTileTheme':
        return ({key, dense = false, shape, style = ListTileStyle.list, selectedColor, iconColor, textColor, contentPadding, tileColor, selectedTileColor, enableFeedback, horizontalTitleGap, minVerticalPadding, minLeadingWidth, child}) => ListTileThemeObjectBinding(ListTileTheme(key : key, dense : dense, shape : shape, style : style, selectedColor : selectedColor, iconColor : iconColor, textColor : textColor, contentPadding : contentPadding, tileColor : tileColor, selectedTileColor : selectedTileColor, enableFeedback : enableFeedback, horizontalTitleGap : horizontalTitleGap, minVerticalPadding : minVerticalPadding, minLeadingWidth : minLeadingWidth, child : child));
      case 'merge':
        return ({key, dense, shape, style, selectedColor, iconColor, textColor, contentPadding, tileColor, selectedTileColor, enableFeedback, horizontalTitleGap, minVerticalPadding, minLeadingWidth, child}) => ListTileTheme.merge(key : key, dense : dense, shape : shape, style : style, selectedColor : selectedColor, iconColor : iconColor, textColor : textColor, contentPadding : contentPadding, tileColor : tileColor, selectedTileColor : selectedTileColor, enableFeedback : enableFeedback, horizontalTitleGap : horizontalTitleGap, minVerticalPadding : minVerticalPadding, minLeadingWidth : minLeadingWidth, child : child);
      case 'of':
        return (context) => ListTileTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListTileThemeObjectBinding extends HT_ExternObject<ListTileTheme> {
  ListTileThemeObjectBinding(ListTileTheme value) : super(value);

  @override
  final typeid = HT_TypeId('ListTileTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dense':
        return externObject.dense;
      case 'shape':
        return externObject.shape;
      case 'style':
        return externObject.style;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'iconColor':
        return externObject.iconColor;
      case 'textColor':
        return externObject.textColor;
      case 'contentPadding':
        return externObject.contentPadding;
      case 'tileColor':
        return externObject.tileColor;
      case 'selectedTileColor':
        return externObject.selectedTileColor;
      case 'horizontalTitleGap':
        return externObject.horizontalTitleGap;
      case 'minVerticalPadding':
        return externObject.minVerticalPadding;
      case 'minLeadingWidth':
        return externObject.minLeadingWidth;
      case 'enableFeedback':
        return externObject.enableFeedback;
      case 'wrap':
        return externObject.wrap;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ListTileClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ListTile':
        return ({key, leading, title, subtitle, trailing, isThreeLine = false, dense, visualDensity, shape, contentPadding, enabled = true, onTap, onLongPress, mouseCursor, selected = false, focusColor, hoverColor, focusNode, autofocus = false, tileColor, selectedTileColor, enableFeedback, horizontalTitleGap, minVerticalPadding, minLeadingWidth}) => ListTileObjectBinding(ListTile(key : key, leading : leading, title : title, subtitle : subtitle, trailing : trailing, isThreeLine : isThreeLine, dense : dense, visualDensity : visualDensity, shape : shape, contentPadding : contentPadding, enabled : enabled, onTap : onTap, onLongPress : onLongPress, mouseCursor : mouseCursor, selected : selected, focusColor : focusColor, hoverColor : hoverColor, focusNode : focusNode, autofocus : autofocus, tileColor : tileColor, selectedTileColor : selectedTileColor, enableFeedback : enableFeedback, horizontalTitleGap : horizontalTitleGap, minVerticalPadding : minVerticalPadding, minLeadingWidth : minLeadingWidth));
      case 'divideTiles':
        return ({context, tiles, color}) => ListTile.divideTiles(context : context, tiles : tiles, color : color);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ListTileObjectBinding extends HT_ExternObject<ListTile> {
  ListTileObjectBinding(ListTile value) : super(value);

  @override
  final typeid = HT_TypeId('ListTile');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'leading':
        return externObject.leading;
      case 'title':
        return externObject.title;
      case 'subtitle':
        return externObject.subtitle;
      case 'trailing':
        return externObject.trailing;
      case 'isThreeLine':
        return externObject.isThreeLine;
      case 'dense':
        return externObject.dense;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'shape':
        return externObject.shape;
      case 'contentPadding':
        return externObject.contentPadding;
      case 'enabled':
        return externObject.enabled;
      case 'onTap':
        return externObject.onTap;
      case 'onLongPress':
        return externObject.onLongPress;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'selected':
        return externObject.selected;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'tileColor':
        return externObject.tileColor;
      case 'selectedTileColor':
        return externObject.selectedTileColor;
      case 'enableFeedback':
        return externObject.enableFeedback;
      case 'horizontalTitleGap':
        return externObject.horizontalTitleGap;
      case 'minVerticalPadding':
        return externObject.minVerticalPadding;
      case 'minLeadingWidth':
        return externObject.minLeadingWidth;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

