import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class DropdownMenuItemClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DropdownMenuItem':
        return ({key, onTap, value, child}) => DropdownMenuItemObjectBinding(DropdownMenuItem(key : key, onTap : onTap, value : value, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DropdownMenuItemObjectBinding extends HT_ExternObject<DropdownMenuItem> {
  DropdownMenuItemObjectBinding(DropdownMenuItem value) : super(value);

  @override
  final typeid = HT_TypeId('DropdownMenuItem');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onTap':
        return externObject.onTap;
      case 'value':
        return externObject.value;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DropdownButtonHideUnderlineClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DropdownButtonHideUnderline':
        return ({key, child}) => DropdownButtonHideUnderlineObjectBinding(DropdownButtonHideUnderline(key : key, child : child));
      case 'at':
        return (context) => DropdownButtonHideUnderline.at(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DropdownButtonHideUnderlineObjectBinding extends HT_ExternObject<DropdownButtonHideUnderline> {
  DropdownButtonHideUnderlineObjectBinding(DropdownButtonHideUnderline value) : super(value);

  @override
  final typeid = HT_TypeId('DropdownButtonHideUnderline');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DropdownButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DropdownButton':
        return ({key, items, selectedItemBuilder, value, hint, disabledHint, onChanged, onTap, elevation = 8, style, underline, icon, iconDisabledColor, iconEnabledColor, iconSize = 24.0, isDense = false, isExpanded = false, itemHeight = kMinInteractiveDimension, focusColor, focusNode, autofocus = false, dropdownColor}) => DropdownButtonObjectBinding(DropdownButton(key : key, items : items, selectedItemBuilder : selectedItemBuilder, value : value, hint : hint, disabledHint : disabledHint, onChanged : onChanged, onTap : onTap, elevation : elevation, style : style, underline : underline, icon : icon, iconDisabledColor : iconDisabledColor, iconEnabledColor : iconEnabledColor, iconSize : iconSize, isDense : isDense, isExpanded : isExpanded, itemHeight : itemHeight, focusColor : focusColor, focusNode : focusNode, autofocus : autofocus, dropdownColor : dropdownColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DropdownButtonObjectBinding extends HT_ExternObject<DropdownButton> {
  DropdownButtonObjectBinding(DropdownButton value) : super(value);

  @override
  final typeid = HT_TypeId('DropdownButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'items':
        return externObject.items;
      case 'value':
        return externObject.value;
      case 'hint':
        return externObject.hint;
      case 'disabledHint':
        return externObject.disabledHint;
      case 'onChanged':
        return externObject.onChanged;
      case 'onTap':
        return externObject.onTap;
      case 'selectedItemBuilder':
        return externObject.selectedItemBuilder;
      case 'elevation':
        return externObject.elevation;
      case 'style':
        return externObject.style;
      case 'underline':
        return externObject.underline;
      case 'icon':
        return externObject.icon;
      case 'iconDisabledColor':
        return externObject.iconDisabledColor;
      case 'iconEnabledColor':
        return externObject.iconEnabledColor;
      case 'iconSize':
        return externObject.iconSize;
      case 'isDense':
        return externObject.isDense;
      case 'isExpanded':
        return externObject.isExpanded;
      case 'itemHeight':
        return externObject.itemHeight;
      case 'focusColor':
        return externObject.focusColor;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'dropdownColor':
        return externObject.dropdownColor;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DropdownButtonFormFieldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DropdownButtonFormField':
        return ({key, items, selectedItemBuilder, value, hint, disabledHint, onChanged, onTap, elevation = 8, style, icon, iconDisabledColor, iconEnabledColor, iconSize = 24.0, isDense = true, isExpanded = false, itemHeight, focusColor, focusNode, autofocus = false, dropdownColor, decoration, onSaved, validator, autovalidate = false, autovalidateMode}) => DropdownButtonFormFieldObjectBinding(DropdownButtonFormField(key : key, items : items, selectedItemBuilder : selectedItemBuilder, value : value, hint : hint, disabledHint : disabledHint, onChanged : onChanged, onTap : onTap, elevation : elevation, style : style, icon : icon, iconDisabledColor : iconDisabledColor, iconEnabledColor : iconEnabledColor, iconSize : iconSize, isDense : isDense, isExpanded : isExpanded, itemHeight : itemHeight, focusColor : focusColor, focusNode : focusNode, autofocus : autofocus, dropdownColor : dropdownColor, decoration : decoration, onSaved : onSaved, validator : validator, autovalidate : autovalidate, autovalidateMode : autovalidateMode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DropdownButtonFormFieldObjectBinding extends HT_ExternObject<DropdownButtonFormField> {
  DropdownButtonFormFieldObjectBinding(DropdownButtonFormField value) : super(value);

  @override
  final typeid = HT_TypeId('DropdownButtonFormField');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onChanged':
        return externObject.onChanged;
      case 'decoration':
        return externObject.decoration;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

