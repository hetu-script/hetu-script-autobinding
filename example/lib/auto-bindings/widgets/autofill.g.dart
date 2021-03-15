import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

class AutofillContextActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'commit':
        return AutofillContextAction.commit;
      case 'cancel':
        return AutofillContextAction.cancel;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AutofillGroupClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AutofillGroup':
        return ({key, child, onDisposeAction = AutofillContextAction.commit}) => AutofillGroupObjectBinding(AutofillGroup(key : key, child : child, onDisposeAction : onDisposeAction));
      case 'of':
        return (context) => AutofillGroup.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AutofillGroupObjectBinding extends HT_ExternObject<AutofillGroup> {
  AutofillGroupObjectBinding(AutofillGroup value) : super(value);

  @override
  final typeid = HT_TypeId('AutofillGroup');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'onDisposeAction':
        return externObject.onDisposeAction;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AutofillGroupStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AutofillGroupState':
        return () => AutofillGroupStateObjectBinding(AutofillGroupState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AutofillGroupStateObjectBinding extends HT_ExternObject<AutofillGroupState> {
  AutofillGroupStateObjectBinding(AutofillGroupState value) : super(value);

  @override
  final typeid = HT_TypeId('AutofillGroupState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'autofillClients':
        return externObject.autofillClients;
      case 'getAutofillClient':
        return externObject.getAutofillClient;
      case 'register':
        return externObject.register;
      case 'unregister':
        return externObject.unregister;
      case 'didChangeDependencies':
        return externObject.didChangeDependencies;
      case 'build':
        return externObject.build;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

