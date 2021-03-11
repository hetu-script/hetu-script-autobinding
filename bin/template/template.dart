class DartPerson {
  static const race = '123';
  var test;

  static int meaning() => 42;
  String name = 'no';

  void greeting() {
    print('Hi!');
  }

  DartPerson();

  DartPerson.withName([this.name = 'some guy']);
}

const _kConstValue = 1;

class DDD {
  static const a = 1, b = 2, c = [1, 2, 3];
  var d = _kConstValue + _kConstValue + b;
  var e = {'1' : 1, '2' : 2};

  dynamic getProperty(String name) {
    switch(name) {
      case 'a':
        return a;
      case 'e':
        return e;
      case 'd':
        return d;
      default:
        return null;
    }
  }
}

mixin HT_Reflect {}

class DartPersonWrapper extends DartPerson with HT_Reflect {
  DartPersonWrapper() : super();

  DartPersonWrapper.withName([String name = 'some guy']) : super.withName(name);
}

//
// void main() {
//   var binding = {
//     'Person' : (interpreter, args, namedArgs) {
//       return DartPerson();
//     },
//     'Person.withName' : (interpreter, args, namedArgs) {
//       return DartPerson.withName(args[0]);
//     },
//   };
// }
