import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';

class SmartDashesTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'disabled':
        return SmartDashesType.disabled;
      case 'enabled':
        return SmartDashesType.enabled;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class SmartQuotesTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'disabled':
        return SmartQuotesType.disabled;
      case 'enabled':
        return SmartQuotesType.enabled;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class TextInputActionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'none':
        return TextInputAction.none;
      case 'unspecified':
        return TextInputAction.unspecified;
      case 'done':
        return TextInputAction.done;
      case 'go':
        return TextInputAction.go;
      case 'search':
        return TextInputAction.search;
      case 'send':
        return TextInputAction.send;
      case 'next':
        return TextInputAction.next;
      case 'previous':
        return TextInputAction.previous;
      case 'continueAction':
        return TextInputAction.continueAction;
      case 'join':
        return TextInputAction.join;
      case 'route':
        return TextInputAction.route;
      case 'emergencyCall':
        return TextInputAction.emergencyCall;
      case 'newline':
        return TextInputAction.newline;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class TextCapitalizationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'words':
        return TextCapitalization.words;
      case 'sentences':
        return TextCapitalization.sentences;
      case 'characters':
        return TextCapitalization.characters;
      case 'none':
        return TextCapitalization.none;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class FloatingCursorDragStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Start':
        return FloatingCursorDragState.Start;
      case 'Update':
        return FloatingCursorDragState.Update;
      case 'End':
        return FloatingCursorDragState.End;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextInputTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextInputType.text':
        return TextInputType.text;
      case 'TextInputType.multiline':
        return TextInputType.multiline;
      case 'TextInputType.number':
        return TextInputType.number;
      case 'TextInputType.phone':
        return TextInputType.phone;
      case 'TextInputType.datetime':
        return TextInputType.datetime;
      case 'TextInputType.emailAddress':
        return TextInputType.emailAddress;
      case 'TextInputType.url':
        return TextInputType.url;
      case 'TextInputType.visiblePassword':
        return TextInputType.visiblePassword;
      case 'TextInputType.name':
        return TextInputType.name;
      case 'TextInputType.streetAddress':
        return TextInputType.streetAddress;
      case 'TextInputType.values':
        return TextInputType.values;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class TextInputConfigurationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextInputConfiguration':
        return ({inputType = TextInputType.text, readOnly = false, obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, actionLabel, inputAction = TextInputAction.done, keyboardAppearance = Brightness.light, textCapitalization = TextCapitalization.none, autofillConfiguration}) => TextInputConfigurationObjectBinding(TextInputConfiguration(inputType : inputType, readOnly : readOnly, obscureText : obscureText, autocorrect : autocorrect, smartDashesType : smartDashesType, smartQuotesType : smartQuotesType, enableSuggestions : enableSuggestions, actionLabel : actionLabel, inputAction : inputAction, keyboardAppearance : keyboardAppearance, textCapitalization : textCapitalization, autofillConfiguration : autofillConfiguration));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextInputConfigurationObjectBinding extends HT_ExternObject<TextInputConfiguration> {
  TextInputConfigurationObjectBinding(TextInputConfiguration value) : super(value);

  @override
  final typeid = HT_TypeId('TextInputConfiguration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'inputType':
        return externObject.inputType;
      case 'readOnly':
        return externObject.readOnly;
      case 'obscureText':
        return externObject.obscureText;
      case 'autocorrect':
        return externObject.autocorrect;
      case 'autofillConfiguration':
        return externObject.autofillConfiguration;
      case 'smartDashesType':
        return externObject.smartDashesType;
      case 'smartQuotesType':
        return externObject.smartQuotesType;
      case 'enableSuggestions':
        return externObject.enableSuggestions;
      case 'actionLabel':
        return externObject.actionLabel;
      case 'inputAction':
        return externObject.inputAction;
      case 'textCapitalization':
        return externObject.textCapitalization;
      case 'keyboardAppearance':
        return externObject.keyboardAppearance;
      case 'toJson':
        return externObject.toJson;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RawFloatingCursorPointClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawFloatingCursorPoint':
        return ({offset, state}) => RawFloatingCursorPointObjectBinding(RawFloatingCursorPoint(offset : offset, state : state));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawFloatingCursorPointObjectBinding extends HT_ExternObject<RawFloatingCursorPoint> {
  RawFloatingCursorPointObjectBinding(RawFloatingCursorPoint value) : super(value);

  @override
  final typeid = HT_TypeId('RawFloatingCursorPoint');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offset':
        return externObject.offset;
      case 'state':
        return externObject.state;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextEditingValueClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextEditingValue':
        return ({text = '', selection = const TextSelection.collapsed(offset: -1), composing = TextRange.empty}) => TextEditingValueObjectBinding(TextEditingValue(text : text, selection : selection, composing : composing));
      case 'TextEditingValue.empty':
        return TextEditingValue.empty;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextEditingValueObjectBinding extends HT_ExternObject<TextEditingValue> {
  TextEditingValueObjectBinding(TextEditingValue value) : super(value);

  @override
  final typeid = HT_TypeId('TextEditingValue');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'text':
        return externObject.text;
      case 'selection':
        return externObject.selection;
      case 'composing':
        return externObject.composing;
      case 'isComposingRangeValid':
        return externObject.isComposingRangeValid;
      case 'hashCode':
        return externObject.hashCode;
      case 'toJSON':
        return externObject.toJSON;
      case 'copyWith':
        return externObject.copyWith;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextInputClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'attach':
        return (client, configuration) => TextInput.attach(client, configuration);
      case 'finishAutofillContext':
        return ({shouldSave = true}) => TextInput.finishAutofillContext(shouldSave : shouldSave);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


