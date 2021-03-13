part of 'source.dart';

const _kPrivateConstValue = 1;
class _PrivateClass {final defaultValue = 1; const _PrivateClass();}
class DartPersonWrapper extends DartPerson with HT_Reflect {
  DartPersonWrapper() : super();
  DartPersonWrapper.withName([name]) : super.withName(name);
  DartPersonWrapper.complex(pos, [optional]) : super.complex(pos, optional);
  DartPersonWrapper.complex2(pos, {named, privateClass}) : super.complex2(pos, named : named, privateClass : privateClass);

  @override
  final typeid = HT_Type('DartPerson');

  @override
  dynamic getProperty(String id) {
    switch (id) {
      case 'name':
        return name;
      case 'greeting':
        return greeting;
      default:
        throw HTErr_Undefined(id);
    }
  }
  @override
  void setProperty(String id, dynamic value) {
    switch (id) {
      case 'name':
        name = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

var externalBindingDartPerson = <String, HT_ExternFunc>{
    'DartPerson': (HT_Interpreter interpreter,
        {List<dynamic> positionalArgs = const [],
        Map<String, dynamic> namedArgs = const {},
        HT_Object? object}) {
      return DartPersonWrapper();
    },
    'DartPerson.withName': (HT_Interpreter interpreter,
        {List<dynamic> positionalArgs = const [],
        Map<String, dynamic> namedArgs = const {},
        HT_Object? object}) {
      return DartPersonWrapper.withName(positionalArgs[0]);
    },
    'DartPerson.complex': (HT_Interpreter interpreter,
        {List<dynamic> positionalArgs = const [],
        Map<String, dynamic> namedArgs = const {},
        HT_Object? object}) {
      return DartPersonWrapper.complex(positionalArgs[0], positionalArgs[1]);
    },
    'DartPerson.complex2': (HT_Interpreter interpreter,
        {List<dynamic> positionalArgs = const [],
        Map<String, dynamic> namedArgs = const {},
        HT_Object? object}) {
      return DartPersonWrapper.complex2(positionalArgs[0], named : namedArgs.containsKey('named') ? namedArgs['named'] : _kPrivateConstValue + _kPrivateConstValue * 2, privateClass : namedArgs.containsKey('privateClass') ? namedArgs['privateClass'] : const _PrivateClass());
    },
    'DartPerson.meaning': (HT_Interpreter interpreter,
        {List<dynamic> positionalArgs = const [],
        Map<String, dynamic> namedArgs = const {},
        HT_Object? object}) {
      return DartPerson.meaning(positionalArgs[0]);
    },
    'DartPerson.__get__race': (HT_Interpreter interpreter,
        {List<dynamic> positionalArgs = const [],
        Map<String, dynamic> namedArgs = const {},
        HT_Object? object}) {
      return DartPerson.race;
    },
    'DartPerson.__set__race': (HT_Interpreter interpreter,
        {List<dynamic> positionalArgs = const [],
        Map<String, dynamic> namedArgs = const {},
        HT_Object? object}) {
      DartPerson.race = positionalArgs.isNotEmpty ? positionalArgs.first : null;
    },
};
