import 'package:hetu_script/hetu_script.dart';
import 'dart:convert';


class JsonUnsupportedObjectErrorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'JsonUnsupportedObjectError':
        return (unsupportedObject, {cause, partialResult}) => JsonUnsupportedObjectErrorObjectBinding(JsonUnsupportedObjectError(unsupportedObject, cause : cause, partialResult : partialResult));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class JsonUnsupportedObjectErrorObjectBinding extends HT_ExternObject<JsonUnsupportedObjectError> {
  JsonUnsupportedObjectErrorObjectBinding(JsonUnsupportedObjectError value) : super(value);

  @override
  final typeid = HT_TypeId('JsonUnsupportedObjectError');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'unsupportedObject':
        return externObject.unsupportedObject;
      case 'cause':
        return externObject.cause;
      case 'partialResult':
        return externObject.partialResult;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class JsonCyclicErrorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'JsonCyclicError':
        return (object) => JsonCyclicErrorObjectBinding(JsonCyclicError(object));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class JsonCyclicErrorObjectBinding extends HT_ExternObject<JsonCyclicError> {
  JsonCyclicErrorObjectBinding(JsonCyclicError value) : super(value);

  @override
  final typeid = HT_TypeId('JsonCyclicError');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class JsonCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'JsonCodec':
        return ({reviver, toEncodable}) => JsonCodecObjectBinding(JsonCodec(reviver : reviver, toEncodable : toEncodable));
      case 'JsonCodec.withReviver':
        return (reviver) => JsonCodecObjectBinding(JsonCodec.withReviver(reviver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class JsonCodecObjectBinding extends HT_ExternObject<JsonCodec> {
  JsonCodecObjectBinding(JsonCodec value) : super(value);

  @override
  final typeid = HT_TypeId('JsonCodec');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'encoder':
        return externObject.encoder;
      case 'decoder':
        return externObject.decoder;
      case 'decode':
        return externObject.decode;
      case 'encode':
        return externObject.encode;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class JsonEncoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'JsonEncoder':
        return ([toEncodable]) => JsonEncoderObjectBinding(JsonEncoder(toEncodable));
      case 'JsonEncoder.withIndent':
        return (indent, [toEncodable]) => JsonEncoderObjectBinding(JsonEncoder.withIndent(indent, toEncodable));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class JsonEncoderObjectBinding extends HT_ExternObject<JsonEncoder> {
  JsonEncoderObjectBinding(JsonEncoder value) : super(value);

  @override
  final typeid = HT_TypeId('JsonEncoder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'indent':
        return externObject.indent;
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

class JsonUtf8EncoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'JsonUtf8Encoder':
        return ([indent, toEncodable, bufferSize]) => JsonUtf8EncoderObjectBinding(JsonUtf8Encoder(indent, toEncodable, bufferSize));
      case 'JsonUtf8Encoder.DEFAULT_BUFFER_SIZE':
        return JsonUtf8Encoder.DEFAULT_BUFFER_SIZE;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class JsonUtf8EncoderObjectBinding extends HT_ExternObject<JsonUtf8Encoder> {
  JsonUtf8EncoderObjectBinding(JsonUtf8Encoder value) : super(value);

  @override
  final typeid = HT_TypeId('JsonUtf8Encoder');

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

class JsonDecoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'JsonDecoder':
        return ([reviver]) => JsonDecoderObjectBinding(JsonDecoder(reviver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class JsonDecoderObjectBinding extends HT_ExternObject<JsonDecoder> {
  JsonDecoderObjectBinding(JsonDecoder value) : super(value);

  @override
  final typeid = HT_TypeId('JsonDecoder');

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

