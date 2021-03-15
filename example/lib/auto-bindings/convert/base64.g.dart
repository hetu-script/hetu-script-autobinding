import 'package:hetu_script/hetu_script.dart';
import 'dart:convert';


class Base64CodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Base64Codec':
        return () => Base64CodecObjectBinding(Base64Codec());
      case 'Base64Codec.urlSafe':
        return () => Base64CodecObjectBinding(Base64Codec.urlSafe());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Base64CodecObjectBinding extends HT_ExternObject<Base64Codec> {
  Base64CodecObjectBinding(Base64Codec value) : super(value);

  @override
  final typeid = HT_TypeId('Base64Codec');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'encoder':
        return externObject.encoder;
      case 'decoder':
        return externObject.decoder;
      case 'decode':
        return externObject.decode;
      case 'normalize':
        return externObject.normalize;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class Base64EncoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Base64Encoder':
        return () => Base64EncoderObjectBinding(Base64Encoder());
      case 'Base64Encoder.urlSafe':
        return () => Base64EncoderObjectBinding(Base64Encoder.urlSafe());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Base64EncoderObjectBinding extends HT_ExternObject<Base64Encoder> {
  Base64EncoderObjectBinding(Base64Encoder value) : super(value);

  @override
  final typeid = HT_TypeId('Base64Encoder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'convert':
        return externObject.convert;
      case 'startChunkedConversion':
        return externObject.startChunkedConversion;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class Base64DecoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Base64Decoder':
        return () => Base64DecoderObjectBinding(Base64Decoder());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class Base64DecoderObjectBinding extends HT_ExternObject<Base64Decoder> {
  Base64DecoderObjectBinding(Base64Decoder value) : super(value);

  @override
  final typeid = HT_TypeId('Base64Decoder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'convert':
        return externObject.convert;
      case 'startChunkedConversion':
        return externObject.startChunkedConversion;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

