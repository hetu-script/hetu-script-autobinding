class FileDefine {
  late final List<VarDefine> globalVars;
  late final List<ClassDefine> classes;

  FileDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    globalVars = [];
    classes = [];
    var root = json['root'] as List?;
    if (root != null) {
      root.forEach((element) {
        var e = element as Map<String, dynamic>;
        if (e['_'] == 'ClassDeclaration') {
          var cd = ClassDefine(e);
          classes.add(cd);
        }
      });
    }
  }
}

class ClassDefine {
  late final String className;
  late final List<VarDefine> memberVars;
  late final List<ConstructorDefine> constructors;


  ClassDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {
    className = json['name'];
    memberVars = [];
    constructors = [];
    var missingTypeVars = [];
    var members = json['members'] as List?;
    if (members != null) {
      for (var value in members) {
        var e = value as Map<String, dynamic>;
        if (e['_'] == 'FieldDeclaration') {
          var isStatic = e['static'] as bool;
          var fields = e['fields'] as List;
          //variable list
          fields.forEach((field) {
            var decVarType = field['type'];
            var vars = field['vars'] as List;

            for (Map<String,dynamic> value in vars) {
              var v = VarDefine(value);
              memberVars.add(v);
            }
          });

        }
      }
    }
  }
}

class VarDefine {
  late final String name;
  // late final init;
  // late final String type;

  VarDefine(Map<String, dynamic> json) {
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

class ConstructorDefine {
  late final String name;

  ConstructorDefine(Map<String, dynamic> json) {
    parse(json);
  }

  void parse(Map<String, dynamic> json) {

  }
}
