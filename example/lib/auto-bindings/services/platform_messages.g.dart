import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'dart:ui'as ui;


class BinaryMessagesClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'handlePlatformMessage':
        return (channel, data, callback) => BinaryMessages.handlePlatformMessage(channel, data, callback);
      case 'send':
        return (channel, message) => BinaryMessages.send(channel, message);
      case 'setMessageHandler':
        return (channel, handler) => BinaryMessages.setMessageHandler(channel, handler);
      case 'setMockMessageHandler':
        return (channel, handler) => BinaryMessages.setMockMessageHandler(channel, handler);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


