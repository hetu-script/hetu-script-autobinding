///
///This file is generated.
///

var dart_classes = '''{{#library_class_import}}
import 'package:hetu_script/hetu_script.dart';
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
class {{enum_name}}ClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      {{#binding_enums}}
      case '{{enum_constant_name}}':
        return {{enum_name}}.{{enum_constant_name}};
      {{/binding_enums}}
      default:
        throw HTErr_Undefined(id);
    }
  }
}
{{/have_enums}}

{{#all_classes}}
{{#have_class_member}}
class {{dart_class_name}}ClassBinding extends HT_ExternNamespace {
  {{#have_class_fetch}}
  @override
  dynamic fetch(String id) {
    switch (id) {
      {{#binding_constructors}}
      case '{{dart_class_name}}{{constructor_name}}':
        {{#constructor_private_defines}}
        {{private_impl}}
        {{/constructor_private_defines}}
        return {{constructor_params}} => {{dart_class_name}}ObjectBinding({{dart_class_name}}{{generic_types}}{{constructor_name}}{{constructor_invoke_params}});
      {{/binding_constructors}}
      {{#binding_static_methods}}
      case '{{static_method_name}}':
        {{#static_method_private_defines}}
        {{private_impl}}
        {{/static_method_private_defines}}
        return {{static_method_params}} => {{dart_class_name}}.{{static_method_name}}{{static_method_invoke_params}};
      {{/binding_static_methods}}
      {{#binding_static_variables_getter}}
      case '{{dart_class_name}}.{{static_variable_name}}':
        return {{dart_class_name}}.{{static_variable_name}};
      {{/binding_static_variables_getter}}
      default:
        throw HTErr_Undefined(id);
    }
  }
  {{/have_class_fetch}}
  {{#have_class_assign}}
  @override
  void assign(String id, dynamic value) {
    switch (id) {
      {{#binding_static_variables_setter}}
      case '{{dart_class_name}}.{{static_variable_name}}':
        return {{dart_class_name}}.{{static_variable_name}} = value;
      {{/binding_static_variables_setter}}
      default:
        throw HTErr_Undefined(id);
    }
  }
  {{/have_class_assign}}
  {{#have_static_declarations}}
  {{static_declaration}}
  {{/have_static_declarations}}
}
{{/have_class_member}}

{{#have_instance_member}}
class {{dart_class_name}}ObjectBinding extends HT_ExternObject<{{dart_class_name}}> {
  {{dart_class_name}}ObjectBinding({{dart_class_name}} value) : super(value);

  @override
  final typeid = HT_TypeId('{{dart_class_name}}');

  {{#have_instance_getter}}
  @override
  dynamic fetch(String id) {
    switch (id) {
    {{#getter_case}}
      case '{{instance_identifier}}':
        return externObject.{{instance_identifier}};
    {{/getter_case}}
    {{#method_case}}
      case '{{method_identifier}}':
        return externObject.{{method_identifier}};
    {{/method_case}}
      default:
        throw HTErr_Undefined(id);
    }
  }
  {{/have_instance_getter}}

  {{#have_instance_setter}}
  @override
  void assign(String id, dynamic value) {
    switch (id) {
     {{#setter_case}}
      case '{{instance_identifier}}':
        externObject.{{instance_identifier}} = value;
        break;
     {{/setter_case}}
      default:
        throw HTErr_Undefined(id);
    }
  }
  {{/have_instance_setter}}
}
{{/have_instance_member}}

{{/all_classes}}''';

var ht_script_binding = '''import 'package:hetu_script/hetu_script.dart';
import 'ht_library_script_binding.dart';
{{#user_api_import}}
import {{import_file}};
{{/user_api_import}}

class HetuScriptBinding extends HetuLibraryScriptBinding {
  @override
  void loadAutoBinding(HT_Interpreter interpreter) {
    super.loadAutoBinding(interpreter);
    var bindings = {
      {{#user_bindings}}
      '{{dart_class_name}}' : {{prefix}}{{dart_class_name}}ClassBinding(),
      {{/user_bindings}}
    };
    bindings.forEach((key, value) {
      interpreter.bindExternalNamespace(key, value);
    });
  }

  @override
  Future loadAutoBindingScripts(HT_Interpreter interpreter, String path) {
    var future = super.loadAutoBindingScripts(interpreter, path);
    var futures = <Future>[];
    futures.add(future);
    {{#ht_user_bindings}}
    futures.add(interpreter.evalf(path + '/{{ht_file_relative_path}}'));
    {{/ht_user_bindings}}
    return Future.wait(futures);
  }
}''';

var ht_library_script_binding = '''import 'package:hetu_script/hetu_script.dart';
import 'package:meta/meta.dart';
{{#api_import}}
import {{import_file}};
{{/api_import}}

class HetuLibraryScriptBinding {
  @mustCallSuper
  void loadAutoBinding(HT_Interpreter interpreter) {
    var bindings = {
      {{#bindings}}
      '{{dart_class_name}}' : {{prefix}}{{dart_class_name}}ClassBinding(),
      {{/bindings}}
    };
    bindings.forEach((key, value) {
      interpreter.bindExternalNamespace(key, value);
    });
  }

  @mustCallSuper
  Future loadAutoBindingScripts(HT_Interpreter interpreter, String path) {
    var futures = <Future>[];
    {{#ht_bindings}}
    futures.add(interpreter.evalf(path + '/{{ht_file_relative_path}}'));
    {{/ht_bindings}}
    return Future.wait(futures);
  }
}''';

var ht_classes = '''{{#ht_enums}}
external class {{enum_name}} {
{{#binding_enums}}
    static var {{enum_constant_name}}
{{/binding_enums}}
}
{{/ht_enums}}
{{#ht_classes}}
external class {{dart_class_name}} {
{{#field_declaration}}
    {{field}}
{{/field_declaration}}
}
{{/ht_classes}}''';

