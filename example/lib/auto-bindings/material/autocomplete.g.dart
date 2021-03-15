import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class _AutocompleteField extends StatelessWidget {const _AutocompleteField({Key? key, required this.focusNode, required this.textEditingController, required this.onFieldSubmitted}) : super(key: key); final FocusNode focusNode; final VoidCallback onFieldSubmitted; final TextEditingController textEditingController; @override Widget build(BuildContext context) {return TextFormField(controller: textEditingController, focusNode: focusNode, onFieldSubmitted: (String value) {onFieldSubmitted();});}}


class AutocompleteClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Autocomplete':
        return ({key, optionsBuilder, displayStringForOption = RawAutocomplete.defaultStringForOption, fieldViewBuilder = _defaultFieldViewBuilder, onSelected, optionsViewBuilder}) => AutocompleteObjectBinding(Autocomplete<Object>(key : key, optionsBuilder : optionsBuilder, displayStringForOption : displayStringForOption, fieldViewBuilder : fieldViewBuilder, onSelected : onSelected, optionsViewBuilder : optionsViewBuilder));
      default:
        throw HTErr_Undefined(id);
    }
  }
  static Widget _defaultFieldViewBuilder(BuildContext context, TextEditingController textEditingController, FocusNode focusNode, VoidCallback onFieldSubmitted) {return _AutocompleteField(focusNode: focusNode, textEditingController: textEditingController, onFieldSubmitted: onFieldSubmitted);}
}

class AutocompleteObjectBinding extends HT_ExternObject<Autocomplete> {
  AutocompleteObjectBinding(Autocomplete value) : super(value);

  @override
  final typeid = HT_TypeId('Autocomplete');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'displayStringForOption':
        return externObject.displayStringForOption;
      case 'fieldViewBuilder':
        return externObject.fieldViewBuilder;
      case 'onSelected':
        return externObject.onSelected;
      case 'optionsBuilder':
        return externObject.optionsBuilder;
      case 'optionsViewBuilder':
        return externObject.optionsViewBuilder;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

