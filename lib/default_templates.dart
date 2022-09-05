///
///This file is generated.
///

var import_entry = '''{{#import_files}}
export '{{import_file_name}}'
{{/import_files}}''';

var dart_classes = '''{{#library_class_import}}
import 'package:hetu_script/hetu_script.dart';
import 'package:hetu_script/binding.dart';
import 'package:hetu_script/types.dart';
import 'package:hetu_script/values.dart';
{{flutter_lib_name}}
{{#file_imports}}
import {{import_uri}}{{import_prefix}};
{{/file_imports}}
{{/library_class_import}}
{{#have_private_enums}}
enum {{private_enum_name}}{
    {{#private_enum_constants}}
    {{private_enum_name}}
    {{/private_enum_constants}}
}
{{/have_private_enums}}
{{#have_private_top_vars}}
{{private_top_vars}}
{{/have_private_top_vars}}
{{#private_classes}}
{{raw_class}}
{{/private_classes}}

{{#have_enums}}
class {{enum_name}}AutoBinding extends HTExternalClass {
  {{enum_name}}AutoBinding() : super(r'{{enum_name}}');

  @override
  dynamic memberGet(String varName, {String? from}) {
    switch (varName) {
      case r'values':
        return {{enum_name}}.values;
      {{#binding_enums}}
      case r'{{enum_name}}.{{enum_constant_name}}':
        return {{enum_name}}.{{enum_constant_name}};
      {{/binding_enums}}
      default:
        throw HTError.undefined(varName);
    }
  }


  @override
  dynamic instanceMemberGet(dynamic object, String varName) {
    switch (varName) {
      case r'typeid':
        return const HTExternalType(r'{{enum_name}}');
      case r'index':
        return (object as {{enum_name}}).index;
      case r'toString':
        return (HTEntity entity,
            {List<dynamic> positionalArgs = const [],
              Map<String, dynamic> namedArgs = const {},
              List<HTType> typeArgs = const []}) => (object as {{enum_name}}).toString();
      default:
        throw HTError.undefined(varName);
    }
  }
}
{{/have_enums}}

{{#all_classes}}
{{#have_class_member}}
class {{dart_class_name}}AutoBinding extends HTExternalClass {
  {{dart_class_name}}AutoBinding() : super(r'{{dart_class_name}}');

  {{#have_class_fetch}}
  @override
  dynamic memberGet(String varName, {String? from}) {
    switch (varName) {
      {{#binding_constructors}}
      case r'{{dart_class_name}}{{constructor_name}}':
        {{#constructor_private_defines}}
        {{private_impl}}
        {{/constructor_private_defines}}
        return (HTEntity entity,
            {List<dynamic> positionalArgs = const [],
              Map<String, dynamic> namedArgs = const {},
              List<HTType> typeArgs = const []}) => {{dart_class_name}}{{generic_types}}{{real_constructor_name}}{{constructor_invoke_params}};
      {{/binding_constructors}}
      {{#binding_static_methods}}
      case r'{{dart_class_name}}.{{static_method_name}}':
        {{#static_method_private_defines}}
        {{private_impl}}
        {{/static_method_private_defines}}
        return (HTEntity entity,
            {List<dynamic> positionalArgs = const [],
              Map<String, dynamic> namedArgs = const {},
              List<HTType> typeArgs = const []}) => {{dart_class_name}}.{{real_static_method_name}}{{static_method_invoke_params}};
      {{/binding_static_methods}}
      {{#binding_static_variables_getter}}
      case r'{{dart_class_name}}.{{static_variable_name}}':
        return {{dart_class_name}}.{{real_static_variable_name}};
      {{/binding_static_variables_getter}}
      default:
        throw HTError.undefined(varName);
    }
  }
  {{/have_class_fetch}}
  {{#have_class_assign}}
  @override
  void memberSet(String varName, dynamic value, {String? from}) {
    switch (varName) {
      {{#binding_static_variables_setter}}
      case r'{{dart_class_name}}.{{static_variable_name}}':
        return {{dart_class_name}}.{{real_static_variable_name}} = value;
      {{/binding_static_variables_setter}}
      default:
        throw HTError.undefined(varName);
    }
  }
  {{/have_class_assign}}

  {{#have_instance_getter}}
  @override
  dynamic instanceMemberGet(dynamic object, String varName) {
    return (object as {{dart_class_name}}).htFetch(varName);
  }
  {{/have_instance_getter}}

  {{#have_instance_setter}}
  @override
  void instanceMemberSet(dynamic object, String varName, dynamic varValue) {
    (object as {{dart_class_name}}).htAssign(varName, varValue);
  }
  {{/have_instance_setter}}

  {{#have_function_params}}
  static Map<String, HTExternalFunctionTypedef> functionWrapper() {
    return <String, HTExternalFunctionTypedef>{
      {{#function_bindings}}
      r'{{function_type_name}}': (HTFunction function) => {{function_args}} => function.call{{function_invoke_args}}{{function_return_type}},
      {{/function_bindings}}
    };
  }
  {{/have_function_params}}

  {{#have_static_declarations}}
  {{static_declaration}}
  {{/have_static_declarations}}
}
{{/have_class_member}}

{{#have_instance_member}}
extension {{dart_class_name}}Binding on {{dart_class_name}} {
  {{#have_instance_getter}}
  dynamic htFetch(String varName) {
    switch (varName) {
      case r'typeid':
        return const HTExternalType(r'{{dart_class_name}}');
    {{#getter_case}}
      case r'{{instance_identifier}}':
        return {{real_instance_identifier}};
    {{/getter_case}}
    {{#method_case}}
      case r'{{method_identifier}}':
        {{#instance_method_private_defines}}
        {{private_impl}}
        {{/instance_method_private_defines}}
        return (HTEntity entity,
            {List<dynamic> positionalArgs = const [],
              Map<String, dynamic> namedArgs = const {},
              List<HTType> typeArgs = const []}) => this.{{real_method_identifier}}{{instance_method_invoke_params}};
    {{/method_case}}
      default:
        throw HTError.undefined(varName);
    }
  }
  {{/have_instance_getter}}

  {{#have_instance_setter}}
  void htAssign(String varName, dynamic value) {
    switch (varName) {
      {{#setter_case}}
      case r'{{instance_identifier}}':
        {{real_instance_identifier}} = {{instance_value}};
        break;
      {{/setter_case}}
      default:
        throw HTError.undefined(varName);
    }
  }
  {{/have_instance_setter}}
}
{{/have_instance_member}}

{{/all_classes}}
''';

var ht_script_binding = '''import 'package:hetu_script/hetu_script.dart';
import 'ht_library_script_binding.dart';
import 'package:hetu_script/binding.dart';

{{#user_api_import}}
import {{import_file}};
{{/user_api_import}}

class HetuScriptBinding extends HetuLibraryScriptBinding {
  @override
  void loadAutoBindingFunction(Hetu hetu) {
    super.loadAutoBindingFunction(hetu);
    var functionWrappers = <String, HTExternalFunctionTypedef>{};
    {{#function_defs}}
    functionWrappers.addAll({{dart_class_name}}AutoBinding.functionWrapper());
    {{/function_defs}}
    functionWrappers.forEach((key, value) {
        hetu.interpreter.bindExternalFunctionType(key, value);
    });
  }

  @override
  void loadAutoBindingClass(Hetu hetu) {
    super.loadAutoBindingClass(hetu);
    var bindings = [
      {{#user_bindings}}
      {{prefix}}{{dart_class_name}}AutoBinding(),
      {{/user_bindings}}
    ];
    for (var value in bindings) {
        hetu.interpreter.bindExternalClass(value);
    }
  }

}''';

var ht_library_script_binding = '''import 'package:hetu_script/hetu_script.dart';
import 'package:meta/meta.dart';
import 'package:hetu_script/binding.dart';

{{#api_import}}
import {{import_file}};
{{/api_import}}

class HetuLibraryScriptBinding {

  @mustCallSuper
  void loadAutoBindingFunction(Hetu hetu) {
    var functionWrappers = <String, HTExternalFunctionTypedef>{};
    {{#function_defs}}
    functionWrappers.addAll({{dart_class_name}}AutoBinding.functionWrapper());
    {{/function_defs}}
    functionWrappers.forEach((key, value) {
        try{
            hetu.interpreter.bindExternalFunctionType(key, value);
        } catch (e){
            print(e);
        }
    });
  }

  @mustCallSuper
  void loadAutoBindingClass(Hetu hetu) {
    var bindings = [
      {{#bindings}}
      {{prefix}}{{dart_class_name}}AutoBinding(),
      {{/bindings}}
    ];
    for (var value in bindings) {
        try {
            hetu.interpreter.bindExternalClass(value);
        } catch (e){
            print(e);
        }
    }
  }

  @mustCallSuper
  void loadAutoBinding(Hetu hetu){
    loadAutoBindingFunction(hetu);
    loadAutoBindingClass(hetu);
  }

}''';

var ht_classes = '''{{#ht_enums}}
external class {{enum_name}} {
{{#binding_enums}}
    static get {{enum_constant_name}}
{{/binding_enums}}
}
{{/ht_enums}}
{{#ht_classes}}
external class {{dart_class_name}} {
{{#field_declaration}}
    {{field}}
{{/field_declaration}}
}
{{/ht_classes}}
''';

