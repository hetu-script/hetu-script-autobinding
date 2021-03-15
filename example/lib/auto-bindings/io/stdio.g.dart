import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class StdoutExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StdoutException':
        return (message, [osError]) => StdoutExceptionObjectBinding(StdoutException(message, osError));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StdoutExceptionObjectBinding extends HT_ExternObject<StdoutException> {
  StdoutExceptionObjectBinding(StdoutException value) : super(value);

  @override
  final typeid = HT_TypeId('StdoutException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'osError':
        return externObject.osError;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StdinExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StdinException':
        return (message, [osError]) => StdinExceptionObjectBinding(StdinException(message, osError));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StdinExceptionObjectBinding extends HT_ExternObject<StdinException> {
  StdinExceptionObjectBinding(StdinException value) : super(value);

  @override
  final typeid = HT_TypeId('StdinException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'osError':
        return externObject.osError;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StdioTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StdioType.terminal':
        return StdioType.terminal;
      case 'StdioType.pipe':
        return StdioType.pipe;
      case 'StdioType.file':
        return StdioType.file;
      case 'StdioType.other':
        return StdioType.other;
      case 'StdioType.TERMINAL':
        return StdioType.TERMINAL;
      case 'StdioType.PIPE':
        return StdioType.PIPE;
      case 'StdioType.FILE':
        return StdioType.FILE;
      case 'StdioType.OTHER':
        return StdioType.OTHER;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


