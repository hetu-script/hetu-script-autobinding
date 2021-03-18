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
class {{enum_name}}HTBinding extends HTExternalClass {
  {{enum_name}}HTBinding() : super('{{enum_name}}');

  @override
  dynamic fetch(String varName, {String from = HTLexicon.global}) {
    switch (varName) {
      case 'values':
        return {{enum_name}}.values;
      {{#binding_enums}}
      case '{{enum_constant_name}}':
        return {{enum_name}}.{{enum_constant_name}};
      {{/binding_enums}}
      default:
        throw HTErrorUndefined(varName);
    }
  }


  @override
  dynamic instanceFetch(dynamic instance, String varName) {
    switch (varName) {
      case 'typeid':
        return HTTypeId('{{enum_name}}');
      case 'index':
        return (instance as {{enum_name}}).index;
      case 'toString':
        return (List<dynamic> positionalArgs, Map<String, dynamic> namedArgs) => (instance as {{enum_name}}).toString();
      default:
        throw HTErrorUndefined(varName);
    }
  }
}
{{/have_enums}}

{{#all_classes}}
{{#have_class_member}}
class {{dart_class_name}}HTBinding extends HTExternalClass {
  {{dart_class_name}}HTBinding() : super('{{dart_class_name}}');

  {{#have_class_fetch}}
  @override
  dynamic fetch(String varName, {String from = HTLexicon.global}) {
    switch (varName) {
      {{#binding_constructors}}
      case '{{dart_class_name}}{{constructor_name}}':
        {{#constructor_private_defines}}
        {{private_impl}}
        {{/constructor_private_defines}}
        return (posArgs, namedArgs) => {{dart_class_name}}{{generic_types}}{{constructor_name}}{{constructor_invoke_params}};
      {{/binding_constructors}}
      {{#binding_static_methods}}
      case '{{static_method_name}}':
        {{#static_method_private_defines}}
        {{private_impl}}
        {{/static_method_private_defines}}
        return (posArgs, namedArgs) => {{dart_class_name}}.{{static_method_name}}{{static_method_invoke_params}};
      {{/binding_static_methods}}
      {{#binding_static_variables_getter}}
      case '{{dart_class_name}}.{{static_variable_name}}':
        return {{dart_class_name}}.{{static_variable_name}};
      {{/binding_static_variables_getter}}
      default:
        throw HTErrorUndefined(varName);
    }
  }
  {{/have_class_fetch}}
  {{#have_class_assign}}
  @override
  void assign(String varName, dynamic value, {String from = HTLexicon.global}) {
    switch (varName) {
      {{#binding_static_variables_setter}}
      case '{{dart_class_name}}.{{static_variable_name}}':
        return {{dart_class_name}}.{{static_variable_name}} = value;
      {{/binding_static_variables_setter}}
      default:
        throw HTErrorUndefined(varName);
    }
  }
  {{/have_class_assign}}

  {{#have_instance_getter}}
  @override
  dynamic instanceFetch(dynamic instance, String id) {
    return (instance as {{dart_class_name}}).htFetch(id);
  }
  {{/have_instance_getter}}

  {{#have_instance_setter}}
  @override
  void instanceAssign(dynamic instance, String id, dynamic value) {
    (instance as {{dart_class_name}}).htAssign(id, value);
  }
  {{/have_instance_setter}}

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
      case 'typeid':
        return HTTypeId('{{dart_class_name}}');
    {{#getter_case}}
      case '{{instance_identifier}}':
        return {{instance_identifier}};
    {{/getter_case}}
    {{#method_case}}
      case '{{method_identifier}}':
        {{#instance_method_private_defines}}
        {{private_impl}}
        {{/instance_method_private_defines}}
        return (posArgs, namedArgs) => this.{{method_identifier}}{{instance_method_invoke_params}};
    {{/method_case}}
      default:
        throw HTErrorUndefined(varName);
    }
  }
  {{/have_instance_getter}}

  {{#have_instance_setter}}
  void htAssign(String varName, dynamic value) {
    switch (varName) {
      {{#setter_case}}
      case '{{instance_identifier}}':
        this.{{instance_identifier}} = value;
        break;
      {{/setter_case}}
      default:
        throw HTErrorUndefined(varName);
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
  Function? funcWrap(positionalArgs, namedArgs) {
    var f = super.funcWrap(positionalArgs, namedArgs);
    if (f != null) {
      return f;
    }
    String functionType = positionalArgs[0];
    HTFunction function = positionalArgs[1];
    switch (functionType) {
    }
    return null;
  }

  @override
  void loadAutoBinding(HTInterpreter interpreter) {
    super.loadAutoBinding(interpreter);
    var bindings = {
      {{#user_bindings}}
      '{{dart_class_name}}' : {{prefix}}{{dart_class_name}}HTBinding(),
      {{/user_bindings}}
    };
    bindings.forEach((key, value) {
      interpreter.bindExternalClass(key, value);
    });
  }

  @override
  Future loadAutoBindingScripts(HTInterpreter interpreter, String path) {
    var future = super.loadAutoBindingScripts(interpreter, path);
    var futures = <Future>[];
    futures.add(future);
    {{#ht_user_bindings}}
    futures.add(interpreter.import(path + '/{{ht_file_relative_path}}'));
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
  Function? funcWrap(positionalArgs, namedArgs) {
    String functionType = positionalArgs[0];
    HTFunction function = positionalArgs[1];
    switch (functionType) {
    }
    return null;
  }

  @mustCallSuper
  void loadAutoBinding(HTInterpreter interpreter) {
    interpreter.bindExternalFunction('funcwrap', funcWrap);
    var bindings = {
      {{#bindings}}
      '{{dart_class_name}}' : {{prefix}}{{dart_class_name}}HTBinding(),
      {{/bindings}}
    };
    bindings.forEach((key, value) {
      interpreter.bindExternalClass(key, value);
    });
  }

  @mustCallSuper
  Future loadAutoBindingScripts(HTInterpreter interpreter, String path) {
    var futures = <Future>[];
    {{#ht_bindings}}
    futures.add(interpreter.import(path + '/{{ht_file_relative_path}}'));
    {{/ht_bindings}}
    return Future.wait(futures);
  }
}''';

var ht_classes = '''{{#ht_enums}}
external class {{enum_name}} {
{{#binding_enums}}
    static const {{enum_constant_name}}
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

