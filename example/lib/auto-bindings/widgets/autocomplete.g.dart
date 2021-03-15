import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/scheduler.dart';


class RawAutocompleteClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawAutocomplete':
        const defaultStringForOption = RawAutocomplete.defaultStringForOption;
        return ({key, optionsViewBuilder, optionsBuilder, displayStringForOption = defaultStringForOption, fieldViewBuilder, focusNode, onSelected, textEditingController}) => RawAutocompleteObjectBinding(RawAutocomplete<Object>(key : key, optionsViewBuilder : optionsViewBuilder, optionsBuilder : optionsBuilder, displayStringForOption : displayStringForOption, fieldViewBuilder : fieldViewBuilder, focusNode : focusNode, onSelected : onSelected, textEditingController : textEditingController));
      case 'defaultStringForOption':
        return (option) => RawAutocomplete.defaultStringForOption(option);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawAutocompleteObjectBinding extends HT_ExternObject<RawAutocomplete> {
  RawAutocompleteObjectBinding(RawAutocomplete value) : super(value);

  @override
  final typeid = HT_TypeId('RawAutocomplete');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'fieldViewBuilder':
        return externObject.fieldViewBuilder;
      case 'focusNode':
        return externObject.focusNode;
      case 'optionsViewBuilder':
        return externObject.optionsViewBuilder;
      case 'displayStringForOption':
        return externObject.displayStringForOption;
      case 'onSelected':
        return externObject.onSelected;
      case 'optionsBuilder':
        return externObject.optionsBuilder;
      case 'textEditingController':
        return externObject.textEditingController;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

