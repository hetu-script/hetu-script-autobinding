import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


class ActionListenerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ActionListener':
        return ({key, listener, action, child}) => ActionListenerObjectBinding(ActionListener(key : key, listener : listener, action : action, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ActionListenerObjectBinding extends HT_ExternObject<ActionListener> {
  ActionListenerObjectBinding(ActionListener value) : super(value);

  @override
  final typeid = HT_TypeId('ActionListener');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'listener':
        return externObject.listener;
      case 'action':
        return externObject.action;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CallbackActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CallbackAction':
        return ({onInvoke}) => CallbackActionObjectBinding(CallbackAction<Intent>(onInvoke : onInvoke));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CallbackActionObjectBinding extends HT_ExternObject<CallbackAction> {
  CallbackActionObjectBinding(CallbackAction value) : super(value);

  @override
  final typeid = HT_TypeId('CallbackAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onInvoke':
        return externObject.onInvoke;
      case 'invoke':
        return externObject.invoke;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ActionDispatcherClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ActionDispatcher':
        return () => ActionDispatcherObjectBinding(ActionDispatcher());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ActionDispatcherObjectBinding extends HT_ExternObject<ActionDispatcher> {
  ActionDispatcherObjectBinding(ActionDispatcher value) : super(value);

  @override
  final typeid = HT_TypeId('ActionDispatcher');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'invokeAction':
        return externObject.invokeAction;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ActionsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Actions':
        return ({key, dispatcher, actions, child}) => ActionsObjectBinding(Actions(key : key, dispatcher : dispatcher, actions : actions, child : child));
      case 'of':
        return (context) => Actions.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ActionsObjectBinding extends HT_ExternObject<Actions> {
  ActionsObjectBinding(Actions value) : super(value);

  @override
  final typeid = HT_TypeId('Actions');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dispatcher':
        return externObject.dispatcher;
      case 'actions':
        return externObject.actions;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FocusableActionDetectorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FocusableActionDetector':
        return ({key, enabled = true, focusNode, autofocus = false, shortcuts, actions, onShowFocusHighlight, onShowHoverHighlight, onFocusChange, mouseCursor = MouseCursor.defer, child}) => FocusableActionDetectorObjectBinding(FocusableActionDetector(key : key, enabled : enabled, focusNode : focusNode, autofocus : autofocus, shortcuts : shortcuts, actions : actions, onShowFocusHighlight : onShowFocusHighlight, onShowHoverHighlight : onShowHoverHighlight, onFocusChange : onFocusChange, mouseCursor : mouseCursor, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusableActionDetectorObjectBinding extends HT_ExternObject<FocusableActionDetector> {
  FocusableActionDetectorObjectBinding(FocusableActionDetector value) : super(value);

  @override
  final typeid = HT_TypeId('FocusableActionDetector');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'enabled':
        return externObject.enabled;
      case 'focusNode':
        return externObject.focusNode;
      case 'autofocus':
        return externObject.autofocus;
      case 'actions':
        return externObject.actions;
      case 'shortcuts':
        return externObject.shortcuts;
      case 'onShowFocusHighlight':
        return externObject.onShowFocusHighlight;
      case 'onShowHoverHighlight':
        return externObject.onShowHoverHighlight;
      case 'onFocusChange':
        return externObject.onFocusChange;
      case 'mouseCursor':
        return externObject.mouseCursor;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DoNothingActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DoNothingAction':
        return ({consumesKey = true}) => DoNothingActionObjectBinding(DoNothingAction(consumesKey : consumesKey));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DoNothingActionObjectBinding extends HT_ExternObject<DoNothingAction> {
  DoNothingActionObjectBinding(DoNothingAction value) : super(value);

  @override
  final typeid = HT_TypeId('DoNothingAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'consumesKey':
        return externObject.consumesKey;
      case 'invoke':
        return externObject.invoke;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ActivateIntentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ActivateIntent':
        return () => ActivateIntentObjectBinding(ActivateIntent());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ActivateIntentObjectBinding extends HT_ExternObject<ActivateIntent> {
  ActivateIntentObjectBinding(ActivateIntent value) : super(value);

  @override
  final typeid = HT_TypeId('ActivateIntent');


}

class ButtonActivateIntentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ButtonActivateIntent':
        return () => ButtonActivateIntentObjectBinding(ButtonActivateIntent());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ButtonActivateIntentObjectBinding extends HT_ExternObject<ButtonActivateIntent> {
  ButtonActivateIntentObjectBinding(ButtonActivateIntent value) : super(value);

  @override
  final typeid = HT_TypeId('ButtonActivateIntent');


}

class SelectIntentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SelectIntent':
        return () => SelectIntentObjectBinding(SelectIntent());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SelectIntentObjectBinding extends HT_ExternObject<SelectIntent> {
  SelectIntentObjectBinding(SelectIntent value) : super(value);

  @override
  final typeid = HT_TypeId('SelectIntent');


}

class DismissIntentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DismissIntent':
        return () => DismissIntentObjectBinding(DismissIntent());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DismissIntentObjectBinding extends HT_ExternObject<DismissIntent> {
  DismissIntentObjectBinding(DismissIntent value) : super(value);

  @override
  final typeid = HT_TypeId('DismissIntent');


}

class PrioritizedIntentsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PrioritizedIntents':
        return ({orderedIntents}) => PrioritizedIntentsObjectBinding(PrioritizedIntents(orderedIntents : orderedIntents));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PrioritizedIntentsObjectBinding extends HT_ExternObject<PrioritizedIntents> {
  PrioritizedIntentsObjectBinding(PrioritizedIntents value) : super(value);

  @override
  final typeid = HT_TypeId('PrioritizedIntents');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'orderedIntents':
        return externObject.orderedIntents;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PrioritizedActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PrioritizedAction':
        return () => PrioritizedActionObjectBinding(PrioritizedAction());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PrioritizedActionObjectBinding extends HT_ExternObject<PrioritizedAction> {
  PrioritizedActionObjectBinding(PrioritizedAction value) : super(value);

  @override
  final typeid = HT_TypeId('PrioritizedAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isEnabled':
        return externObject.isEnabled;
      case 'invoke':
        return externObject.invoke;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

