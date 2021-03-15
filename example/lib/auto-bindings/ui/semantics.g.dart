import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';


class SemanticsActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsAction.tap':
        return SemanticsAction.tap;
      case 'SemanticsAction.longPress':
        return SemanticsAction.longPress;
      case 'SemanticsAction.scrollLeft':
        return SemanticsAction.scrollLeft;
      case 'SemanticsAction.scrollRight':
        return SemanticsAction.scrollRight;
      case 'SemanticsAction.scrollUp':
        return SemanticsAction.scrollUp;
      case 'SemanticsAction.scrollDown':
        return SemanticsAction.scrollDown;
      case 'SemanticsAction.increase':
        return SemanticsAction.increase;
      case 'SemanticsAction.decrease':
        return SemanticsAction.decrease;
      case 'SemanticsAction.showOnScreen':
        return SemanticsAction.showOnScreen;
      case 'SemanticsAction.moveCursorForwardByCharacter':
        return SemanticsAction.moveCursorForwardByCharacter;
      case 'SemanticsAction.moveCursorBackwardByCharacter':
        return SemanticsAction.moveCursorBackwardByCharacter;
      case 'SemanticsAction.setSelection':
        return SemanticsAction.setSelection;
      case 'SemanticsAction.copy':
        return SemanticsAction.copy;
      case 'SemanticsAction.cut':
        return SemanticsAction.cut;
      case 'SemanticsAction.paste':
        return SemanticsAction.paste;
      case 'SemanticsAction.didGainAccessibilityFocus':
        return SemanticsAction.didGainAccessibilityFocus;
      case 'SemanticsAction.didLoseAccessibilityFocus':
        return SemanticsAction.didLoseAccessibilityFocus;
      case 'SemanticsAction.customAction':
        return SemanticsAction.customAction;
      case 'SemanticsAction.dismiss':
        return SemanticsAction.dismiss;
      case 'SemanticsAction.moveCursorForwardByWord':
        return SemanticsAction.moveCursorForwardByWord;
      case 'SemanticsAction.moveCursorBackwardByWord':
        return SemanticsAction.moveCursorBackwardByWord;
      case 'SemanticsAction.values':
        return SemanticsAction.values;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class SemanticsFlagClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsFlag.hasCheckedState':
        return SemanticsFlag.hasCheckedState;
      case 'SemanticsFlag.isChecked':
        return SemanticsFlag.isChecked;
      case 'SemanticsFlag.isSelected':
        return SemanticsFlag.isSelected;
      case 'SemanticsFlag.isButton':
        return SemanticsFlag.isButton;
      case 'SemanticsFlag.isTextField':
        return SemanticsFlag.isTextField;
      case 'SemanticsFlag.isSlider':
        return SemanticsFlag.isSlider;
      case 'SemanticsFlag.isReadOnly':
        return SemanticsFlag.isReadOnly;
      case 'SemanticsFlag.isLink':
        return SemanticsFlag.isLink;
      case 'SemanticsFlag.isFocusable':
        return SemanticsFlag.isFocusable;
      case 'SemanticsFlag.isFocused':
        return SemanticsFlag.isFocused;
      case 'SemanticsFlag.hasEnabledState':
        return SemanticsFlag.hasEnabledState;
      case 'SemanticsFlag.isEnabled':
        return SemanticsFlag.isEnabled;
      case 'SemanticsFlag.isInMutuallyExclusiveGroup':
        return SemanticsFlag.isInMutuallyExclusiveGroup;
      case 'SemanticsFlag.isHeader':
        return SemanticsFlag.isHeader;
      case 'SemanticsFlag.isObscured':
        return SemanticsFlag.isObscured;
      case 'SemanticsFlag.isMultiline':
        return SemanticsFlag.isMultiline;
      case 'SemanticsFlag.scopesRoute':
        return SemanticsFlag.scopesRoute;
      case 'SemanticsFlag.namesRoute':
        return SemanticsFlag.namesRoute;
      case 'SemanticsFlag.isHidden':
        return SemanticsFlag.isHidden;
      case 'SemanticsFlag.isImage':
        return SemanticsFlag.isImage;
      case 'SemanticsFlag.isLiveRegion':
        return SemanticsFlag.isLiveRegion;
      case 'SemanticsFlag.hasToggledState':
        return SemanticsFlag.hasToggledState;
      case 'SemanticsFlag.isToggled':
        return SemanticsFlag.isToggled;
      case 'SemanticsFlag.hasImplicitScrolling':
        return SemanticsFlag.hasImplicitScrolling;
      case 'SemanticsFlag.values':
        return SemanticsFlag.values;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class SemanticsUpdateBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SemanticsUpdateBuilder':
        return () => SemanticsUpdateBuilderObjectBinding(SemanticsUpdateBuilder());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SemanticsUpdateBuilderObjectBinding extends HT_ExternObject<SemanticsUpdateBuilder> {
  SemanticsUpdateBuilderObjectBinding(SemanticsUpdateBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('SemanticsUpdateBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'updateNode':
        return externObject.updateNode;
      case 'updateCustomAction':
        return externObject.updateCustomAction;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

