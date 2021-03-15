import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';


class BasicMessageChannelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BasicMessageChannel':
        return (name, codec, {binaryMessenger}) => BasicMessageChannelObjectBinding(BasicMessageChannel(name, codec, binaryMessenger : binaryMessenger));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BasicMessageChannelObjectBinding extends HT_ExternObject<BasicMessageChannel> {
  BasicMessageChannelObjectBinding(BasicMessageChannel value) : super(value);

  @override
  final typeid = HT_TypeId('BasicMessageChannel');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'name':
        return externObject.name;
      case 'codec':
        return externObject.codec;
      case 'binaryMessenger':
        return externObject.binaryMessenger;
      case 'send':
        return externObject.send;
      case 'setMessageHandler':
        return externObject.setMessageHandler;
      case 'setMockMessageHandler':
        return externObject.setMockMessageHandler;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MethodChannelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MethodChannel':
        return (name, [codec = const StandardMethodCodec(), binaryMessenger]) => MethodChannelObjectBinding(MethodChannel(name, codec, binaryMessenger));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MethodChannelObjectBinding extends HT_ExternObject<MethodChannel> {
  MethodChannelObjectBinding(MethodChannel value) : super(value);

  @override
  final typeid = HT_TypeId('MethodChannel');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'name':
        return externObject.name;
      case 'codec':
        return externObject.codec;
      case 'binaryMessenger':
        return externObject.binaryMessenger;
      case 'invokeMethod':
        return externObject.invokeMethod;
      case 'invokeListMethod':
        return externObject.invokeListMethod;
      case 'invokeMapMethod':
        return externObject.invokeMapMethod;
      case 'setMethodCallHandler':
        return externObject.setMethodCallHandler;
      case 'checkMethodCallHandler':
        return externObject.checkMethodCallHandler;
      case 'setMockMethodCallHandler':
        return externObject.setMockMethodCallHandler;
      case 'checkMockMethodCallHandler':
        return externObject.checkMockMethodCallHandler;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class OptionalMethodChannelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OptionalMethodChannel':
        return (name, [codec = const StandardMethodCodec()]) => OptionalMethodChannelObjectBinding(OptionalMethodChannel(name, codec));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OptionalMethodChannelObjectBinding extends HT_ExternObject<OptionalMethodChannel> {
  OptionalMethodChannelObjectBinding(OptionalMethodChannel value) : super(value);

  @override
  final typeid = HT_TypeId('OptionalMethodChannel');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'invokeMethod':
        return externObject.invokeMethod;
      case 'invokeListMethod':
        return externObject.invokeListMethod;
      case 'invokeMapMethod':
        return externObject.invokeMapMethod;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class EventChannelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'EventChannel':
        return (name, [codec = const StandardMethodCodec(), binaryMessenger]) => EventChannelObjectBinding(EventChannel(name, codec, binaryMessenger));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class EventChannelObjectBinding extends HT_ExternObject<EventChannel> {
  EventChannelObjectBinding(EventChannel value) : super(value);

  @override
  final typeid = HT_TypeId('EventChannel');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'name':
        return externObject.name;
      case 'codec':
        return externObject.codec;
      case 'binaryMessenger':
        return externObject.binaryMessenger;
      case 'receiveBroadcastStream':
        return externObject.receiveBroadcastStream;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

