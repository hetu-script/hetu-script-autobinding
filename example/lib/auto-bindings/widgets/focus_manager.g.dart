import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class KeyEventResultClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'handled':
        return KeyEventResult.handled;
      case 'ignored':
        return KeyEventResult.ignored;
      case 'skipRemainingHandlers':
        return KeyEventResult.skipRemainingHandlers;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class UnfocusDispositionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scope':
        return UnfocusDisposition.scope;
      case 'previouslyFocusedChild':
        return UnfocusDisposition.previouslyFocusedChild;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class FocusHighlightModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'touch':
        return FocusHighlightMode.touch;
      case 'traditional':
        return FocusHighlightMode.traditional;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class FocusHighlightStrategyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'automatic':
        return FocusHighlightStrategy.automatic;
      case 'alwaysTouch':
        return FocusHighlightStrategy.alwaysTouch;
      case 'alwaysTraditional':
        return FocusHighlightStrategy.alwaysTraditional;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusNodeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FocusNode':
        return ({debugLabel, onKey, skipTraversal = false, canRequestFocus = true, descendantsAreFocusable = true}) => FocusNodeObjectBinding(FocusNode(debugLabel : debugLabel, onKey : onKey, skipTraversal : skipTraversal, canRequestFocus : canRequestFocus, descendantsAreFocusable : descendantsAreFocusable));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusNodeObjectBinding extends HT_ExternObject<FocusNode> {
  FocusNodeObjectBinding(FocusNode value) : super(value);

  @override
  final typeid = HT_TypeId('FocusNode');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'skipTraversal':
        return externObject.skipTraversal;
      case 'canRequestFocus':
        return externObject.canRequestFocus;
      case 'descendantsAreFocusable':
        return externObject.descendantsAreFocusable;
      case 'context':
        return externObject.context;
      case 'onKey':
        return externObject.onKey;
      case 'parent':
        return externObject.parent;
      case 'children':
        return externObject.children;
      case 'traversalChildren':
        return externObject.traversalChildren;
      case 'debugLabel':
        return externObject.debugLabel;
      case 'descendants':
        return externObject.descendants;
      case 'traversalDescendants':
        return externObject.traversalDescendants;
      case 'ancestors':
        return externObject.ancestors;
      case 'hasFocus':
        return externObject.hasFocus;
      case 'hasPrimaryFocus':
        return externObject.hasPrimaryFocus;
      case 'highlightMode':
        return externObject.highlightMode;
      case 'nearestScope':
        return externObject.nearestScope;
      case 'enclosingScope':
        return externObject.enclosingScope;
      case 'size':
        return externObject.size;
      case 'offset':
        return externObject.offset;
      case 'rect':
        return externObject.rect;
      case 'unfocus':
        return externObject.unfocus;
      case 'consumeKeyboardToken':
        return externObject.consumeKeyboardToken;
      case 'attach':
        return externObject.attach;
      case 'dispose':
        return externObject.dispose;
      case 'requestFocus':
        return externObject.requestFocus;
      case 'nextFocus':
        return externObject.nextFocus;
      case 'previousFocus':
        return externObject.previousFocus;
      case 'focusInDirection':
        return externObject.focusInDirection;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'debugDescribeChildren':
        return externObject.debugDescribeChildren;
      case 'toStringShort':
        return externObject.toStringShort;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'skipTraversal':
        externObject.skipTraversal = value;
        break;
      case 'canRequestFocus':
        externObject.canRequestFocus = value;
        break;
      case 'descendantsAreFocusable':
        externObject.descendantsAreFocusable = value;
        break;
      case 'debugLabel':
        externObject.debugLabel = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusScopeNodeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FocusScopeNode':
        return ({debugLabel, onKey, skipTraversal = false, canRequestFocus = true}) => FocusScopeNodeObjectBinding(FocusScopeNode(debugLabel : debugLabel, onKey : onKey, skipTraversal : skipTraversal, canRequestFocus : canRequestFocus));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusScopeNodeObjectBinding extends HT_ExternObject<FocusScopeNode> {
  FocusScopeNodeObjectBinding(FocusScopeNode value) : super(value);

  @override
  final typeid = HT_TypeId('FocusScopeNode');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'nearestScope':
        return externObject.nearestScope;
      case 'isFirstFocus':
        return externObject.isFirstFocus;
      case 'focusedChild':
        return externObject.focusedChild;
      case 'setFirstFocus':
        return externObject.setFirstFocus;
      case 'autofocus':
        return externObject.autofocus;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FocusManagerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FocusManager':
        return () => FocusManagerObjectBinding(FocusManager());
      case 'instance':
        return () => FocusManager.instance;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusManagerObjectBinding extends HT_ExternObject<FocusManager> {
  FocusManagerObjectBinding(FocusManager value) : super(value);

  @override
  final typeid = HT_TypeId('FocusManager');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'rootScope':
        return externObject.rootScope;
      case 'highlightStrategy':
        return externObject.highlightStrategy;
      case 'highlightMode':
        return externObject.highlightMode;
      case 'primaryFocus':
        return externObject.primaryFocus;
      case 'addHighlightModeListener':
        return externObject.addHighlightModeListener;
      case 'removeHighlightModeListener':
        return externObject.removeHighlightModeListener;
      case 'debugDescribeChildren':
        return externObject.debugDescribeChildren;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'highlightStrategy':
        externObject.highlightStrategy = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

