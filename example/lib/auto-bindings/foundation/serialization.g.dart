import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';
import 'dart:typed_data';


class WriteBufferClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WriteBuffer':
        return () => WriteBufferObjectBinding(WriteBuffer());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WriteBufferObjectBinding extends HT_ExternObject<WriteBuffer> {
  WriteBufferObjectBinding(WriteBuffer value) : super(value);

  @override
  final typeid = HT_TypeId('WriteBuffer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'putUint8':
        return externObject.putUint8;
      case 'putUint16':
        return externObject.putUint16;
      case 'putUint32':
        return externObject.putUint32;
      case 'putInt32':
        return externObject.putInt32;
      case 'putInt64':
        return externObject.putInt64;
      case 'putFloat64':
        return externObject.putFloat64;
      case 'putUint8List':
        return externObject.putUint8List;
      case 'putInt32List':
        return externObject.putInt32List;
      case 'putInt64List':
        return externObject.putInt64List;
      case 'putFloat64List':
        return externObject.putFloat64List;
      case 'done':
        return externObject.done;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ReadBufferClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ReadBuffer':
        return (data) => ReadBufferObjectBinding(ReadBuffer(data));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ReadBufferObjectBinding extends HT_ExternObject<ReadBuffer> {
  ReadBufferObjectBinding(ReadBuffer value) : super(value);

  @override
  final typeid = HT_TypeId('ReadBuffer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'hasRemaining':
        return externObject.hasRemaining;
      case 'getUint8':
        return externObject.getUint8;
      case 'getUint16':
        return externObject.getUint16;
      case 'getUint32':
        return externObject.getUint32;
      case 'getInt32':
        return externObject.getInt32;
      case 'getInt64':
        return externObject.getInt64;
      case 'getFloat64':
        return externObject.getFloat64;
      case 'getUint8List':
        return externObject.getUint8List;
      case 'getInt32List':
        return externObject.getInt32List;
      case 'getInt64List':
        return externObject.getInt64List;
      case 'getFloat64List':
        return externObject.getFloat64List;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

