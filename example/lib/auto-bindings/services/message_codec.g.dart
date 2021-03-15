import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';


class MethodCallClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MethodCall':
        return (method, [arguments]) => MethodCallObjectBinding(MethodCall(method, arguments));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MethodCallObjectBinding extends HT_ExternObject<MethodCall> {
  MethodCallObjectBinding(MethodCall value) : super(value);

  @override
  final typeid = HT_TypeId('MethodCall');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'method':
        return externObject.method;
      case 'arguments':
        return externObject.arguments;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PlatformExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PlatformException':
        return ({code, message, details, stacktrace}) => PlatformExceptionObjectBinding(PlatformException(code : code, message : message, details : details, stacktrace : stacktrace));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformExceptionObjectBinding extends HT_ExternObject<PlatformException> {
  PlatformExceptionObjectBinding(PlatformException value) : super(value);

  @override
  final typeid = HT_TypeId('PlatformException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'code':
        return externObject.code;
      case 'message':
        return externObject.message;
      case 'details':
        return externObject.details;
      case 'stacktrace':
        return externObject.stacktrace;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MissingPluginExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MissingPluginException':
        return ([message]) => MissingPluginExceptionObjectBinding(MissingPluginException(message));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MissingPluginExceptionObjectBinding extends HT_ExternObject<MissingPluginException> {
  MissingPluginExceptionObjectBinding(MissingPluginException value) : super(value);

  @override
  final typeid = HT_TypeId('MissingPluginException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

