import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';

class AutovalidateModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'disabled':
        return AutovalidateMode.disabled;
      case 'always':
        return AutovalidateMode.always;
      case 'onUserInteraction':
        return AutovalidateMode.onUserInteraction;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FormClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Form':
        return ({key, child, autovalidate = false, onWillPop, onChanged, autovalidateMode}) => FormObjectBinding(Form(key : key, child : child, autovalidate : autovalidate, onWillPop : onWillPop, onChanged : onChanged, autovalidateMode : autovalidateMode));
      case 'of':
        return (context) => Form.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FormObjectBinding extends HT_ExternObject<Form> {
  FormObjectBinding(Form value) : super(value);

  @override
  final typeid = HT_TypeId('Form');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'onWillPop':
        return externObject.onWillPop;
      case 'onChanged':
        return externObject.onChanged;
      case 'autovalidateMode':
        return externObject.autovalidateMode;
      case 'autovalidate':
        return externObject.autovalidate;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FormStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FormState':
        return () => FormStateObjectBinding(FormState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FormStateObjectBinding extends HT_ExternObject<FormState> {
  FormStateObjectBinding(FormState value) : super(value);

  @override
  final typeid = HT_TypeId('FormState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'build':
        return externObject.build;
      case 'save':
        return externObject.save;
      case 'reset':
        return externObject.reset;
      case 'validate':
        return externObject.validate;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FormFieldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FormField':
        return ({key, builder, onSaved, validator, initialValue, autovalidate = false, enabled = true, autovalidateMode}) => FormFieldObjectBinding(FormField(key : key, builder : builder, onSaved : onSaved, validator : validator, initialValue : initialValue, autovalidate : autovalidate, enabled : enabled, autovalidateMode : autovalidateMode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FormFieldObjectBinding extends HT_ExternObject<FormField> {
  FormFieldObjectBinding(FormField value) : super(value);

  @override
  final typeid = HT_TypeId('FormField');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onSaved':
        return externObject.onSaved;
      case 'validator':
        return externObject.validator;
      case 'builder':
        return externObject.builder;
      case 'initialValue':
        return externObject.initialValue;
      case 'enabled':
        return externObject.enabled;
      case 'autovalidateMode':
        return externObject.autovalidateMode;
      case 'autovalidate':
        return externObject.autovalidate;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FormFieldStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FormFieldState':
        return () => FormFieldStateObjectBinding(FormFieldState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FormFieldStateObjectBinding extends HT_ExternObject<FormFieldState> {
  FormFieldStateObjectBinding(FormFieldState value) : super(value);

  @override
  final typeid = HT_TypeId('FormFieldState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'errorText':
        return externObject.errorText;
      case 'hasError':
        return externObject.hasError;
      case 'isValid':
        return externObject.isValid;
      case 'save':
        return externObject.save;
      case 'reset':
        return externObject.reset;
      case 'validate':
        return externObject.validate;
      case 'didChange':
        return externObject.didChange;
      case 'setValue':
        return externObject.setValue;
      case 'initState':
        return externObject.initState;
      case 'deactivate':
        return externObject.deactivate;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

