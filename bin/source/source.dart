import 'package:hetu_script/hetu_script.dart';

part 'source.g.dart';

const int _kPrivateConstValue = 1;

class _PrivateClass {
  final defaultValue = 1;

  const _PrivateClass();
}

@HT_Binding()
class DartPerson {
  static var race = 'Caucasian';

  static String meaning(int n) => 'The meaning of life is $n';

  DartPerson();

  DartPerson.withName([this.name = 'some guy']);

  DartPerson.complex(int pos, [int optional = 3]) {
    print(pos);
    print(optional);
  }

  DartPerson.complex2(int pos,
      {int named = _kPrivateConstValue + _kPrivateConstValue * 2,
      _PrivateClass privateClass = const _PrivateClass()}) {
    print(pos);
    print(named);
    print(privateClass);
  }

  late String name;

  void greeting() {
    print('Hi! I\'m $name');
  }
}
