import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';


class BinaryCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BinaryCodec':
        return () => BinaryCodecObjectBinding(BinaryCodec());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BinaryCodecObjectBinding extends HT_ExternObject<BinaryCodec> {
  BinaryCodecObjectBinding(BinaryCodec value) : super(value);

  @override
  final typeid = HT_TypeId('BinaryCodec');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decodeMessage':
        return externObject.decodeMessage;
      case 'encodeMessage':
        return externObject.encodeMessage;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StringCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StringCodec':
        return () => StringCodecObjectBinding(StringCodec());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StringCodecObjectBinding extends HT_ExternObject<StringCodec> {
  StringCodecObjectBinding(StringCodec value) : super(value);

  @override
  final typeid = HT_TypeId('StringCodec');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decodeMessage':
        return externObject.decodeMessage;
      case 'encodeMessage':
        return externObject.encodeMessage;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class JSONMessageCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'JSONMessageCodec':
        return () => JSONMessageCodecObjectBinding(JSONMessageCodec());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class JSONMessageCodecObjectBinding extends HT_ExternObject<JSONMessageCodec> {
  JSONMessageCodecObjectBinding(JSONMessageCodec value) : super(value);

  @override
  final typeid = HT_TypeId('JSONMessageCodec');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'encodeMessage':
        return externObject.encodeMessage;
      case 'decodeMessage':
        return externObject.decodeMessage;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class JSONMethodCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'JSONMethodCodec':
        return () => JSONMethodCodecObjectBinding(JSONMethodCodec());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class JSONMethodCodecObjectBinding extends HT_ExternObject<JSONMethodCodec> {
  JSONMethodCodecObjectBinding(JSONMethodCodec value) : super(value);

  @override
  final typeid = HT_TypeId('JSONMethodCodec');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'encodeMethodCall':
        return externObject.encodeMethodCall;
      case 'decodeMethodCall':
        return externObject.decodeMethodCall;
      case 'decodeEnvelope':
        return externObject.decodeEnvelope;
      case 'encodeSuccessEnvelope':
        return externObject.encodeSuccessEnvelope;
      case 'encodeErrorEnvelope':
        return externObject.encodeErrorEnvelope;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StandardMessageCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StandardMessageCodec':
        return () => StandardMessageCodecObjectBinding(StandardMessageCodec());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StandardMessageCodecObjectBinding extends HT_ExternObject<StandardMessageCodec> {
  StandardMessageCodecObjectBinding(StandardMessageCodec value) : super(value);

  @override
  final typeid = HT_TypeId('StandardMessageCodec');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'encodeMessage':
        return externObject.encodeMessage;
      case 'decodeMessage':
        return externObject.decodeMessage;
      case 'writeValue':
        return externObject.writeValue;
      case 'readValue':
        return externObject.readValue;
      case 'readValueOfType':
        return externObject.readValueOfType;
      case 'writeSize':
        return externObject.writeSize;
      case 'readSize':
        return externObject.readSize;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StandardMethodCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StandardMethodCodec':
        return ([messageCodec = const StandardMessageCodec()]) => StandardMethodCodecObjectBinding(StandardMethodCodec(messageCodec));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StandardMethodCodecObjectBinding extends HT_ExternObject<StandardMethodCodec> {
  StandardMethodCodecObjectBinding(StandardMethodCodec value) : super(value);

  @override
  final typeid = HT_TypeId('StandardMethodCodec');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'messageCodec':
        return externObject.messageCodec;
      case 'encodeMethodCall':
        return externObject.encodeMethodCall;
      case 'decodeMethodCall':
        return externObject.decodeMethodCall;
      case 'encodeSuccessEnvelope':
        return externObject.encodeSuccessEnvelope;
      case 'encodeErrorEnvelope':
        return externObject.encodeErrorEnvelope;
      case 'decodeEnvelope':
        return externObject.decodeEnvelope;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

