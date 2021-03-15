import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
const _kMenuDividerHeight = 16.0;


class PopupMenuDividerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PopupMenuDivider':
        return ({key, height = _kMenuDividerHeight}) => PopupMenuDividerObjectBinding(PopupMenuDivider(key : key, height : height));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PopupMenuDividerObjectBinding extends HT_ExternObject<PopupMenuDivider> {
  PopupMenuDividerObjectBinding(PopupMenuDivider value) : super(value);

  @override
  final typeid = HT_TypeId('PopupMenuDivider');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'height':
        return externObject.height;
      case 'represents':
        return externObject.represents;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PopupMenuItemClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PopupMenuItem':
        return ({key, value, enabled = true, height = kMinInteractiveDimension, textStyle, mouseCursor, child}) => PopupMenuItemObjectBinding(PopupMenuItem(key : key, value : value, enabled : enabled, height : height, textStyle : textStyle, mouseCursor : mouseCursor, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PopupMenuItemObjectBinding extends HT_ExternObject<PopupMenuItem> {
  PopupMenuItemObjectBinding(PopupMenuItem value) : super(value);

  @override
  final typeid = HT_TypeId('PopupMenuItem');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'enabled':
        return externObject.enabled;
      case 'height':
        return externObject.height;
      case 'textStyle':
        return externObject.textStyle;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'child':
        return externObject.child;
      case 'represents':
        return externObject.represents;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PopupMenuItemStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PopupMenuItemState':
        return () => PopupMenuItemStateObjectBinding(PopupMenuItemState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PopupMenuItemStateObjectBinding extends HT_ExternObject<PopupMenuItemState> {
  PopupMenuItemStateObjectBinding(PopupMenuItemState value) : super(value);

  @override
  final typeid = HT_TypeId('PopupMenuItemState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'buildChild':
        return externObject.buildChild;
      case 'handleTap':
        return externObject.handleTap;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CheckedPopupMenuItemClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CheckedPopupMenuItem':
        return ({key, value, checked = false, enabled = true, child}) => CheckedPopupMenuItemObjectBinding(CheckedPopupMenuItem(key : key, value : value, checked : checked, enabled : enabled, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CheckedPopupMenuItemObjectBinding extends HT_ExternObject<CheckedPopupMenuItem> {
  CheckedPopupMenuItemObjectBinding(CheckedPopupMenuItem value) : super(value);

  @override
  final typeid = HT_TypeId('CheckedPopupMenuItem');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'checked':
        return externObject.checked;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PopupMenuButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PopupMenuButton':
        return ({key, itemBuilder, initialValue, onSelected, onCanceled, tooltip, elevation, padding = const EdgeInsets.all(8.0), child, icon, iconSize, offset = Offset.zero, enabled = true, shape, color, enableFeedback}) => PopupMenuButtonObjectBinding(PopupMenuButton(key : key, itemBuilder : itemBuilder, initialValue : initialValue, onSelected : onSelected, onCanceled : onCanceled, tooltip : tooltip, elevation : elevation, padding : padding, child : child, icon : icon, iconSize : iconSize, offset : offset, enabled : enabled, shape : shape, color : color, enableFeedback : enableFeedback));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PopupMenuButtonObjectBinding extends HT_ExternObject<PopupMenuButton> {
  PopupMenuButtonObjectBinding(PopupMenuButton value) : super(value);

  @override
  final typeid = HT_TypeId('PopupMenuButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemBuilder':
        return externObject.itemBuilder;
      case 'initialValue':
        return externObject.initialValue;
      case 'onSelected':
        return externObject.onSelected;
      case 'onCanceled':
        return externObject.onCanceled;
      case 'tooltip':
        return externObject.tooltip;
      case 'elevation':
        return externObject.elevation;
      case 'padding':
        return externObject.padding;
      case 'child':
        return externObject.child;
      case 'icon':
        return externObject.icon;
      case 'offset':
        return externObject.offset;
      case 'enabled':
        return externObject.enabled;
      case 'shape':
        return externObject.shape;
      case 'color':
        return externObject.color;
      case 'enableFeedback':
        return externObject.enableFeedback;
      case 'iconSize':
        return externObject.iconSize;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PopupMenuButtonStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PopupMenuButtonState':
        return () => PopupMenuButtonStateObjectBinding(PopupMenuButtonState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PopupMenuButtonStateObjectBinding extends HT_ExternObject<PopupMenuButtonState> {
  PopupMenuButtonStateObjectBinding(PopupMenuButtonState value) : super(value);

  @override
  final typeid = HT_TypeId('PopupMenuButtonState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'showButtonMenu':
        return externObject.showButtonMenu;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

