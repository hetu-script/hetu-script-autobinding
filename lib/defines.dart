import 'package:hetu_binding_generator/binding-generator.dart';

const _hetuKeywords = [
  'null',
  'true',
  'false',
  'void',
  'type',
  'import',
  'export',
  'from',
  'any',
  'unknown',
  'never',
  'var',
  'final',
  'const',
  'def',
  'delete',
  'typeof',
  'namespace',
  'class',
  'enum',
  'fun',
  'struct',
  'this',
  'super',
  'abstract',
  'override',
  'external',
  'static',
  'extends',
  'implements',
  'with',
  'new',
  'construct',
  'factory',
  'get',
  'set',
  'async',
  'await',
  'break',
  'continue',
  'return',
  'for',
  'in',
  'of',
  'if',
  'else',
  'while',
  'do',
  'when',
  'is',
  'as'
];

class FileDefine {
  late final String filePath;
  late final List<FieldVarDefine> globalVars;
  late final List<FunctionDefine> globalFunctions;
  late final List<EnumDefine> enums;
  late final List<ExtensionDefine> extensions;
  late final List<ClassDefine> classes;
  late final List<ClassDefine> privateClasses;
  late final List<MixinDefine> mixins = [];
  late final List<ImportDefine> imports = [];
  late final List<ImportDefine> extImports = [];
  String? library;
  String? partOf;
  late final List<FunctionTypeDefine> functionTypedefs = [];

  FileDefine(Map<String, dynamic> json, String path) {
    filePath = path;
    parse(json);
  }

  dynamic findIdentifier(String id) {
    var index = globalVars.indexWhere((element) => element.name == id);
    if (index != -1) {
      return globalVars[index];
    }
    index = globalFunctions.indexWhere((element) => element.name == id);
    if (index != -1) {
      return globalFunctions[index];
    }
    index = privateClasses.indexWhere((element) => element.name == id);
    if (index != -1) {
      return privateClasses[index];
    }

    for (var kclass in classes) {
      index = kclass.staticMethods.indexWhere((element) => element.name == id);
      if (index != -1) {
        return kclass.staticMethods[index];
      }

      index = kclass.staticVars.indexWhere((element) => element.name == id);
      if (index != -1) {
        return kclass.staticVars[index];
      }
    }
    for(final mix in mixins){
      mix.instanceMethods.indexWhere((element) => element.name == id);
      if(index!=-1){
        return mix;
      }
    }
    return null;
  }

  void parse(Map<String, dynamic> json) {
    globalVars = <FieldVarDefine>[];
    globalFunctions = <FunctionDefine>[];
    enums = [];
    classes = [];
    privateClasses = [];
    extensions = [];

    try {
      var im = json['import'] as List?;
      im?.forEach((element) {
        if (element['_'] == 'ImportDirective') {
          var i = ImportDefine(element);
          imports.add(i);
        } else if (element['_'] == 'PartOfDirective') {
          partOf = element['lib'];
        } else if (element['_'] == 'LibraryDirective') {
          library = element['lib'];
          print('library: $library');
        }
      });

      var root = json['top'] as List?;
      if (root != null) {
        root.forEach((element) {
          if (element is! Map<String, dynamic>) {
            print('$element');
          }
          var e = element as Map<String, dynamic>;
          if (e['_'] == 'ClassDeclaration') {
            var cd = ClassDefine(e, this);
            if (cd.isPrivate) {
              privateClasses.add(cd);
            } else {
              classes.add(cd);
            }
          } else if (e['_'] == 'TopLevelVariableDeclaration') {
            var fieldList = e['var'];
            var vars = fieldList['vars'] as List?;
            var fieldType = fieldList['type'];
            if (fieldType != null && fieldType.endsWith('?')) {
              fieldType = fieldType.substring(0, fieldType.length - 1);
            }
//variable list
            if (vars != null) {
              for (Map<String, dynamic> value in vars) {
                var v = FieldVarDefine(value,
                    isStatic: false,
                    isTopLevel: true,
                    isDeprecated: false,
                    isProtected: false,
                    type: fieldType);
                globalVars.add(v);
              }
            }
          } else if (e['_'] == 'FunctionDeclaration') {
            var m = FunctionDefine(e);
            globalFunctions.add(m);
          } else if (e['_'] == 'EnumDeclaration') {
            var v = EnumDefine(e);
            enums.add(v);
          } else if (e['_'] == 'FunctionTypeAlias' ||
              e['_'] == 'GenericTypeAlias') {
            var f = FunctionTypeDefine(e);
            functionTypedefs.add(f);
          } else if (e['_'] == 'ExtensionDeclaration') {
            var ex = ExtensionDefine(e, this);
            extensions.add(ex);
          } else if (e['_'] == 'MixinDeclaration') {
            var m = MixinDefine(e);
            mixins.add(m);
          }
        });
      }
    } catch (err, stack) {
      print('$err\n$stack');
    }
  }
}

class ExtensionDefine {
  late final String name;
  late final String superName;
  late final List<MethodDefine> instanceMethods;
  late final FileDefine fileDefine;
  late final String import;
  bool ignored = false;

  ExtensionDefine(Map<String, dynamic> json, this.fileDefine) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    instanceMethods = [];
    name = json['name'];
    superName = json['super'];

    var members = json['members'] as List?;
    if (members != null) {
      for (var value in members) {
        var e = value as Map<String, dynamic>;
        switch (e['_']) {
          case 'MethodDeclaration':
            var m = MethodDefine(e);
            instanceMethods.add(m);
            break;
          default:
            assert(false, 'Unknown Declaration[${e['_']}!');
        }
      }
    }
  }
}

class ClassDefine {
  FileDefine file;
  late final String name;
  late final String? superClassName;
  ClassDefine? superClass;
  late final List<String> mixinNames = [];
  late final List<MixinDefine> withMixins;
  bool ignored = false;
  bool superFetched = false;

  late final Set<String> annotations;
  late final List<ConstructorDefine> constructors;
  late final List<FieldVarDefine> instanceVars;
  late final List<MethodDefine> instanceMethods;
  late final List<FieldVarDefine> staticVars;
  late final List<MethodDefine> staticMethods;
  late final String raw;
  final List<String> identifiers = [];
  late final bool isAbstract;
  late final bool isTest;
  late final List<Map>? generics;

  bool get isPrivate => name.startsWith('_');

  ClassDefine(Map<String, dynamic> json, this.file) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    name = json['name'];
    superClassName = json['super'];
    raw = json['raw'];
    generics = json['generic'];
    identifiers.addAll(json['identifiers']);
    isAbstract = json['abstract?'];
    isTest = json['test?'];
    constructors = [];
    instanceVars = [];
    instanceMethods = [];
    staticVars = [];
    staticMethods = [];
    annotations = {};
    withMixins = [];
    var mixins = json['with'];
    if (mixins != null) {
      mixinNames.addAll(mixins);
    }

// var missingTypeVars = [];
    var meta = json['meta'] as List;
    meta.forEach((m) {
      annotations.add(m['annotation']);
    });
    var members = json['members'] as List?;
    if (members != null) {
      for (var value in members) {
        var e = value as Map<String, dynamic>;
        switch (e['_']) {
          case 'FieldDeclaration':
            var isStatic = e['static'] as bool;
            var isProtected = e['protected?'] as bool;
            var isDeprecated = e['deprecated?'] as bool;
            var fieldList = e['fields'];
            var fieldType = fieldList['type'] as String?;
            if (fieldType != null && fieldType.endsWith('?')) {
              fieldType = fieldType.substring(0, fieldType.length - 1);
            }
// print('fieldType: $fieldType');
            var vars = fieldList['vars'] as List;
//variable list
            for (Map<String, dynamic> value in vars) {
              var v = FieldVarDefine(value,
                  isStatic: isStatic,
                  isTopLevel: false,
                  isProtected: isProtected,
                  isDeprecated: isDeprecated,
                  type: fieldType);
              if (isStatic) {
                staticVars.add(v);
              } else {
                instanceVars.add(v);
              }
            }
            break;
          case 'MethodDeclaration':
            var isStatic = e['static'] as bool;
            var m = MethodDefine(e);
            if (isStatic) {
              staticMethods.add(m);
            } else {
              instanceMethods.add(m);
            }
            break;
          case 'ConstructorDeclaration':
            var c = ConstructorDefine(e, this);
            constructors.add(c);
            break;
          default:
            assert(false, 'Unknown Declaration[${e['_']}!');
        }
      }
    }

//对this参数进行type赋值
    FieldVarDefine findVar(String name) {
      return instanceVars.singleWhere((element) => element.name == name);
    }

    void checkThisType(List<ParamDefine> params) {
      params.forEach((element) {
        if (element.thisPeriod) {
//在定义中寻找
          var v = findVar(element.name!);
          element.type = v.type;
        }
      });
    }

    constructors.forEach((element) {
      checkThisType(element.params);
    });
  }
}

class FieldDefine {
  late final String name;

// late final init;
// late final String type;

  FieldDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    name = json['name'];
//暂时用不上type 和 init
// init = json['init'];
// if (init != null) {
//   var t = init['type'];
//   if (t != null){
//     type = t;
//   }
//   t = init['_'];
//   if (t != null) {
//     switch (t) {
//       case 'ListLiteral':
//
//       default:
//         assert(false, '$t Not Handled!');
//     }
//   }
// }
  }
}

class FieldVarDefine {
  late final String name;
  late final String realName;
  String? type;
  String? value;
  late final bool isFinal;
  late final String raw;
  final List<String> identifiers = [];
  final bool isTopLevel;
  final bool isStatic;
  final bool isProtected;
  final bool isDeprecated;

  bool get isPrivate => name.startsWith('_');
  late final bool isConst;

  FieldVarDefine(Map<String, dynamic> json,
      {required this.isStatic,
        required this.isTopLevel,
        required this.isProtected,
        required this.isDeprecated,
        required this.type}) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    final _name = json['name'];
    realName = _name;
    if (_hetuKeywords.contains(_name)) {
      name = '${_name}_alias';
    } else {
      name = _name;
    }
    var init = json['init'];
    isFinal = json['final?'];
    isConst = json['const?'];
    raw = json['raw'];
    if (init != null) {
      var rawType = init['_'];
      if (rawType == 'MethodInvocation') {
        identifiers.addAll(init['identifiers']);
      }
      if (init.containsKey('type')) {
        type = init['type'];
      }
      if (init.containsKey('value')) {
        value = init['value'];
      }
    }
  }

  String getValue() {
    var ret = 'value';
    ret = checkWrapValue(ret, type);
    return ret;
  }
}

class ParamDefine {
  late final String? name;
  String? type;
  String? defaultValue;
  final List<String> defaultValueIdentifiers = [];
  bool thisPeriod = false;
  late final bool isPositional;
  late final bool isOptional;
  late final bool isNamed;
  late final bool isFinal;
  late final bool isRequired;
  late  bool isSuper;
  String? Function(String paramName)? searchDefaultValue;

  ParamDefine(Map<String, dynamic> json, {this.searchDefaultValue}) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    void parseParameter(Map<String, dynamic> js) {
      switch (js['_']) {
        case 'SimpleFormalParameter':
          type = js['type'];
          name = js['name'];
          isPositional = js['pos?'];
          isOptional = js['optional?'];
          isNamed = js['named?'] ?? false;
          isRequired = js['required?'] ?? false;
          isSuper = false;
          break;
        case 'DefaultFormalParameter':
          var param = js['param'];
          defaultValue = js['default'];
          var defaultIdentifiers = js['default_identifiers'] as List<String>;
          defaultValueIdentifiers.addAll(defaultIdentifiers);
          parseParameter(param);
          break;
        case 'FieldFormalParameter':
          thisPeriod = js['this?'];
          name = js['name'];
          type = js['type'];
          isPositional = js['pos?'];
          isOptional = js['optional?'];
          isNamed = js['named?'] ?? false;
          isRequired = js['required?'] ?? false;
          isSuper = false;
          break;
        case 'FunctionTypedFormalParameter':
          name = js['name'];
          isPositional = js['pos?'];
          isOptional = js['optional?'];
          isNamed = js['named?'] ?? false;
          isRequired = js['required?'] ?? false;
          isSuper = false;
          break;
        case 'SuperFormalParameter' :
          type = js['type'];
          name = js['name'];
          isPositional = js['pos?'];
          isOptional = js['optional?'];
          isNamed = js['named?'] ?? false;
          isRequired = js['required?'] ?? false;
          isSuper = true;
          break;
        default:
          assert(false, 'Unknown Parameter [$js]!');
      }
    }

    isFinal = json['final?'] ?? false;
    parseParameter(json);
  }
}

String checkWrapValue(String v, String? type) {
  // return v;
  String? wrapContainerType;
  if (type?.startsWith('List<') ?? false) {
    wrapContainerType = type!;
    if (wrapContainerType.endsWith('?')) {
      wrapContainerType =
          wrapContainerType.substring(0, wrapContainerType.length - 1);
    }
  } else if (type?.startsWith('Map<') ?? false) {
    wrapContainerType = type!;
    if (wrapContainerType.endsWith('?')) {
      wrapContainerType =
          wrapContainerType.substring(0, wrapContainerType.length - 1);
    }
  } else if (type?.startsWith('Iterable<') ?? false) {
    wrapContainerType = type!.replaceAll('Iterable', '');
    if (wrapContainerType.endsWith('?')) {
      wrapContainerType =
          wrapContainerType.substring(0, wrapContainerType.length - 1);
    }
    return '$v.cast$wrapContainerType()';
  }
  if (wrapContainerType != null) {
    return '$wrapContainerType.from($v)';
  }
  return v;
}

class ConstructorDefine {
  late final String? name;
  late final String? realName;
  late final List<ParamDefine> params;
  final ClassDefine clazz;
  String? paramRaw;
  late final bool isFactory;
  late final bool isDeprecated;
  late final bool isConst;

  bool get isPrivate => name?.startsWith('_') ?? false;

  bool get isDefault => name == null;

  ConstructorDefine(Map<String, dynamic> json, this.clazz) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    final _name = json['name'];
    realName = _name;
    if (_hetuKeywords.contains(_name)) {
      name = '${_name}_alias';
    } else {
      name = _name;
    }

    paramRaw = json['params_raw'];
    params = [];
    isFactory = json['factory?'];
    isConst = json['const?'];
    isDeprecated = json['deprecated?'];
    var p = json['params'] as List;
    p.forEach((param) {
      var v = ParamDefine(param);
      params.add(v);
    });
  }

  String? getSuperConstructorParam(String paramName) {
    if (clazz.superClass != null) {
      for (final constructor in clazz.superClass!.constructors) {
        if (constructor.realName == this.realName) {
          for (final param in constructor.params) {
            if (param.name == paramName) {
              if (param.defaultValue != null) {
                return param.defaultValue;
              } else {
                return constructor.getSuperConstructorParam(paramName);
              }
            }
          }
        }
      }
    } else {
      if (clazz.superClassName != null) {
        final superClass = allClazzCache[clazz.superClassName!];
        if (superClass != null) {
          for (final constructor in superClass.constructors) {
            if (constructor.realName == this.realName) {
              for (final param in constructor.params) {
                if (param.name == paramName) {
                  if (param.defaultValue != null) {
                    return param.defaultValue;
                  } else {
                    return constructor.getSuperConstructorParam(paramName);
                  }
                }
              }
            }
          }
        }
      }
    }
    return null;
  }

  String? getSuperConstructorParamType(String paramName) {
    if (clazz.superClass != null) {
      for (final constructor in clazz.superClass!.constructors) {
        if (constructor.realName == this.realName) {
          for (final param in constructor.params) {
            if (param.name == paramName) {
              if (param.type != null) {
                return param.type;
              } else {
                return constructor.getSuperConstructorParamType(paramName);
              }
            }
          }
        }
      }
    } else {
      if (clazz.superClassName != null) {
        final superClass = allClazzCache[clazz.superClassName!];
        if (superClass != null) {
          for (final constructor in superClass.constructors) {
            if (constructor.realName == this.realName) {
              for (final param in constructor.params) {
                if (param.name == paramName) {
                  if (param.type != null) {
                    return param.type;
                  } else {
                    return constructor.getSuperConstructorParamType(paramName);
                  }
                }
              }
            }
          }
        }
      }
    }
    return null;
  }

  String getConstructorParams() {
    final allParams = <String>[];
    var namedParams = [];
    String getType(String? type) {
      return type?.contains('.') == true ? '' : ': $type';
    }

    params.forEach((p) {
      if (p.isPositional) {
        allParams.add("${p.name!}${getType(p.type)}");
      } else {
        namedParams.add("${p.name!}${getType(p.type)}");
      }
    });
    if (namedParams.isNotEmpty) {
      allParams.add('[${namedParams.join(', ')}]');
    }
    return '(${allParams.join(', ')})';
  }

  String getInvokeParam() {
    var allParams = [];
    var index = 0;
    params.forEach((p) {
      if (p.isPositional) {
        //顺序参数
        var value = checkWrapValue('positionalArgs[$index]', p.type);
        if (!p.isOptional) {
          allParams.add(value);
        } else {
          //顺序可选参数
          allParams.add(
              'positionalArgs.length > $index ? $value : ${p.defaultValue}');
        }
        index++;
      } else {
        //命名参数
        var type = p.type;
        if (type == null) {
          type = getSuperConstructorParamType(p.name!);
        }
        var value = checkWrapValue('namedArgs[\'${p.name}\']', type);
        if (p.isSuper  && p.defaultValue == null) {
          if(p.isRequired){
            allParams.add('${p.name} : $value');
          }else{
            final defaultValue = getSuperConstructorParam(p.name!);
            allParams.add(
                '${p.name} : namedArgs.containsKey(\'${p.name}\') ? $value : ${defaultValue}');
          }
        } else if (p.isRequired && p.defaultValue == null) {
          //没有默认值并且要求非null，这种情况用户必须保证提供了这个参数值
          allParams.add('${p.name} : $value');
        } else {
          allParams.add(
              '${p.name} : namedArgs.containsKey(\'${p.name}\') ? $value : ${p.defaultValue}');
        }
      }
    });
    return '(${allParams.join(', ')})';
  }

  List<String> getDefaultIdentifiers() {
    var list = <String>[];
    params.forEach((p) {
      list.addAll(p.defaultValueIdentifiers);
    });
    return list;
  }
}

class FunctionDefine {
  late final String name;
  late final String raw;
  final List<String> identifiers = [];

  FunctionDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    name = json['id']['identifier'];
    raw = json['raw'];
    identifiers.addAll(json['identifiers']);
  }
}

class MethodDefine {
  late final String name;
  late final String realName;
  late final String? returnType;
  late final bool generic;
  late final List<ParamDefine> params;
  late final String body;
  late final bool isOperator;
  late final String raw;
  late final bool isStatic;
  final List<String> identifiers = [];
  late final bool isGetter;
  late final bool isSetter;
  late final bool isTest;
  late final bool isProtected;
  late final bool isDeprecated;

  final List<String> extendsTypes = [];

  bool get isPrivate => name.startsWith('_');

  MethodDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    final _name = json['name'];
    realName = _name;
    if (_hetuKeywords.contains(_name)) {
      name = '${_name}_alias';
    } else {
      name = _name;
    }
    returnType = json['ret'];
    var genericTypes = json['generic?'] ?? [];
    generic = genericTypes.isNotEmpty;
    isStatic = json['static'];
    body = json['body'];
    raw = json['raw'];
    isGetter = json['getter?'];
    isSetter = json['setter?'];
    isTest = json['test?'];
    isProtected = json['protected?'];
    isDeprecated = json['deprecated?'];
    var genericType = json['type'] as List?;
    if (genericType != null) {
      genericType.forEach((element) {
        if (element['type'] == null) {
          return;
        }
        extendsTypes.add(element['type']);
      });
    }

    identifiers.addAll(json['identifiers']);
    params = [];
    isOperator = json['operator?'];
    var ps = json['params'];
    if (ps != null) {
      ps.forEach((element) {
        var v = ParamDefine(element);
        params.add(v);
      });
    }
  }

  String getParams() {
    var allParams = [];
    var latterParams = [];
    var isNamed = false;
    params.forEach((p) {
      if (p.isPositional && !p.isOptional) {
        allParams.add(p.name);
      } else {
        if (p.defaultValue != null) {
          latterParams.add('${p.name} = ${p.defaultValue}');
        } else {
          latterParams.add('${p.name}');
        }
        if (p.isNamed) {
          isNamed = true;
        }
      }
    });
    if (latterParams.isNotEmpty) {
      if (isNamed) {
        allParams.add('{${latterParams.join(', ')}}');
      } else {
        allParams.add('[${latterParams.join(', ')}]');
      }
    }
    return '(${allParams.join(', ')})';
  }

  String getInvokeParam() {
    if (isGetter) {
      return '';
    }
    var allParams = [];
    var index = 0;
    params.forEach((p) {
      if (p.isPositional) {
//顺序参数
        var value = checkWrapValue('positionalArgs[$index]', p.type);
        if (!p.isOptional) {
          allParams.add(value);
        } else {
//顺序可选参数
          allParams.add(
              'positionalArgs.length > $index ? $value : ${p.defaultValue}');
        }
        index++;
      } else {
//命名参数
        var value = checkWrapValue('namedArgs[\'${p.name}\']', p.type);
        if (p.defaultValue == null || p.defaultValue == 'null') {
          allParams.add('${p.name} : ${value}');
        } else {
          allParams.add(
              '${p.name} : namedArgs.containsKey(\'${p.name}\') ? $value : ${p.defaultValue}');
        }
      }
    });
    return '(${allParams.join(', ')})';
  }

  String getHetuParams() {
    var paramsList = [];
    var namedList = [];
    params.forEach((p) {
      if (p.isPositional) {
        paramsList.add(p.name);
      } else {
        namedList.add(p.name);
      }
    });
    if (paramsList.isEmpty && namedList.isEmpty) {
      return '';
    }
    if (namedList.isNotEmpty) {
      paramsList.add('{${namedList.join(', ')}}');
    }
    return ' (${paramsList.join(', ')})';
  }

  List<String> getDefaultIdentifiers() {
    var list = <String>[];
    params.forEach((p) {
      list.addAll(p.defaultValueIdentifiers);
    });
    return list;
  }
}

class ImportDefine {
  late final String? uri;
  late final String? prefix;

  ImportDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    uri = json['id'];
    prefix = json['prefix'];
  }
}

class EnumDefine {
  late final String name;
  late final List<String> constants = [];
  late final Set<String> annotations = {};

  bool get isPrivate => name.startsWith('_');

  EnumDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    name = json['name'];
    var enums = json['enums'] as List<String>;
    constants.addAll(enums);
    var meta = json['meta'] as List;
    meta.forEach((m) {
      annotations.add(m['annotation']);
    });
  }
}

class BindingDefine {
  final String filePath;
  final String htFilePath;
  final List<String> externalVars;
  final List<Map<String, dynamic>> funcTypeDefs;

  BindingDefine(this.filePath, this.htFilePath, this.externalVars, this.funcTypeDefs);
}

class FunctionTypeDefine {
  late final String name;
  late final List<ParamDefine> params;
  late final String returnType;
  late final bool generic;

  FunctionTypeDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    name = json['name'];
    returnType = json['returnType'];
    var genericTypes = json['generic?'] ?? [];
    generic = genericTypes.isNotEmpty;

    params = <ParamDefine>[];

    var ps = json['params'];
    if (ps != null) {
      ps.forEach((element) {
        var v = ParamDefine(element);
        params.add(v);
      });
    }
  }

  String getParams() {
    var allParams = [];
    var latterParams = [];
    var isNamed = false;
    for (var i = 0; i < params.length; ++i) {
      var p = params[i];
      var name = p.name ?? 'arg${i + 1}';
      if (p.isPositional && !p.isOptional) {
        allParams.add(name);
      } else {
        latterParams.add('$name');
        if (p.isNamed) {
          isNamed = true;
        }
      }
    }
    if (latterParams.isNotEmpty) {
      if (isNamed) {
        allParams.add('{${latterParams.join(', ')}}');
      } else {
        allParams.add('[${latterParams.join(', ')}]');
      }
    }
    return '(${allParams.join(', ')})';
  }

  String getInvokeParams() {
    var posParams = [];
    var namedParams = [];

    for (var i = 0; i < params.length; ++i) {
      var p = params[i];
      var name = p.name ?? 'arg${i + 1}';
      if (p.isPositional) {
        posParams.add(name);
      } else {
        namedParams.add("'$name': $name");
      }
    }
    var posArgs = 'const []';
    if (posParams.isNotEmpty) {
      posArgs = '[${posParams.join(', ')}]';
    }
    var namedArgs = 'const {}';
    if (namedParams.isNotEmpty) {
      namedArgs = '{${namedParams.join(', ')}}';
    }

    return '(positionalArgs: $posArgs, namedArgs: $namedArgs)';
  }
}

class MixinDefine {
// late final List<FieldVarDefine> instanceVars;
  bool ignored = false;
  late final String name;
  late final String raw;
  late final List<MethodDefine> instanceMethods;

  MixinDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    instanceMethods = [];
    name = json['name'];
    raw = json['raw'];
    var members = json['members'] as List?;
    if (members != null) {
      for (var value in members) {
        var e = value as Map<String, dynamic>;
        switch (e['_']) {
          case 'MethodDeclaration':
            var m = MethodDefine(e);
            if (!m.isStatic) {
              instanceMethods.add(m);
            }
            break;
          case 'FieldDeclaration':
            break;
          default:
            assert(false, 'Unknown Declaration ${e['_']}!');
        }
      }
    }
  }
}
