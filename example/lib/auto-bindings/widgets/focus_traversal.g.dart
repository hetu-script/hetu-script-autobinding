import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class TraversalDirectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'up':
        return TraversalDirection.up;
      case 'right':
        return TraversalDirection.right;
      case 'down':
        return TraversalDirection.down;
      case 'left':
        return TraversalDirection.left;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WidgetOrderTraversalPolicyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WidgetOrderTraversalPolicy':
        return () => WidgetOrderTraversalPolicyObjectBinding(WidgetOrderTraversalPolicy());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WidgetOrderTraversalPolicyObjectBinding extends HT_ExternObject<WidgetOrderTraversalPolicy> {
  WidgetOrderTraversalPolicyObjectBinding(WidgetOrderTraversalPolicy value) : super(value);

  @override
  final typeid = HT_TypeId('WidgetOrderTraversalPolicy');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'sortDescendants':
        return externObject.sortDescendants;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ReadingOrderTraversalPolicyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ReadingOrderTraversalPolicy':
        return () => ReadingOrderTraversalPolicyObjectBinding(ReadingOrderTraversalPolicy());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReadingOrderTraversalPolicyObjectBinding extends HT_ExternObject<ReadingOrderTraversalPolicy> {
  ReadingOrderTraversalPolicyObjectBinding(ReadingOrderTraversalPolicy value) : super(value);

  @override
  final typeid = HT_TypeId('ReadingOrderTraversalPolicy');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'sortDescendants':
        return externObject.sortDescendants;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class NumericFocusOrderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NumericFocusOrder':
        return (order) => NumericFocusOrderObjectBinding(NumericFocusOrder(order));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NumericFocusOrderObjectBinding extends HT_ExternObject<NumericFocusOrder> {
  NumericFocusOrderObjectBinding(NumericFocusOrder value) : super(value);

  @override
  final typeid = HT_TypeId('NumericFocusOrder');

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

class LexicalFocusOrderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LexicalFocusOrder':
        return (order) => LexicalFocusOrderObjectBinding(LexicalFocusOrder(order));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LexicalFocusOrderObjectBinding extends HT_ExternObject<LexicalFocusOrder> {
  LexicalFocusOrderObjectBinding(LexicalFocusOrder value) : super(value);

  @override
  final typeid = HT_TypeId('LexicalFocusOrder');

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

class OrderedTraversalPolicyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OrderedTraversalPolicy':
        return ({secondary}) => OrderedTraversalPolicyObjectBinding(OrderedTraversalPolicy(secondary : secondary));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OrderedTraversalPolicyObjectBinding extends HT_ExternObject<OrderedTraversalPolicy> {
  OrderedTraversalPolicyObjectBinding(OrderedTraversalPolicy value) : super(value);

  @override
  final typeid = HT_TypeId('OrderedTraversalPolicy');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'secondary':
        return externObject.secondary;
      case 'sortDescendants':
        return externObject.sortDescendants;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FocusTraversalOrderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FocusTraversalOrder':
        return ({key, order, child}) => FocusTraversalOrderObjectBinding(FocusTraversalOrder(key : key, order : order, child : child));
      case 'of':
        return (context) => FocusTraversalOrder.of(context);
      case 'maybeOf':
        return (context) => FocusTraversalOrder.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusTraversalOrderObjectBinding extends HT_ExternObject<FocusTraversalOrder> {
  FocusTraversalOrderObjectBinding(FocusTraversalOrder value) : super(value);

  @override
  final typeid = HT_TypeId('FocusTraversalOrder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'order':
        return externObject.order;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FocusTraversalGroupClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FocusTraversalGroup':
        return ({key, policy, descendantsAreFocusable = true, child}) => FocusTraversalGroupObjectBinding(FocusTraversalGroup(key : key, policy : policy, descendantsAreFocusable : descendantsAreFocusable, child : child));
      case 'of':
        return (context) => FocusTraversalGroup.of(context);
      case 'maybeOf':
        return (context) => FocusTraversalGroup.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusTraversalGroupObjectBinding extends HT_ExternObject<FocusTraversalGroup> {
  FocusTraversalGroupObjectBinding(FocusTraversalGroup value) : super(value);

  @override
  final typeid = HT_TypeId('FocusTraversalGroup');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'policy':
        return externObject.policy;
      case 'descendantsAreFocusable':
        return externObject.descendantsAreFocusable;
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

class RequestFocusIntentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RequestFocusIntent':
        return (focusNode) => RequestFocusIntentObjectBinding(RequestFocusIntent(focusNode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RequestFocusIntentObjectBinding extends HT_ExternObject<RequestFocusIntent> {
  RequestFocusIntentObjectBinding(RequestFocusIntent value) : super(value);

  @override
  final typeid = HT_TypeId('RequestFocusIntent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'focusNode':
        return externObject.focusNode;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RequestFocusActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RequestFocusAction':
        return () => RequestFocusActionObjectBinding(RequestFocusAction());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RequestFocusActionObjectBinding extends HT_ExternObject<RequestFocusAction> {
  RequestFocusActionObjectBinding(RequestFocusAction value) : super(value);

  @override
  final typeid = HT_TypeId('RequestFocusAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'invoke':
        return externObject.invoke;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class NextFocusIntentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NextFocusIntent':
        return () => NextFocusIntentObjectBinding(NextFocusIntent());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NextFocusIntentObjectBinding extends HT_ExternObject<NextFocusIntent> {
  NextFocusIntentObjectBinding(NextFocusIntent value) : super(value);

  @override
  final typeid = HT_TypeId('NextFocusIntent');


}

class NextFocusActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NextFocusAction':
        return () => NextFocusActionObjectBinding(NextFocusAction());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NextFocusActionObjectBinding extends HT_ExternObject<NextFocusAction> {
  NextFocusActionObjectBinding(NextFocusAction value) : super(value);

  @override
  final typeid = HT_TypeId('NextFocusAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'invoke':
        return externObject.invoke;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PreviousFocusIntentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PreviousFocusIntent':
        return () => PreviousFocusIntentObjectBinding(PreviousFocusIntent());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PreviousFocusIntentObjectBinding extends HT_ExternObject<PreviousFocusIntent> {
  PreviousFocusIntentObjectBinding(PreviousFocusIntent value) : super(value);

  @override
  final typeid = HT_TypeId('PreviousFocusIntent');


}

class PreviousFocusActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PreviousFocusAction':
        return () => PreviousFocusActionObjectBinding(PreviousFocusAction());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PreviousFocusActionObjectBinding extends HT_ExternObject<PreviousFocusAction> {
  PreviousFocusActionObjectBinding(PreviousFocusAction value) : super(value);

  @override
  final typeid = HT_TypeId('PreviousFocusAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'invoke':
        return externObject.invoke;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DirectionalFocusIntentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DirectionalFocusIntent':
        return (direction, {ignoreTextFields = true}) => DirectionalFocusIntentObjectBinding(DirectionalFocusIntent(direction, ignoreTextFields : ignoreTextFields));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DirectionalFocusIntentObjectBinding extends HT_ExternObject<DirectionalFocusIntent> {
  DirectionalFocusIntentObjectBinding(DirectionalFocusIntent value) : super(value);

  @override
  final typeid = HT_TypeId('DirectionalFocusIntent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'direction':
        return externObject.direction;
      case 'ignoreTextFields':
        return externObject.ignoreTextFields;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DirectionalFocusActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DirectionalFocusAction':
        return () => DirectionalFocusActionObjectBinding(DirectionalFocusAction());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DirectionalFocusActionObjectBinding extends HT_ExternObject<DirectionalFocusAction> {
  DirectionalFocusActionObjectBinding(DirectionalFocusAction value) : super(value);

  @override
  final typeid = HT_TypeId('DirectionalFocusAction');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'invoke':
        return externObject.invoke;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

