import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class FocusClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Focus':
        return ({key, child, focusNode, autofocus = false, onFocusChange, onKey, debugLabel, canRequestFocus, descendantsAreFocusable = true, skipTraversal, includeSemantics = true}) => FocusObjectBinding(Focus(key : key, child : child, focusNode : focusNode, autofocus : autofocus, onFocusChange : onFocusChange, onKey : onKey, debugLabel : debugLabel, canRequestFocus : canRequestFocus, descendantsAreFocusable : descendantsAreFocusable, skipTraversal : skipTraversal, includeSemantics : includeSemantics));
      case 'of':
        return (context, {scopeOk = false}) => Focus.of(context, scopeOk : scopeOk);
      case 'maybeOf':
        return (context, {scopeOk = false}) => Focus.maybeOf(context, scopeOk : scopeOk);
      case 'isAt':
        return (context) => Focus.isAt(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusObjectBinding extends HT_ExternObject<Focus> {
  FocusObjectBinding(Focus value) : super(value);

  @override
  final typeid = HT_TypeId('Focus');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugLabel':
        return externObject.debugLabel;
      case 'child':
        return externObject.child;
      case 'onKey':
        return externObject.onKey;
      case 'onFocusChange':
        return externObject.onFocusChange;
      case 'autofocus':
        return externObject.autofocus;
      case 'focusNode':
        return externObject.focusNode;
      case 'skipTraversal':
        return externObject.skipTraversal;
      case 'includeSemantics':
        return externObject.includeSemantics;
      case 'canRequestFocus':
        return externObject.canRequestFocus;
      case 'descendantsAreFocusable':
        return externObject.descendantsAreFocusable;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FocusScopeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FocusScope':
        return ({key, node, child, autofocus = false, onFocusChange, canRequestFocus, skipTraversal, onKey, debugLabel}) => FocusScopeObjectBinding(FocusScope(key : key, node : node, child : child, autofocus : autofocus, onFocusChange : onFocusChange, canRequestFocus : canRequestFocus, skipTraversal : skipTraversal, onKey : onKey, debugLabel : debugLabel));
      case 'of':
        return (context) => FocusScope.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FocusScopeObjectBinding extends HT_ExternObject<FocusScope> {
  FocusScopeObjectBinding(FocusScope value) : super(value);

  @override
  final typeid = HT_TypeId('FocusScope');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ExcludeFocusClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ExcludeFocus':
        return ({key, excluding = true, child}) => ExcludeFocusObjectBinding(ExcludeFocus(key : key, excluding : excluding, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExcludeFocusObjectBinding extends HT_ExternObject<ExcludeFocus> {
  ExcludeFocusObjectBinding(ExcludeFocus value) : super(value);

  @override
  final typeid = HT_TypeId('ExcludeFocus');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'excluding':
        return externObject.excluding;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

