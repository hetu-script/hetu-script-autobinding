import 'package:hetu_script/hetu_script.dart';
import 'dart:convert';


class AsciiCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AsciiCodec':
        return ({allowInvalid = false}) => AsciiCodecObjectBinding(AsciiCodec(allowInvalid : allowInvalid));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AsciiCodecObjectBinding extends HT_ExternObject<AsciiCodec> {
  AsciiCodecObjectBinding(AsciiCodec value) : super(value);

  @override
  final typeid = HT_TypeId('AsciiCodec');

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

class AsciiEncoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AsciiEncoder':
        return () => AsciiEncoderObjectBinding(AsciiEncoder());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AsciiEncoderObjectBinding extends HT_ExternObject<AsciiEncoder> {
  AsciiEncoderObjectBinding(AsciiEncoder value) : super(value);

  @override
  final typeid = HT_TypeId('AsciiEncoder');


}

class AsciiDecoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AsciiDecoder':
        return ({allowInvalid = false}) => AsciiDecoderObjectBinding(AsciiDecoder(allowInvalid : allowInvalid));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AsciiDecoderObjectBinding extends HT_ExternObject<AsciiDecoder> {
  AsciiDecoderObjectBinding(AsciiDecoder value) : super(value);

  @override
  final typeid = HT_TypeId('AsciiDecoder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'startChunkedConversion':
        return externObject.startChunkedConversion;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

