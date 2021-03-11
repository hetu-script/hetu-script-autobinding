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
  static var a = 1, b = 2, c = [1, 2, 3];
  var d = _kConstValue + _kConstValue + b;
  var e = {'1' : 1, '2' : 2};
  static var f;

  dynamic getProperty(String name) {
    switch(name) {
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


void main() {
  var ctorBinding = {
    'Person' : (interpreter, args, namedArgs) {
      return DartPerson();
    },
    'Person.withName' : (interpreter, args, namedArgs) {
      return DartPerson.withName(args[0]);
    },
  };

  var staticVarGetterBinding = {
    'DDD.a' :  (interpreter, args, namedArgs) {
      return DDD.a;
    },
  };

  var staticVarSetterBinding = {
    'DDD.a' :  (interpreter, args, namedArgs) {
      DDD.a = args[0];
    },
  };
}

class A {
  var a;
  static var aa;
  static void fa() {}
}

class B extends A{
  var b;
  static var bb;
  static void fb() {}
}



class WrapperA extends A {
  dynamic getProperty(name) {
    if (name == 'a') {
      B.bb;
      A.fa();
      B.fb();
      return a;
    }
  }
}

class WrapperB extends B {
  dynamic getProperty(name) {
    if (name == 'a') {
      return a;
    }
    if (name == 'b') {
      return b;
    }
  }
}