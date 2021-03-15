class FileDefine {
  late final String filePath;
  late final List<FieldVarDefine> globalVars;
  late final List<FunctionDefine> globalFunctions;
  late final List<EnumDefine> enums;
  late final List<ClassDefine> classes;
  late final List<ClassDefine> privateClasses;
  late final List<ImportDefine> imports = [];

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
    return null;
  }

  void parse(Map<String, dynamic> json) {
    globalVars = <FieldVarDefine>[];
    globalFunctions = <FunctionDefine>[];
    enums = [];
    classes = [];
    privateClasses = [];

    try {
      var im = json['import'] as List?;
      im?.forEach((element) {
        var i = ImportDefine(element);
        imports.add(i);
      });
      var root = json['top'] as List?;
      if (root != null) {
        root.forEach((element) {
          if (element is! Map<String, dynamic>) {
            print('$element');
          }
          var e = element as Map<String, dynamic>;
          if (e['_'] == 'ClassDeclaration') {
            var cd = ClassDefine(e);
            if (cd.isPrivate) {
              privateClasses.add(cd);
            } else {
              classes.add(cd);
            }
          } else if (e['_'] == 'TopLevelVariableDeclaration') {
            var vars = e['var']['vars'] as List?;

            //variable list
            if (vars != null) {
              for (Map<String, dynamic> value in vars) {
                var v = FieldVarDefine(value, isStatic: false, isTopLevel: true);
                globalVars.add(v);
              }
            }
          } else if (e['_'] == 'FunctionDeclaration') {
            var m = FunctionDefine(e);
            globalFunctions.add(m);
          } else if (e['_'] == 'EnumDeclaration') {
            var v = EnumDefine(e);
            enums.add(v);
          }
        });
      }
    } catch (err, stack) {
      print('$err\n$stack');
    }
  }
}

class ClassDefine {
  late final String name;
  late final String? superClassName;
  ClassDefine? superClass;
  bool ignored = false;

  late final Set<String> annotations;
  late final List<ConstructorDefine> constructors;
  late final List<FieldVarDefine> instanceVars;
  late final List<MethodDefine> instanceMethods;
  late final List<FieldVarDefine> staticVars;
  late final List<MethodDefine> staticMethods;
  late final String raw;
  final List<String> identifiers = [];
  late final bool isAbstract;
  late final List<Map>? generics;

  bool get isPrivate => name.startsWith('_');

  ClassDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    name = json['name'];
    superClassName = json['super'];
    raw = json['raw'];
    generics = json['generic'];
    identifiers.addAll(json['identifiers']);
    isAbstract = json['abstract?'];
    constructors = [];
    instanceVars = [];
    instanceMethods = [];
    staticVars = [];
    staticMethods = [];
    annotations = {};

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
            var fieldList = e['fields'];
            var vars = fieldList['vars'] as List;
            //variable list
            for (Map<String, dynamic> value in vars) {
              var v = FieldVarDefine(value, isStatic: isStatic, isTopLevel: false);
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
            var c = ConstructorDefine(e);
            constructors.add(c);
            break;
          default:
            assert(false, 'Unknown Declaration[${e['_']}!');
        }
      }
    }
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
  String? type;
  String? value;
  late final bool isFinal;
  late final String raw;
  final List<String> identifiers = [];
  final bool isTopLevel;
  final bool isStatic;

  bool get isPrivate => name.startsWith('_');
  late final bool isConst;

  FieldVarDefine(Map<String, dynamic> json, {required this.isStatic,required this.isTopLevel}) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    name = json['name'];
    var init = json['init'];
    isFinal = json['final?'];
    isConst = json['const?'];
    raw = json['raw'];
    if (init != null) {
      var rawType = init['_'];
      if (rawType == 'MethodInvocation') {
        identifiers.addAll(init['identifiers']);
      }
      type = init['type'];
      value = init['value'];
    }
  }
}

class ParamDefine {
  late final String name;
  String? type;
  String? defaultValue;
  final List<String> defaultValueIdentifiers = [];
  late final bool thisPeriod;
  late final bool isPositional;
  late final bool isOptional;
  late final bool isNamed;
  late final bool isFinal;

  ParamDefine(Map<String, dynamic> json) {
    parse(json);
  }

  String toCtorParam() {
    return name;
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
          isFinal = json['final?'];
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
          isFinal = json['final?'];
          break;
        case 'FunctionTypedFormalParameter':
          name = js['name'];
          isPositional = js['pos?'];
          isOptional = js['optional?'];
          isNamed = js['named?'] ?? false;
          isFinal = json['final?'];
          break;
        default:
          assert(false, 'Unknown Parameter [$js]!');
      }
    }

    parseParameter(json);
  }
}

class ConstructorDefine {
  late final String? name;
  late final List<ParamDefine> params;
  String? paramRaw;
  late final bool isFactory;

  bool get isPrivate => name?.startsWith('_') ?? false;

  bool get isDefault => name == null;

  ConstructorDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    name = json['name'];
    paramRaw = json['params_raw'];
    params = [];
    isFactory = json['factory?'];
    var p = json['params'] as List;
    p.forEach((param) {
      var v = ParamDefine(param);
      params.add(v);
    });
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
    var paramList = [];
    params.forEach((p) {
      if (p.isPositional) {
        paramList.add(p.name);
      } else if (p.isNamed) {
        paramList.add('${p.name} : ${p.name}');
      }
    });
    return '(${paramList.join(', ')})';
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
  late final String returnType;
  late final List<ParamDefine> params;
  late final String body;
  late final bool isOperator;
  late final String raw;
  late final bool isStatic;
  final List<String> identifiers = [];
  late final bool isGetter;
  late final bool isSetter;
  late final bool isTest;
  final List<String> extendsTypes = [];

  bool get isPrivate => name.startsWith('_');

  MethodDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    name = json['name'];
    returnType = json['ret'];
    isStatic = json['static'];
    body = json['body'];
    raw = json['raw'];
    isGetter = json['getter?'];
    isSetter = json['setter?'];
    isTest = json['test?'];
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
    var paramList = [];
    params.forEach((p) {
      if (p.isPositional) {
        paramList.add(p.name);
      } else if (p.isNamed) {
        paramList.add('${p.name} : ${p.name}');
      }
    });
    return '(${paramList.join(', ')})';
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
  final List<String> externalVars;

  BindingDefine(this.filePath, this.externalVars);
}
