import 'package:hetu_script/hetu_script.dart';
import 'dart:convert';


class Utf8CodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Utf8Codec':
        return ({allowMalformed = false}) => Utf8CodecObjectBinding(Utf8Codec(allowMalformed : allowMalformed));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Utf8CodecObjectBinding extends HT_ExternObject<Utf8Codec> {
  Utf8CodecObjectBinding(Utf8Codec value) : super(value);

  @override
  final typeid = HT_TypeId('Utf8Codec');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'name':
        return externObject.name;
      case 'encoder':
        return externObject.encoder;
      case 'decoder':
        return externObject.decoder;
      case 'decode':
        return externObject.decode;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class Utf8EncoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Utf8Encoder':
        return () => Utf8EncoderObjectBinding(Utf8Encoder());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Utf8EncoderObjectBinding extends HT_ExternObject<Utf8Encoder> {
  Utf8EncoderObjectBinding(Utf8Encoder value) : super(value);

  @override
  final typeid = HT_TypeId('Utf8Encoder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'convert':
        return externObject.convert;
      case 'startChunkedConversion':
        return externObject.startChunkedConversion;
      case 'bind':
        return externObject.bind;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class Utf8DecoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Utf8Decoder':
        return ({allowMalformed = false}) => Utf8DecoderObjectBinding(Utf8Decoder(allowMalformed : allowMalformed));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Utf8DecoderObjectBinding extends HT_ExternObject<Utf8Decoder> {
  Utf8DecoderObjectBinding(Utf8Decoder value) : super(value);

  @override
  final typeid = HT_TypeId('Utf8Decoder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'convert':
        return externObject.convert;
      case 'startChunkedConversion':
        return externObject.startChunkedConversion;
      case 'bind':
        return externObject.bind;
      case 'fuse':
        return externObject.fuse;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

