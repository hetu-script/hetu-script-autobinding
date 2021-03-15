import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MaterialBannerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialBanner':
        return ({key, content, contentTextStyle, actions, leading, backgroundColor, padding, leadingPadding, forceActionsBelow = false, overflowAlignment = OverflowBarAlignment.end}) => MaterialBannerObjectBinding(MaterialBanner(key : key, content : content, contentTextStyle : contentTextStyle, actions : actions, leading : leading, backgroundColor : backgroundColor, padding : padding, leadingPadding : leadingPadding, forceActionsBelow : forceActionsBelow, overflowAlignment : overflowAlignment));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialBannerObjectBinding extends HT_ExternObject<MaterialBanner> {
  MaterialBannerObjectBinding(MaterialBanner value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialBanner');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'content':
        return externObject.content;
      case 'contentTextStyle':
        return externObject.contentTextStyle;
      case 'actions':
        return externObject.actions;
      case 'leading':
        return externObject.leading;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'padding':
        return externObject.padding;
      case 'leadingPadding':
        return externObject.leadingPadding;
      case 'forceActionsBelow':
        return externObject.forceActionsBelow;
      case 'overflowAlignment':
        return externObject.overflowAlignment;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

