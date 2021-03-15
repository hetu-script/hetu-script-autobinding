import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class SystemEncodingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SystemEncoding':
        return () => SystemEncodingObjectBinding(SystemEncoding());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SystemEncodingObjectBinding extends HT_ExternObject<SystemEncoding> {
  SystemEncodingObjectBinding(SystemEncoding value) : super(value);

  @override
  final typeid = HT_TypeId('SystemEncoding');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'name':
        return externObject.name;
      case 'encoder':
        return externObject.encoder;
      case 'decoder':
        return externObject.decoder;
      case 'encode':
        return externObject.encode;
      case 'decode':
        return externObject.decode;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

