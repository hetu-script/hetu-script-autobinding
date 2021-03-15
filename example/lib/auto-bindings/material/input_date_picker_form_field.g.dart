import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class InputDatePickerFormFieldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InputDatePickerFormField':
        return ({key, initialDate, firstDate, lastDate, onDateSubmitted, onDateSaved, selectableDayPredicate, errorFormatText, errorInvalidText, fieldHintText, fieldLabelText, autofocus = false}) => InputDatePickerFormFieldObjectBinding(InputDatePickerFormField(key : key, initialDate : initialDate, firstDate : firstDate, lastDate : lastDate, onDateSubmitted : onDateSubmitted, onDateSaved : onDateSaved, selectableDayPredicate : selectableDayPredicate, errorFormatText : errorFormatText, errorInvalidText : errorInvalidText, fieldHintText : fieldHintText, fieldLabelText : fieldLabelText, autofocus : autofocus));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InputDatePickerFormFieldObjectBinding extends HT_ExternObject<InputDatePickerFormField> {
  InputDatePickerFormFieldObjectBinding(InputDatePickerFormField value) : super(value);

  @override
  final typeid = HT_TypeId('InputDatePickerFormField');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initialDate':
        return externObject.initialDate;
      case 'firstDate':
        return externObject.firstDate;
      case 'lastDate':
        return externObject.lastDate;
      case 'onDateSubmitted':
        return externObject.onDateSubmitted;
      case 'onDateSaved':
        return externObject.onDateSaved;
      case 'selectableDayPredicate':
        return externObject.selectableDayPredicate;
      case 'errorFormatText':
        return externObject.errorFormatText;
      case 'errorInvalidText':
        return externObject.errorInvalidText;
      case 'fieldHintText':
        return externObject.fieldHintText;
      case 'fieldLabelText':
        return externObject.fieldLabelText;
      case 'autofocus':
        return externObject.autofocus;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

