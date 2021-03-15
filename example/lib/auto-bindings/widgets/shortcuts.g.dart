import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class KeySetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'KeySet':
        return (key1, [key2, key3, key4]) => KeySetObjectBinding(KeySet<KeyboardKey>(key1, key2, key3, key4));
      case 'KeySet.fromSet':
        return (keys) => KeySetObjectBinding(KeySet<KeyboardKey>.fromSet(keys));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class KeySetObjectBinding extends HT_ExternObject<KeySet> {
  KeySetObjectBinding(KeySet value) : super(value);

  @override
  final typeid = HT_TypeId('KeySet');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'keys':
        return externObject.keys;
      case 'hashCode':
        return externObject.hashCode;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LogicalKeySetClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LogicalKeySet':
        return (key1, [key2, key3, key4]) => LogicalKeySetObjectBinding(LogicalKeySet(key1, key2, key3, key4));
      case 'LogicalKeySet.fromSet':
        return (keys) => LogicalKeySetObjectBinding(LogicalKeySet.fromSet(keys));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LogicalKeySetObjectBinding extends HT_ExternObject<LogicalKeySet> {
  LogicalKeySetObjectBinding(LogicalKeySet value) : super(value);

  @override
  final typeid = HT_TypeId('LogicalKeySet');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugDescribeKeys':
        return externObject.debugDescribeKeys;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ShortcutMapPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ShortcutMapProperty':
        return (name, value, {showName = true, defaultValue = kNoDefaultValue, level = DiagnosticLevel.info, description}) => ShortcutMapPropertyObjectBinding(ShortcutMapProperty(name, value, showName : showName, defaultValue : defaultValue, level : level, description : description));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShortcutMapPropertyObjectBinding extends HT_ExternObject<ShortcutMapProperty> {
  ShortcutMapPropertyObjectBinding(ShortcutMapProperty value) : super(value);

  @override
  final typeid = HT_TypeId('ShortcutMapProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'valueToString':
        return externObject.valueToString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ShortcutManagerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ShortcutManager':
        return ({shortcuts = const <LogicalKeySet, Intent>{}, modal = false}) => ShortcutManagerObjectBinding(ShortcutManager(shortcuts : shortcuts, modal : modal));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShortcutManagerObjectBinding extends HT_ExternObject<ShortcutManager> {
  ShortcutManagerObjectBinding(ShortcutManager value) : super(value);

  @override
  final typeid = HT_TypeId('ShortcutManager');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'modal':
        return externObject.modal;
      case 'shortcuts':
        return externObject.shortcuts;
      case 'handleKeypress':
        return externObject.handleKeypress;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'shortcuts':
        externObject.shortcuts = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShortcutsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Shortcuts':
        return ({key, manager, shortcuts, child, debugLabel}) => ShortcutsObjectBinding(Shortcuts(key : key, manager : manager, shortcuts : shortcuts, child : child, debugLabel : debugLabel));
      case 'of':
        return (context) => Shortcuts.of(context);
      case 'maybeOf':
        return (context) => Shortcuts.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShortcutsObjectBinding extends HT_ExternObject<Shortcuts> {
  ShortcutsObjectBinding(Shortcuts value) : super(value);

  @override
  final typeid = HT_TypeId('Shortcuts');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'manager':
        return externObject.manager;
      case 'shortcuts':
        return externObject.shortcuts;
      case 'child':
        return externObject.child;
      case 'debugLabel':
        return externObject.debugLabel;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

