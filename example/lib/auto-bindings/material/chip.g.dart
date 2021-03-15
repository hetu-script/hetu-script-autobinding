import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class ChipClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Chip':
        return ({key, avatar, label, labelStyle, labelPadding, deleteIcon, onDeleted, deleteIconColor, useDeleteButtonTooltip = true, deleteButtonTooltipMessage, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor}) => ChipObjectBinding(Chip(key : key, avatar : avatar, label : label, labelStyle : labelStyle, labelPadding : labelPadding, deleteIcon : deleteIcon, onDeleted : onDeleted, deleteIconColor : deleteIconColor, useDeleteButtonTooltip : useDeleteButtonTooltip, deleteButtonTooltipMessage : deleteButtonTooltipMessage, side : side, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, backgroundColor : backgroundColor, padding : padding, visualDensity : visualDensity, materialTapTargetSize : materialTapTargetSize, elevation : elevation, shadowColor : shadowColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ChipObjectBinding extends HT_ExternObject<Chip> {
  ChipObjectBinding(Chip value) : super(value);

  @override
  final typeid = HT_TypeId('Chip');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'avatar':
        return externObject.avatar;
      case 'label':
        return externObject.label;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'labelPadding':
        return externObject.labelPadding;
      case 'side':
        return externObject.side;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'padding':
        return externObject.padding;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'deleteIcon':
        return externObject.deleteIcon;
      case 'onDeleted':
        return externObject.onDeleted;
      case 'deleteIconColor':
        return externObject.deleteIconColor;
      case 'useDeleteButtonTooltip':
        return externObject.useDeleteButtonTooltip;
      case 'deleteButtonTooltipMessage':
        return externObject.deleteButtonTooltipMessage;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'elevation':
        return externObject.elevation;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class InputChipClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InputChip':
        return ({key, avatar, label, labelStyle, labelPadding, selected = false, isEnabled = true, onSelected, deleteIcon, onDeleted, deleteIconColor, useDeleteButtonTooltip = true, deleteButtonTooltipMessage, onPressed, pressElevation, disabledColor, selectedColor, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, showCheckmark, checkmarkColor, avatarBorder = const CircleBorder()}) => InputChipObjectBinding(InputChip(key : key, avatar : avatar, label : label, labelStyle : labelStyle, labelPadding : labelPadding, selected : selected, isEnabled : isEnabled, onSelected : onSelected, deleteIcon : deleteIcon, onDeleted : onDeleted, deleteIconColor : deleteIconColor, useDeleteButtonTooltip : useDeleteButtonTooltip, deleteButtonTooltipMessage : deleteButtonTooltipMessage, onPressed : onPressed, pressElevation : pressElevation, disabledColor : disabledColor, selectedColor : selectedColor, tooltip : tooltip, side : side, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, backgroundColor : backgroundColor, padding : padding, visualDensity : visualDensity, materialTapTargetSize : materialTapTargetSize, elevation : elevation, shadowColor : shadowColor, selectedShadowColor : selectedShadowColor, showCheckmark : showCheckmark, checkmarkColor : checkmarkColor, avatarBorder : avatarBorder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InputChipObjectBinding extends HT_ExternObject<InputChip> {
  InputChipObjectBinding(InputChip value) : super(value);

  @override
  final typeid = HT_TypeId('InputChip');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'avatar':
        return externObject.avatar;
      case 'label':
        return externObject.label;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'labelPadding':
        return externObject.labelPadding;
      case 'selected':
        return externObject.selected;
      case 'isEnabled':
        return externObject.isEnabled;
      case 'onSelected':
        return externObject.onSelected;
      case 'deleteIcon':
        return externObject.deleteIcon;
      case 'onDeleted':
        return externObject.onDeleted;
      case 'deleteIconColor':
        return externObject.deleteIconColor;
      case 'useDeleteButtonTooltip':
        return externObject.useDeleteButtonTooltip;
      case 'deleteButtonTooltipMessage':
        return externObject.deleteButtonTooltipMessage;
      case 'onPressed':
        return externObject.onPressed;
      case 'pressElevation':
        return externObject.pressElevation;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'tooltip':
        return externObject.tooltip;
      case 'side':
        return externObject.side;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'padding':
        return externObject.padding;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'elevation':
        return externObject.elevation;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'selectedShadowColor':
        return externObject.selectedShadowColor;
      case 'showCheckmark':
        return externObject.showCheckmark;
      case 'checkmarkColor':
        return externObject.checkmarkColor;
      case 'avatarBorder':
        return externObject.avatarBorder;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ChoiceChipClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ChoiceChip':
        return ({key, avatar, label, labelStyle, labelPadding, onSelected, pressElevation, selected, selectedColor, disabledColor, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, avatarBorder = const CircleBorder()}) => ChoiceChipObjectBinding(ChoiceChip(key : key, avatar : avatar, label : label, labelStyle : labelStyle, labelPadding : labelPadding, onSelected : onSelected, pressElevation : pressElevation, selected : selected, selectedColor : selectedColor, disabledColor : disabledColor, tooltip : tooltip, side : side, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, backgroundColor : backgroundColor, padding : padding, visualDensity : visualDensity, materialTapTargetSize : materialTapTargetSize, elevation : elevation, shadowColor : shadowColor, selectedShadowColor : selectedShadowColor, avatarBorder : avatarBorder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ChoiceChipObjectBinding extends HT_ExternObject<ChoiceChip> {
  ChoiceChipObjectBinding(ChoiceChip value) : super(value);

  @override
  final typeid = HT_TypeId('ChoiceChip');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'avatar':
        return externObject.avatar;
      case 'label':
        return externObject.label;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'labelPadding':
        return externObject.labelPadding;
      case 'onSelected':
        return externObject.onSelected;
      case 'pressElevation':
        return externObject.pressElevation;
      case 'selected':
        return externObject.selected;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'tooltip':
        return externObject.tooltip;
      case 'side':
        return externObject.side;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'padding':
        return externObject.padding;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'elevation':
        return externObject.elevation;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'selectedShadowColor':
        return externObject.selectedShadowColor;
      case 'avatarBorder':
        return externObject.avatarBorder;
      case 'isEnabled':
        return externObject.isEnabled;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FilterChipClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FilterChip':
        return ({key, avatar, label, labelStyle, labelPadding, selected = false, onSelected, pressElevation, disabledColor, selectedColor, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, showCheckmark, checkmarkColor, avatarBorder = const CircleBorder()}) => FilterChipObjectBinding(FilterChip(key : key, avatar : avatar, label : label, labelStyle : labelStyle, labelPadding : labelPadding, selected : selected, onSelected : onSelected, pressElevation : pressElevation, disabledColor : disabledColor, selectedColor : selectedColor, tooltip : tooltip, side : side, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, backgroundColor : backgroundColor, padding : padding, visualDensity : visualDensity, materialTapTargetSize : materialTapTargetSize, elevation : elevation, shadowColor : shadowColor, selectedShadowColor : selectedShadowColor, showCheckmark : showCheckmark, checkmarkColor : checkmarkColor, avatarBorder : avatarBorder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FilterChipObjectBinding extends HT_ExternObject<FilterChip> {
  FilterChipObjectBinding(FilterChip value) : super(value);

  @override
  final typeid = HT_TypeId('FilterChip');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'avatar':
        return externObject.avatar;
      case 'label':
        return externObject.label;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'labelPadding':
        return externObject.labelPadding;
      case 'selected':
        return externObject.selected;
      case 'onSelected':
        return externObject.onSelected;
      case 'pressElevation':
        return externObject.pressElevation;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'tooltip':
        return externObject.tooltip;
      case 'side':
        return externObject.side;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'padding':
        return externObject.padding;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'elevation':
        return externObject.elevation;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'selectedShadowColor':
        return externObject.selectedShadowColor;
      case 'showCheckmark':
        return externObject.showCheckmark;
      case 'checkmarkColor':
        return externObject.checkmarkColor;
      case 'avatarBorder':
        return externObject.avatarBorder;
      case 'isEnabled':
        return externObject.isEnabled;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ActionChipClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ActionChip':
        return ({key, avatar, label, labelStyle, labelPadding, onPressed, pressElevation, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor}) => ActionChipObjectBinding(ActionChip(key : key, avatar : avatar, label : label, labelStyle : labelStyle, labelPadding : labelPadding, onPressed : onPressed, pressElevation : pressElevation, tooltip : tooltip, side : side, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, backgroundColor : backgroundColor, padding : padding, visualDensity : visualDensity, materialTapTargetSize : materialTapTargetSize, elevation : elevation, shadowColor : shadowColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ActionChipObjectBinding extends HT_ExternObject<ActionChip> {
  ActionChipObjectBinding(ActionChip value) : super(value);

  @override
  final typeid = HT_TypeId('ActionChip');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'avatar':
        return externObject.avatar;
      case 'label':
        return externObject.label;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'labelPadding':
        return externObject.labelPadding;
      case 'onPressed':
        return externObject.onPressed;
      case 'pressElevation':
        return externObject.pressElevation;
      case 'tooltip':
        return externObject.tooltip;
      case 'side':
        return externObject.side;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'padding':
        return externObject.padding;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'elevation':
        return externObject.elevation;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RawChipClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawChip':
        return ({key, avatar, label, labelStyle, padding, visualDensity, labelPadding, deleteIcon, onDeleted, deleteIconColor, useDeleteButtonTooltip = true, deleteButtonTooltipMessage, onPressed, onSelected, pressElevation, tapEnabled = true, selected = false, isEnabled = true, disabledColor, selectedColor, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, showCheckmark = true, checkmarkColor, avatarBorder = const CircleBorder()}) => RawChipObjectBinding(RawChip(key : key, avatar : avatar, label : label, labelStyle : labelStyle, padding : padding, visualDensity : visualDensity, labelPadding : labelPadding, deleteIcon : deleteIcon, onDeleted : onDeleted, deleteIconColor : deleteIconColor, useDeleteButtonTooltip : useDeleteButtonTooltip, deleteButtonTooltipMessage : deleteButtonTooltipMessage, onPressed : onPressed, onSelected : onSelected, pressElevation : pressElevation, tapEnabled : tapEnabled, selected : selected, isEnabled : isEnabled, disabledColor : disabledColor, selectedColor : selectedColor, tooltip : tooltip, side : side, shape : shape, clipBehavior : clipBehavior, focusNode : focusNode, autofocus : autofocus, backgroundColor : backgroundColor, materialTapTargetSize : materialTapTargetSize, elevation : elevation, shadowColor : shadowColor, selectedShadowColor : selectedShadowColor, showCheckmark : showCheckmark, checkmarkColor : checkmarkColor, avatarBorder : avatarBorder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawChipObjectBinding extends HT_ExternObject<RawChip> {
  RawChipObjectBinding(RawChip value) : super(value);

  @override
  final typeid = HT_TypeId('RawChip');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'avatar':
        return externObject.avatar;
      case 'label':
        return externObject.label;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'labelPadding':
        return externObject.labelPadding;
      case 'deleteIcon':
        return externObject.deleteIcon;
      case 'onDeleted':
        return externObject.onDeleted;
      case 'deleteIconColor':
        return externObject.deleteIconColor;
      case 'useDeleteButtonTooltip':
        return externObject.useDeleteButtonTooltip;
      case 'deleteButtonTooltipMessage':
        return externObject.deleteButtonTooltipMessage;
      case 'onSelected':
        return externObject.onSelected;
      case 'onPressed':
        return externObject.onPressed;
      case 'pressElevation':
        return externObject.pressElevation;
      case 'selected':
        return externObject.selected;
      case 'isEnabled':
        return externObject.isEnabled;
      case 'disabledColor':
        return externObject.disabledColor;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'tooltip':
        return externObject.tooltip;
      case 'side':
        return externObject.side;
      case 'shape':
        return externObject.shape;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'padding':
        return externObject.padding;
      case 'visualDensity':
        return externObject.visualDensity;
      case 'materialTapTargetSize':
        return externObject.materialTapTargetSize;
      case 'elevation':
        return externObject.elevation;
      case 'shadowColor':
        return externObject.shadowColor;
      case 'selectedShadowColor':
        return externObject.selectedShadowColor;
      case 'showCheckmark':
        return externObject.showCheckmark;
      case 'checkmarkColor':
        return externObject.checkmarkColor;
      case 'avatarBorder':
        return externObject.avatarBorder;
      case 'tapEnabled':
        return externObject.tapEnabled;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

