import 'package:hetu_script/hetu_script.dart';
import 'dart:core';


class StringBufferClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StringBuffer':
        return ([content = ""]) => StringBufferObjectBinding(StringBuffer(content));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StringBufferObjectBinding extends HT_ExternObject<StringBuffer> {
  StringBufferObjectBinding(StringBuffer value) : super(value);

  @override
  final typeid = HT_TypeId('StringBuffer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'length':
        return externObject.length;
      case 'isEmpty':
        return externObject.isEmpty;
      case 'isNotEmpty':
        return externObject.isNotEmpty;
      case 'write':
        return externObject.write;
      case 'writeCharCode':
        return externObject.writeCharCode;
      case 'writeAll':
        return externObject.writeAll;
      case 'writeln':
        return externObject.writeln;
      case 'clear':
        return externObject.clear;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

