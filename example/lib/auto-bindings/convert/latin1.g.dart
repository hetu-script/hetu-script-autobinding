import 'package:hetu_script/hetu_script.dart';
import 'dart:convert';


class Latin1CodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Latin1Codec':
        return ({allowInvalid = false}) => Latin1CodecObjectBinding(Latin1Codec(allowInvalid : allowInvalid));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Latin1CodecObjectBinding extends HT_ExternObject<Latin1Codec> {
  Latin1CodecObjectBinding(Latin1Codec value) : super(value);

  @override
  final typeid = HT_TypeId('Latin1Codec');

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

class Latin1EncoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Latin1Encoder':
        return () => Latin1EncoderObjectBinding(Latin1Encoder());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Latin1EncoderObjectBinding extends HT_ExternObject<Latin1Encoder> {
  Latin1EncoderObjectBinding(Latin1Encoder value) : super(value);

  @override
  final typeid = HT_TypeId('Latin1Encoder');


}

class Latin1DecoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Latin1Decoder':
        return ({allowInvalid = false}) => Latin1DecoderObjectBinding(Latin1Decoder(allowInvalid : allowInvalid));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Latin1DecoderObjectBinding extends HT_ExternObject<Latin1Decoder> {
  Latin1DecoderObjectBinding(Latin1Decoder value) : super(value);

  @override
  final typeid = HT_TypeId('Latin1Decoder');

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

