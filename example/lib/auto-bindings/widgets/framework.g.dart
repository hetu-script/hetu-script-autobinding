import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class UniqueKeyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'UniqueKey':
        return () => UniqueKeyObjectBinding(UniqueKey());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class UniqueKeyObjectBinding extends HT_ExternObject<UniqueKey> {
  UniqueKeyObjectBinding(UniqueKey value) : super(value);

  @override
  final typeid = HT_TypeId('UniqueKey');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ObjectKeyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ObjectKey':
        return (value) => ObjectKeyObjectBinding(ObjectKey(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ObjectKeyObjectBinding extends HT_ExternObject<ObjectKey> {
  ObjectKeyObjectBinding(ObjectKey value) : super(value);

  @override
  final typeid = HT_TypeId('ObjectKey');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LabeledGlobalKeyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LabeledGlobalKey':
        return (_debugLabel) => LabeledGlobalKeyObjectBinding(LabeledGlobalKey<State<StatefulWidget>>(_debugLabel));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LabeledGlobalKeyObjectBinding extends HT_ExternObject<LabeledGlobalKey> {
  LabeledGlobalKeyObjectBinding(LabeledGlobalKey value) : super(value);

  @override
  final typeid = HT_TypeId('LabeledGlobalKey');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class GlobalObjectKeyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GlobalObjectKey':
        return (value) => GlobalObjectKeyObjectBinding(GlobalObjectKey<State<StatefulWidget>>(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GlobalObjectKeyObjectBinding extends HT_ExternObject<GlobalObjectKey> {
  GlobalObjectKeyObjectBinding(GlobalObjectKey value) : super(value);

  @override
  final typeid = HT_TypeId('GlobalObjectKey');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TypeMatcherClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TypeMatcher':
        return () => TypeMatcherObjectBinding(TypeMatcher());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TypeMatcherObjectBinding extends HT_ExternObject<TypeMatcher> {
  TypeMatcherObjectBinding(TypeMatcher value) : super(value);

  @override
  final typeid = HT_TypeId('TypeMatcher');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'check':
        return externObject.check;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BuildOwnerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BuildOwner':
        return ({onBuildScheduled, focusManager}) => BuildOwnerObjectBinding(BuildOwner(onBuildScheduled : onBuildScheduled, focusManager : focusManager));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BuildOwnerObjectBinding extends HT_ExternObject<BuildOwner> {
  BuildOwnerObjectBinding(BuildOwner value) : super(value);

  @override
  final typeid = HT_TypeId('BuildOwner');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onBuildScheduled':
        return externObject.onBuildScheduled;
      case 'focusManager':
        return externObject.focusManager;
      case 'debugBuilding':
        return externObject.debugBuilding;
      case 'scheduleBuildFor':
        return externObject.scheduleBuildFor;
      case 'lockState':
        return externObject.lockState;
      case 'buildScope':
        return externObject.buildScope;
      case 'finalizeTree':
        return externObject.finalizeTree;
      case 'reassemble':
        return externObject.reassemble;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'onBuildScheduled':
        externObject.onBuildScheduled = value;
        break;
      case 'focusManager':
        externObject.focusManager = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ErrorWidgetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ErrorWidget':
        return (exception) => ErrorWidgetObjectBinding(ErrorWidget(exception));
      case 'ErrorWidget.withDetails':
        return ({message = '', error}) => ErrorWidgetObjectBinding(ErrorWidget.withDetails(message : message, error : error));
      case 'ErrorWidget.builder':
        return ErrorWidget.builder;
      default:
        throw HTErr_Undefined(id);
    }
  }
  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'ErrorWidget.builder':
        return ErrorWidget.builder = value;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ErrorWidgetObjectBinding extends HT_ExternObject<ErrorWidget> {
  ErrorWidgetObjectBinding(ErrorWidget value) : super(value);

  @override
  final typeid = HT_TypeId('ErrorWidget');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StatelessElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StatelessElement':
        return (widget) => StatelessElementObjectBinding(StatelessElement(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StatelessElementObjectBinding extends HT_ExternObject<StatelessElement> {
  StatelessElementObjectBinding(StatelessElement value) : super(value);

  @override
  final typeid = HT_TypeId('StatelessElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widget':
        return externObject.widget;
      case 'build':
        return externObject.build;
      case 'update':
        return externObject.update;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StatefulElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StatefulElement':
        return (widget) => StatefulElementObjectBinding(StatefulElement(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StatefulElementObjectBinding extends HT_ExternObject<StatefulElement> {
  StatefulElementObjectBinding(StatefulElement value) : super(value);

  @override
  final typeid = HT_TypeId('StatefulElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'state':
        return externObject.state;
      case 'build':
        return externObject.build;
      case 'reassemble':
        return externObject.reassemble;
      case 'performRebuild':
        return externObject.performRebuild;
      case 'update':
        return externObject.update;
      case 'activate':
        return externObject.activate;
      case 'deactivate':
        return externObject.deactivate;
      case 'unmount':
        return externObject.unmount;
      case 'dependOnInheritedElement':
        return externObject.dependOnInheritedElement;
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'toDiagnosticsNode':
        return externObject.toDiagnosticsNode;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ParentDataElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ParentDataElement':
        return (widget) => ParentDataElementObjectBinding(ParentDataElement<ParentData>(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ParentDataElementObjectBinding extends HT_ExternObject<ParentDataElement> {
  ParentDataElementObjectBinding(ParentDataElement value) : super(value);

  @override
  final typeid = HT_TypeId('ParentDataElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widget':
        return externObject.widget;
      case 'applyWidgetOutOfTurn':
        return externObject.applyWidgetOutOfTurn;
      case 'notifyClients':
        return externObject.notifyClients;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class InheritedElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InheritedElement':
        return (widget) => InheritedElementObjectBinding(InheritedElement(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InheritedElementObjectBinding extends HT_ExternObject<InheritedElement> {
  InheritedElementObjectBinding(InheritedElement value) : super(value);

  @override
  final typeid = HT_TypeId('InheritedElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widget':
        return externObject.widget;
      case 'debugDeactivated':
        return externObject.debugDeactivated;
      case 'getDependencies':
        return externObject.getDependencies;
      case 'setDependencies':
        return externObject.setDependencies;
      case 'updateDependencies':
        return externObject.updateDependencies;
      case 'notifyDependent':
        return externObject.notifyDependent;
      case 'updated':
        return externObject.updated;
      case 'notifyClients':
        return externObject.notifyClients;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LeafRenderObjectElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LeafRenderObjectElement':
        return (widget) => LeafRenderObjectElementObjectBinding(LeafRenderObjectElement(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LeafRenderObjectElementObjectBinding extends HT_ExternObject<LeafRenderObjectElement> {
  LeafRenderObjectElementObjectBinding(LeafRenderObjectElement value) : super(value);

  @override
  final typeid = HT_TypeId('LeafRenderObjectElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'forgetChild':
        return externObject.forgetChild;
      case 'insertRenderObjectChild':
        return externObject.insertRenderObjectChild;
      case 'moveRenderObjectChild':
        return externObject.moveRenderObjectChild;
      case 'removeRenderObjectChild':
        return externObject.removeRenderObjectChild;
      case 'debugDescribeChildren':
        return externObject.debugDescribeChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SingleChildRenderObjectElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SingleChildRenderObjectElement':
        return (widget) => SingleChildRenderObjectElementObjectBinding(SingleChildRenderObjectElement(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SingleChildRenderObjectElementObjectBinding extends HT_ExternObject<SingleChildRenderObjectElement> {
  SingleChildRenderObjectElementObjectBinding(SingleChildRenderObjectElement value) : super(value);

  @override
  final typeid = HT_TypeId('SingleChildRenderObjectElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widget':
        return externObject.widget;
      case 'visitChildren':
        return externObject.visitChildren;
      case 'forgetChild':
        return externObject.forgetChild;
      case 'mount':
        return externObject.mount;
      case 'update':
        return externObject.update;
      case 'insertRenderObjectChild':
        return externObject.insertRenderObjectChild;
      case 'moveRenderObjectChild':
        return externObject.moveRenderObjectChild;
      case 'removeRenderObjectChild':
        return externObject.removeRenderObjectChild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MultiChildRenderObjectElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MultiChildRenderObjectElement':
        return (widget) => MultiChildRenderObjectElementObjectBinding(MultiChildRenderObjectElement(widget));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MultiChildRenderObjectElementObjectBinding extends HT_ExternObject<MultiChildRenderObjectElement> {
  MultiChildRenderObjectElementObjectBinding(MultiChildRenderObjectElement value) : super(value);

  @override
  final typeid = HT_TypeId('MultiChildRenderObjectElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widget':
        return externObject.widget;
      case 'renderObject':
        return externObject.renderObject;
      case 'children':
        return externObject.children;
      case 'insertRenderObjectChild':
        return externObject.insertRenderObjectChild;
      case 'moveRenderObjectChild':
        return externObject.moveRenderObjectChild;
      case 'removeRenderObjectChild':
        return externObject.removeRenderObjectChild;
      case 'visitChildren':
        return externObject.visitChildren;
      case 'forgetChild':
        return externObject.forgetChild;
      case 'mount':
        return externObject.mount;
      case 'update':
        return externObject.update;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DebugCreatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DebugCreator':
        return (element) => DebugCreatorObjectBinding(DebugCreator(element));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DebugCreatorObjectBinding extends HT_ExternObject<DebugCreator> {
  DebugCreatorObjectBinding(DebugCreator value) : super(value);

  @override
  final typeid = HT_TypeId('DebugCreator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'element':
        return externObject.element;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class IndexedSlotClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IndexedSlot':
        return (index, value) => IndexedSlotObjectBinding(IndexedSlot(index, value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IndexedSlotObjectBinding extends HT_ExternObject<IndexedSlot> {
  IndexedSlotObjectBinding(IndexedSlot value) : super(value);

  @override
  final typeid = HT_TypeId('IndexedSlot');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'index':
        return externObject.index;
      case 'hashCode':
        return externObject.hashCode;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

