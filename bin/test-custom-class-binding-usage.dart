import 'package:hetu_script/hetu_script.dart';

import 'source/source.dart';

void main(args) {
  var hetu = HT_Interpreter(externalFunctions: externalBindingDartPerson);

  hetu.eval('''
      external class DartPerson {
        static var race
        static fun meaning (n: num) {}
        init {} // 必须有空括号
        init withName {}
        init complex {}
        init complex2 {}
        var name
        fun greeting
      }
      fun main {
        var p = DartPerson.withName('Jimmy')
        print(p.name)
        p.name = 'John'
        p.greeting();

        print('My race is', DartPerson.race)
        DartPerson.race = 'Reptile'
        print('Oh no! My race turned into', DartPerson.race)
        
        var pc1 = DartPerson.complex(1, 2);
        var pc2 = DartPerson.complex2(2, named: 2)

        print(DartPerson.meaning(42))
      }
      ''', invokeFunc: 'main');
}
