import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

class TabBarIndicatorSizeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tab':
        return TabBarIndicatorSize.tab;
      case 'label':
        return TabBarIndicatorSize.label;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TabClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Tab':
        return ({key, text, icon, iconMargin = const EdgeInsets.only(bottom: 10.0), child}) => TabObjectBinding(Tab(key : key, text : text, icon : icon, iconMargin : iconMargin, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TabObjectBinding extends HT_ExternObject<Tab> {
  TabObjectBinding(Tab value) : super(value);

  @override
  final typeid = HT_TypeId('Tab');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'text':
        return externObject.text;
      case 'child':
        return externObject.child;
      case 'icon':
        return externObject.icon;
      case 'iconMargin':
        return externObject.iconMargin;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TabBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TabBar':
        return ({key, tabs, controller, isScrollable = false, indicatorColor, automaticIndicatorColorAdjustment = true, indicatorWeight = 2.0, indicatorPadding = EdgeInsets.zero, indicator, indicatorSize, labelColor, labelStyle, labelPadding, unselectedLabelColor, unselectedLabelStyle, dragStartBehavior = DragStartBehavior.start, overlayColor, mouseCursor, enableFeedback, onTap, physics}) => TabBarObjectBinding(TabBar(key : key, tabs : tabs, controller : controller, isScrollable : isScrollable, indicatorColor : indicatorColor, automaticIndicatorColorAdjustment : automaticIndicatorColorAdjustment, indicatorWeight : indicatorWeight, indicatorPadding : indicatorPadding, indicator : indicator, indicatorSize : indicatorSize, labelColor : labelColor, labelStyle : labelStyle, labelPadding : labelPadding, unselectedLabelColor : unselectedLabelColor, unselectedLabelStyle : unselectedLabelStyle, dragStartBehavior : dragStartBehavior, overlayColor : overlayColor, mouseCursor : mouseCursor, enableFeedback : enableFeedback, onTap : onTap, physics : physics));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TabBarObjectBinding extends HT_ExternObject<TabBar> {
  TabBarObjectBinding(TabBar value) : super(value);

  @override
  final typeid = HT_TypeId('TabBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tabs':
        return externObject.tabs;
      case 'controller':
        return externObject.controller;
      case 'isScrollable':
        return externObject.isScrollable;
      case 'indicatorColor':
        return externObject.indicatorColor;
      case 'indicatorWeight':
        return externObject.indicatorWeight;
      case 'indicatorPadding':
        return externObject.indicatorPadding;
      case 'indicator':
        return externObject.indicator;
      case 'automaticIndicatorColorAdjustment':
        return externObject.automaticIndicatorColorAdjustment;
      case 'indicatorSize':
        return externObject.indicatorSize;
      case 'labelColor':
        return externObject.labelColor;
      case 'unselectedLabelColor':
        return externObject.unselectedLabelColor;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'labelPadding':
        return externObject.labelPadding;
      case 'unselectedLabelStyle':
        return externObject.unselectedLabelStyle;
      case 'overlayColor':
        return externObject.overlayColor;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'enableFeedback':
        return externObject.enableFeedback;
      case 'onTap':
        return externObject.onTap;
      case 'physics':
        return externObject.physics;
      case 'preferredSize':
        return externObject.preferredSize;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TabBarViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TabBarView':
        return ({key, children, controller, physics, dragStartBehavior = DragStartBehavior.start}) => TabBarViewObjectBinding(TabBarView(key : key, children : children, controller : controller, physics : physics, dragStartBehavior : dragStartBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TabBarViewObjectBinding extends HT_ExternObject<TabBarView> {
  TabBarViewObjectBinding(TabBarView value) : super(value);

  @override
  final typeid = HT_TypeId('TabBarView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'children':
        return externObject.children;
      case 'physics':
        return externObject.physics;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TabPageSelectorIndicatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TabPageSelectorIndicator':
        return ({key, backgroundColor, borderColor, size}) => TabPageSelectorIndicatorObjectBinding(TabPageSelectorIndicator(key : key, backgroundColor : backgroundColor, borderColor : borderColor, size : size));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TabPageSelectorIndicatorObjectBinding extends HT_ExternObject<TabPageSelectorIndicator> {
  TabPageSelectorIndicatorObjectBinding(TabPageSelectorIndicator value) : super(value);

  @override
  final typeid = HT_TypeId('TabPageSelectorIndicator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'borderColor':
        return externObject.borderColor;
      case 'size':
        return externObject.size;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TabPageSelectorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TabPageSelector':
        return ({key, controller, indicatorSize = 12.0, color, selectedColor}) => TabPageSelectorObjectBinding(TabPageSelector(key : key, controller : controller, indicatorSize : indicatorSize, color : color, selectedColor : selectedColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TabPageSelectorObjectBinding extends HT_ExternObject<TabPageSelector> {
  TabPageSelectorObjectBinding(TabPageSelector value) : super(value);

  @override
  final typeid = HT_TypeId('TabPageSelector');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'indicatorSize':
        return externObject.indicatorSize;
      case 'color':
        return externObject.color;
      case 'selectedColor':
        return externObject.selectedColor;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

