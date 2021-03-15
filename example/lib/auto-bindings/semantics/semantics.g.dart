import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/semantics.dart';
import 'dart:math'as math;
import 'dart:typed_data';
import 'dart:ui'as ui;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class DebugSemanticsDumpOrderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'inverseHitTest':
        return DebugSemanticsDumpOrder.inverseHitTest;
      case 'traversalOrder':
        return DebugSemanticsDumpOrder.traversalOrder;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsTagClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsTag':
        return (name) => SemanticsTagObjectBinding(SemanticsTag(name));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsTagObjectBinding extends HT_ExternObject<SemanticsTag> {
  SemanticsTagObjectBinding(SemanticsTag value) : super(value);

  @override
  final typeid = HT_TypeId('SemanticsTag');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'name':
        return externObject.name;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CustomSemanticsActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CustomSemanticsAction':
        return ({label}) => CustomSemanticsActionObjectBinding(CustomSemanticsAction(label : label));
      case 'CustomSemanticsAction.overridingAction':
        return ({hint, action}) => CustomSemanticsActionObjectBinding(CustomSemanticsAction.overridingAction(hint : hint, action : action));
      case 'getIdentifier':
        return (action) => CustomSemanticsAction.getIdentifier(action);
      case 'getAction':
        return (id) => CustomSemanticsAction.getAction(id);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CustomSemanticsActionObjectBinding extends HT_ExternObject<CustomSemanticsAction> {
  CustomSemanticsActionObjectBinding(CustomSemanticsAction value) : super(value);

  @override
  final typeid = HT_TypeId('CustomSemanticsAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'label':
        return externObject.label;
      case 'hint':
        return externObject.hint;
      case 'action':
        return externObject.action;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SemanticsDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsData':
        return ({flags, actions, label, increasedValue, value, decreasedValue, hint, textDirection, rect, elevation, thickness, textSelection, scrollIndex, scrollChildCount, scrollPosition, scrollExtentMax, scrollExtentMin, platformViewId, maxValueLength, currentValueLength, tags, transform, customSemanticsActionIds}) => SemanticsDataObjectBinding(SemanticsData(flags : flags, actions : actions, label : label, increasedValue : increasedValue, value : value, decreasedValue : decreasedValue, hint : hint, textDirection : textDirection, rect : rect, elevation : elevation, thickness : thickness, textSelection : textSelection, scrollIndex : scrollIndex, scrollChildCount : scrollChildCount, scrollPosition : scrollPosition, scrollExtentMax : scrollExtentMax, scrollExtentMin : scrollExtentMin, platformViewId : platformViewId, maxValueLength : maxValueLength, currentValueLength : currentValueLength, tags : tags, transform : transform, customSemanticsActionIds : customSemanticsActionIds));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsDataObjectBinding extends HT_ExternObject<SemanticsData> {
  SemanticsDataObjectBinding(SemanticsData value) : super(value);

  @override
  final typeid = HT_TypeId('SemanticsData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'flags':
        return externObject.flags;
      case 'actions':
        return externObject.actions;
      case 'label':
        return externObject.label;
      case 'value':
        return externObject.value;
      case 'increasedValue':
        return externObject.increasedValue;
      case 'decreasedValue':
        return externObject.decreasedValue;
      case 'hint':
        return externObject.hint;
      case 'textDirection':
        return externObject.textDirection;
      case 'textSelection':
        return externObject.textSelection;
      case 'scrollChildCount':
        return externObject.scrollChildCount;
      case 'scrollIndex':
        return externObject.scrollIndex;
      case 'scrollPosition':
        return externObject.scrollPosition;
      case 'scrollExtentMax':
        return externObject.scrollExtentMax;
      case 'scrollExtentMin':
        return externObject.scrollExtentMin;
      case 'platformViewId':
        return externObject.platformViewId;
      case 'maxValueLength':
        return externObject.maxValueLength;
      case 'currentValueLength':
        return externObject.currentValueLength;
      case 'rect':
        return externObject.rect;
      case 'tags':
        return externObject.tags;
      case 'transform':
        return externObject.transform;
      case 'elevation':
        return externObject.elevation;
      case 'thickness':
        return externObject.thickness;
      case 'customSemanticsActionIds':
        return externObject.customSemanticsActionIds;
      case 'hashCode':
        return externObject.hashCode;
      case 'hasFlag':
        return externObject.hasFlag;
      case 'hasAction':
        return externObject.hasAction;
      case 'toStringShort':
        return externObject.toStringShort;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SemanticsHintOverridesClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsHintOverrides':
        return ({onTapHint, onLongPressHint}) => SemanticsHintOverridesObjectBinding(SemanticsHintOverrides(onTapHint : onTapHint, onLongPressHint : onLongPressHint));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsHintOverridesObjectBinding extends HT_ExternObject<SemanticsHintOverrides> {
  SemanticsHintOverridesObjectBinding(SemanticsHintOverrides value) : super(value);

  @override
  final typeid = HT_TypeId('SemanticsHintOverrides');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onTapHint':
        return externObject.onTapHint;
      case 'onLongPressHint':
        return externObject.onLongPressHint;
      case 'isNotEmpty':
        return externObject.isNotEmpty;
      case 'hashCode':
        return externObject.hashCode;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SemanticsPropertiesClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsProperties':
        return ({enabled, checked, selected, toggled, button, link, header, textField, slider, readOnly, focusable, focused, inMutuallyExclusiveGroup, hidden, obscured, multiline, scopesRoute, namesRoute, image, liveRegion, maxValueLength, currentValueLength, label, value, increasedValue, decreasedValue, hint, hintOverrides, textDirection, sortKey, tagForChildren, onTap, onLongPress, onScrollLeft, onScrollRight, onScrollUp, onScrollDown, onIncrease, onDecrease, onCopy, onCut, onPaste, onMoveCursorForwardByCharacter, onMoveCursorBackwardByCharacter, onMoveCursorForwardByWord, onMoveCursorBackwardByWord, onSetSelection, onDidGainAccessibilityFocus, onDidLoseAccessibilityFocus, onDismiss, customSemanticsActions}) => SemanticsPropertiesObjectBinding(SemanticsProperties(enabled : enabled, checked : checked, selected : selected, toggled : toggled, button : button, link : link, header : header, textField : textField, slider : slider, readOnly : readOnly, focusable : focusable, focused : focused, inMutuallyExclusiveGroup : inMutuallyExclusiveGroup, hidden : hidden, obscured : obscured, multiline : multiline, scopesRoute : scopesRoute, namesRoute : namesRoute, image : image, liveRegion : liveRegion, maxValueLength : maxValueLength, currentValueLength : currentValueLength, label : label, value : value, increasedValue : increasedValue, decreasedValue : decreasedValue, hint : hint, hintOverrides : hintOverrides, textDirection : textDirection, sortKey : sortKey, tagForChildren : tagForChildren, onTap : onTap, onLongPress : onLongPress, onScrollLeft : onScrollLeft, onScrollRight : onScrollRight, onScrollUp : onScrollUp, onScrollDown : onScrollDown, onIncrease : onIncrease, onDecrease : onDecrease, onCopy : onCopy, onCut : onCut, onPaste : onPaste, onMoveCursorForwardByCharacter : onMoveCursorForwardByCharacter, onMoveCursorBackwardByCharacter : onMoveCursorBackwardByCharacter, onMoveCursorForwardByWord : onMoveCursorForwardByWord, onMoveCursorBackwardByWord : onMoveCursorBackwardByWord, onSetSelection : onSetSelection, onDidGainAccessibilityFocus : onDidGainAccessibilityFocus, onDidLoseAccessibilityFocus : onDidLoseAccessibilityFocus, onDismiss : onDismiss, customSemanticsActions : customSemanticsActions));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsPropertiesObjectBinding extends HT_ExternObject<SemanticsProperties> {
  SemanticsPropertiesObjectBinding(SemanticsProperties value) : super(value);

  @override
  final typeid = HT_TypeId('SemanticsProperties');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'enabled':
        return externObject.enabled;
      case 'checked':
        return externObject.checked;
      case 'toggled':
        return externObject.toggled;
      case 'selected':
        return externObject.selected;
      case 'button':
        return externObject.button;
      case 'link':
        return externObject.link;
      case 'header':
        return externObject.header;
      case 'textField':
        return externObject.textField;
      case 'slider':
        return externObject.slider;
      case 'readOnly':
        return externObject.readOnly;
      case 'focusable':
        return externObject.focusable;
      case 'focused':
        return externObject.focused;
      case 'inMutuallyExclusiveGroup':
        return externObject.inMutuallyExclusiveGroup;
      case 'hidden':
        return externObject.hidden;
      case 'obscured':
        return externObject.obscured;
      case 'multiline':
        return externObject.multiline;
      case 'scopesRoute':
        return externObject.scopesRoute;
      case 'namesRoute':
        return externObject.namesRoute;
      case 'image':
        return externObject.image;
      case 'liveRegion':
        return externObject.liveRegion;
      case 'maxValueLength':
        return externObject.maxValueLength;
      case 'currentValueLength':
        return externObject.currentValueLength;
      case 'label':
        return externObject.label;
      case 'value':
        return externObject.value;
      case 'increasedValue':
        return externObject.increasedValue;
      case 'decreasedValue':
        return externObject.decreasedValue;
      case 'hint':
        return externObject.hint;
      case 'hintOverrides':
        return externObject.hintOverrides;
      case 'textDirection':
        return externObject.textDirection;
      case 'sortKey':
        return externObject.sortKey;
      case 'tagForChildren':
        return externObject.tagForChildren;
      case 'onTap':
        return externObject.onTap;
      case 'onLongPress':
        return externObject.onLongPress;
      case 'onScrollLeft':
        return externObject.onScrollLeft;
      case 'onScrollRight':
        return externObject.onScrollRight;
      case 'onScrollUp':
        return externObject.onScrollUp;
      case 'onScrollDown':
        return externObject.onScrollDown;
      case 'onIncrease':
        return externObject.onIncrease;
      case 'onDecrease':
        return externObject.onDecrease;
      case 'onCopy':
        return externObject.onCopy;
      case 'onCut':
        return externObject.onCut;
      case 'onPaste':
        return externObject.onPaste;
      case 'onMoveCursorForwardByCharacter':
        return externObject.onMoveCursorForwardByCharacter;
      case 'onMoveCursorBackwardByCharacter':
        return externObject.onMoveCursorBackwardByCharacter;
      case 'onMoveCursorForwardByWord':
        return externObject.onMoveCursorForwardByWord;
      case 'onMoveCursorBackwardByWord':
        return externObject.onMoveCursorBackwardByWord;
      case 'onSetSelection':
        return externObject.onSetSelection;
      case 'onDidGainAccessibilityFocus':
        return externObject.onDidGainAccessibilityFocus;
      case 'onDidLoseAccessibilityFocus':
        return externObject.onDidLoseAccessibilityFocus;
      case 'onDismiss':
        return externObject.onDismiss;
      case 'customSemanticsActions':
        return externObject.customSemanticsActions;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'toStringShort':
        return externObject.toStringShort;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SemanticsNodeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsNode':
        return ({key, showOnScreen}) => SemanticsNodeObjectBinding(SemanticsNode(key : key, showOnScreen : showOnScreen));
      case 'SemanticsNode.root':
        return ({key, showOnScreen, owner}) => SemanticsNodeObjectBinding(SemanticsNode.root(key : key, showOnScreen : showOnScreen, owner : owner));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsNodeObjectBinding extends HT_ExternObject<SemanticsNode> {
  SemanticsNodeObjectBinding(SemanticsNode value) : super(value);

  @override
  final typeid = HT_TypeId('SemanticsNode');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'key':
        return externObject.key;
      case 'id':
        return externObject.id;
      case 'parentSemanticsClipRect':
        return externObject.parentSemanticsClipRect;
      case 'parentPaintClipRect':
        return externObject.parentPaintClipRect;
      case 'elevationAdjustment':
        return externObject.elevationAdjustment;
      case 'indexInParent':
        return externObject.indexInParent;
      case 'tags':
        return externObject.tags;
      case 'transform':
        return externObject.transform;
      case 'rect':
        return externObject.rect;
      case 'isInvisible':
        return externObject.isInvisible;
      case 'isMergedIntoParent':
        return externObject.isMergedIntoParent;
      case 'isPartOfNodeMerging':
        return externObject.isPartOfNodeMerging;
      case 'mergeAllDescendantsIntoThisNode':
        return externObject.mergeAllDescendantsIntoThisNode;
      case 'hasChildren':
        return externObject.hasChildren;
      case 'childrenCount':
        return externObject.childrenCount;
      case 'owner':
        return externObject.owner;
      case 'parent':
        return externObject.parent;
      case 'label':
        return externObject.label;
      case 'value':
        return externObject.value;
      case 'decreasedValue':
        return externObject.decreasedValue;
      case 'increasedValue':
        return externObject.increasedValue;
      case 'hint':
        return externObject.hint;
      case 'elevation':
        return externObject.elevation;
      case 'thickness':
        return externObject.thickness;
      case 'hintOverrides':
        return externObject.hintOverrides;
      case 'textDirection':
        return externObject.textDirection;
      case 'sortKey':
        return externObject.sortKey;
      case 'textSelection':
        return externObject.textSelection;
      case 'isMultiline':
        return externObject.isMultiline;
      case 'scrollChildCount':
        return externObject.scrollChildCount;
      case 'scrollIndex':
        return externObject.scrollIndex;
      case 'scrollPosition':
        return externObject.scrollPosition;
      case 'scrollExtentMax':
        return externObject.scrollExtentMax;
      case 'scrollExtentMin':
        return externObject.scrollExtentMin;
      case 'platformViewId':
        return externObject.platformViewId;
      case 'maxValueLength':
        return externObject.maxValueLength;
      case 'currentValueLength':
        return externObject.currentValueLength;
      case 'visitChildren':
        return externObject.visitChildren;
      case 'redepthChildren':
        return externObject.redepthChildren;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'isTagged':
        return externObject.isTagged;
      case 'hasFlag':
        return externObject.hasFlag;
      case 'updateWith':
        return externObject.updateWith;
      case 'getSemanticsData':
        return externObject.getSemanticsData;
      case 'sendEvent':
        return externObject.sendEvent;
      case 'toStringShort':
        return externObject.toStringShort;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'toStringDeep':
        return externObject.toStringDeep;
      case 'toDiagnosticsNode':
        return externObject.toDiagnosticsNode;
      case 'debugDescribeChildren':
        return externObject.debugDescribeChildren;
      case 'debugListChildrenInOrder':
        return externObject.debugListChildrenInOrder;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'parentSemanticsClipRect':
        externObject.parentSemanticsClipRect = value;
        break;
      case 'parentPaintClipRect':
        externObject.parentPaintClipRect = value;
        break;
      case 'elevationAdjustment':
        externObject.elevationAdjustment = value;
        break;
      case 'indexInParent':
        externObject.indexInParent = value;
        break;
      case 'tags':
        externObject.tags = value;
        break;
      case 'transform':
        externObject.transform = value;
        break;
      case 'rect':
        externObject.rect = value;
        break;
      case 'isMergedIntoParent':
        externObject.isMergedIntoParent = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsOwnerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsOwner':
        return () => SemanticsOwnerObjectBinding(SemanticsOwner());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsOwnerObjectBinding extends HT_ExternObject<SemanticsOwner> {
  SemanticsOwnerObjectBinding(SemanticsOwner value) : super(value);

  @override
  final typeid = HT_TypeId('SemanticsOwner');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'rootSemanticsNode':
        return externObject.rootSemanticsNode;
      case 'dispose':
        return externObject.dispose;
      case 'sendSemanticsUpdate':
        return externObject.sendSemanticsUpdate;
      case 'performAction':
        return externObject.performAction;
      case 'performActionAt':
        return externObject.performActionAt;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SemanticsConfigurationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsConfiguration':
        return () => SemanticsConfigurationObjectBinding(SemanticsConfiguration());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsConfigurationObjectBinding extends HT_ExternObject<SemanticsConfiguration> {
  SemanticsConfigurationObjectBinding(SemanticsConfiguration value) : super(value);

  @override
  final typeid = HT_TypeId('SemanticsConfiguration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'explicitChildNodes':
        return externObject.explicitChildNodes;
      case 'isBlockingSemanticsOfPreviouslyPaintedNodes':
        return externObject.isBlockingSemanticsOfPreviouslyPaintedNodes;
      case 'isSemanticBoundary':
        return externObject.isSemanticBoundary;
      case 'hasBeenAnnotated':
        return externObject.hasBeenAnnotated;
      case 'onTap':
        return externObject.onTap;
      case 'onLongPress':
        return externObject.onLongPress;
      case 'onScrollLeft':
        return externObject.onScrollLeft;
      case 'onDismiss':
        return externObject.onDismiss;
      case 'onScrollRight':
        return externObject.onScrollRight;
      case 'onScrollUp':
        return externObject.onScrollUp;
      case 'onScrollDown':
        return externObject.onScrollDown;
      case 'onIncrease':
        return externObject.onIncrease;
      case 'onDecrease':
        return externObject.onDecrease;
      case 'onCopy':
        return externObject.onCopy;
      case 'onCut':
        return externObject.onCut;
      case 'onPaste':
        return externObject.onPaste;
      case 'onShowOnScreen':
        return externObject.onShowOnScreen;
      case 'onMoveCursorForwardByCharacter':
        return externObject.onMoveCursorForwardByCharacter;
      case 'onMoveCursorBackwardByCharacter':
        return externObject.onMoveCursorBackwardByCharacter;
      case 'onMoveCursorForwardByWord':
        return externObject.onMoveCursorForwardByWord;
      case 'onMoveCursorBackwardByWord':
        return externObject.onMoveCursorBackwardByWord;
      case 'onSetSelection':
        return externObject.onSetSelection;
      case 'onDidGainAccessibilityFocus':
        return externObject.onDidGainAccessibilityFocus;
      case 'onDidLoseAccessibilityFocus':
        return externObject.onDidLoseAccessibilityFocus;
      case 'sortKey':
        return externObject.sortKey;
      case 'indexInParent':
        return externObject.indexInParent;
      case 'scrollChildCount':
        return externObject.scrollChildCount;
      case 'scrollIndex':
        return externObject.scrollIndex;
      case 'platformViewId':
        return externObject.platformViewId;
      case 'maxValueLength':
        return externObject.maxValueLength;
      case 'currentValueLength':
        return externObject.currentValueLength;
      case 'isMergingSemanticsOfDescendants':
        return externObject.isMergingSemanticsOfDescendants;
      case 'customSemanticsActions':
        return externObject.customSemanticsActions;
      case 'label':
        return externObject.label;
      case 'value':
        return externObject.value;
      case 'decreasedValue':
        return externObject.decreasedValue;
      case 'increasedValue':
        return externObject.increasedValue;
      case 'hint':
        return externObject.hint;
      case 'hintOverrides':
        return externObject.hintOverrides;
      case 'elevation':
        return externObject.elevation;
      case 'thickness':
        return externObject.thickness;
      case 'scopesRoute':
        return externObject.scopesRoute;
      case 'namesRoute':
        return externObject.namesRoute;
      case 'isImage':
        return externObject.isImage;
      case 'liveRegion':
        return externObject.liveRegion;
      case 'textDirection':
        return externObject.textDirection;
      case 'isSelected':
        return externObject.isSelected;
      case 'isEnabled':
        return externObject.isEnabled;
      case 'isChecked':
        return externObject.isChecked;
      case 'isToggled':
        return externObject.isToggled;
      case 'isInMutuallyExclusiveGroup':
        return externObject.isInMutuallyExclusiveGroup;
      case 'isFocusable':
        return externObject.isFocusable;
      case 'isFocused':
        return externObject.isFocused;
      case 'isButton':
        return externObject.isButton;
      case 'isLink':
        return externObject.isLink;
      case 'isHeader':
        return externObject.isHeader;
      case 'isSlider':
        return externObject.isSlider;
      case 'isHidden':
        return externObject.isHidden;
      case 'isTextField':
        return externObject.isTextField;
      case 'isReadOnly':
        return externObject.isReadOnly;
      case 'isObscured':
        return externObject.isObscured;
      case 'isMultiline':
        return externObject.isMultiline;
      case 'hasImplicitScrolling':
        return externObject.hasImplicitScrolling;
      case 'textSelection':
        return externObject.textSelection;
      case 'scrollPosition':
        return externObject.scrollPosition;
      case 'scrollExtentMax':
        return externObject.scrollExtentMax;
      case 'scrollExtentMin':
        return externObject.scrollExtentMin;
      case 'tagsForChildren':
        return externObject.tagsForChildren;
      case 'getActionHandler':
        return externObject.getActionHandler;
      case 'addTagForChildren':
        return externObject.addTagForChildren;
      case 'isCompatibleWith':
        return externObject.isCompatibleWith;
      case 'absorb':
        return externObject.absorb;
      case 'copy':
        return externObject.copy;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'explicitChildNodes':
        externObject.explicitChildNodes = value;
        break;
      case 'isBlockingSemanticsOfPreviouslyPaintedNodes':
        externObject.isBlockingSemanticsOfPreviouslyPaintedNodes = value;
        break;
      case 'isSemanticBoundary':
        externObject.isSemanticBoundary = value;
        break;
      case 'onTap':
        externObject.onTap = value;
        break;
      case 'onLongPress':
        externObject.onLongPress = value;
        break;
      case 'onScrollLeft':
        externObject.onScrollLeft = value;
        break;
      case 'onDismiss':
        externObject.onDismiss = value;
        break;
      case 'onScrollRight':
        externObject.onScrollRight = value;
        break;
      case 'onScrollUp':
        externObject.onScrollUp = value;
        break;
      case 'onScrollDown':
        externObject.onScrollDown = value;
        break;
      case 'onIncrease':
        externObject.onIncrease = value;
        break;
      case 'onDecrease':
        externObject.onDecrease = value;
        break;
      case 'onCopy':
        externObject.onCopy = value;
        break;
      case 'onCut':
        externObject.onCut = value;
        break;
      case 'onPaste':
        externObject.onPaste = value;
        break;
      case 'onShowOnScreen':
        externObject.onShowOnScreen = value;
        break;
      case 'onMoveCursorForwardByCharacter':
        externObject.onMoveCursorForwardByCharacter = value;
        break;
      case 'onMoveCursorBackwardByCharacter':
        externObject.onMoveCursorBackwardByCharacter = value;
        break;
      case 'onMoveCursorForwardByWord':
        externObject.onMoveCursorForwardByWord = value;
        break;
      case 'onMoveCursorBackwardByWord':
        externObject.onMoveCursorBackwardByWord = value;
        break;
      case 'onSetSelection':
        externObject.onSetSelection = value;
        break;
      case 'onDidGainAccessibilityFocus':
        externObject.onDidGainAccessibilityFocus = value;
        break;
      case 'onDidLoseAccessibilityFocus':
        externObject.onDidLoseAccessibilityFocus = value;
        break;
      case 'sortKey':
        externObject.sortKey = value;
        break;
      case 'indexInParent':
        externObject.indexInParent = value;
        break;
      case 'scrollChildCount':
        externObject.scrollChildCount = value;
        break;
      case 'scrollIndex':
        externObject.scrollIndex = value;
        break;
      case 'platformViewId':
        externObject.platformViewId = value;
        break;
      case 'maxValueLength':
        externObject.maxValueLength = value;
        break;
      case 'currentValueLength':
        externObject.currentValueLength = value;
        break;
      case 'isMergingSemanticsOfDescendants':
        externObject.isMergingSemanticsOfDescendants = value;
        break;
      case 'customSemanticsActions':
        externObject.customSemanticsActions = value;
        break;
      case 'label':
        externObject.label = value;
        break;
      case 'value':
        externObject.value = value;
        break;
      case 'decreasedValue':
        externObject.decreasedValue = value;
        break;
      case 'increasedValue':
        externObject.increasedValue = value;
        break;
      case 'hint':
        externObject.hint = value;
        break;
      case 'hintOverrides':
        externObject.hintOverrides = value;
        break;
      case 'elevation':
        externObject.elevation = value;
        break;
      case 'thickness':
        externObject.thickness = value;
        break;
      case 'scopesRoute':
        externObject.scopesRoute = value;
        break;
      case 'namesRoute':
        externObject.namesRoute = value;
        break;
      case 'isImage':
        externObject.isImage = value;
        break;
      case 'liveRegion':
        externObject.liveRegion = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'isSelected':
        externObject.isSelected = value;
        break;
      case 'isEnabled':
        externObject.isEnabled = value;
        break;
      case 'isChecked':
        externObject.isChecked = value;
        break;
      case 'isToggled':
        externObject.isToggled = value;
        break;
      case 'isInMutuallyExclusiveGroup':
        externObject.isInMutuallyExclusiveGroup = value;
        break;
      case 'isFocusable':
        externObject.isFocusable = value;
        break;
      case 'isFocused':
        externObject.isFocused = value;
        break;
      case 'isButton':
        externObject.isButton = value;
        break;
      case 'isLink':
        externObject.isLink = value;
        break;
      case 'isHeader':
        externObject.isHeader = value;
        break;
      case 'isSlider':
        externObject.isSlider = value;
        break;
      case 'isHidden':
        externObject.isHidden = value;
        break;
      case 'isTextField':
        externObject.isTextField = value;
        break;
      case 'isReadOnly':
        externObject.isReadOnly = value;
        break;
      case 'isObscured':
        externObject.isObscured = value;
        break;
      case 'isMultiline':
        externObject.isMultiline = value;
        break;
      case 'hasImplicitScrolling':
        externObject.hasImplicitScrolling = value;
        break;
      case 'textSelection':
        externObject.textSelection = value;
        break;
      case 'scrollPosition':
        externObject.scrollPosition = value;
        break;
      case 'scrollExtentMax':
        externObject.scrollExtentMax = value;
        break;
      case 'scrollExtentMin':
        externObject.scrollExtentMin = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OrdinalSortKeyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OrdinalSortKey':
        return (order, {name}) => OrdinalSortKeyObjectBinding(OrdinalSortKey(order, name : name));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OrdinalSortKeyObjectBinding extends HT_ExternObject<OrdinalSortKey> {
  OrdinalSortKeyObjectBinding(OrdinalSortKey value) : super(value);

  @override
  final typeid = HT_TypeId('OrdinalSortKey');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'order':
        return externObject.order;
      case 'doCompare':
        return externObject.doCompare;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

