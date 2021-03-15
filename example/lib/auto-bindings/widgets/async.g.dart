import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';

class ConnectionStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'none':
        return ConnectionState.none;
      case 'waiting':
        return ConnectionState.waiting;
      case 'active':
        return ConnectionState.active;
      case 'done':
        return ConnectionState.done;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StreamBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StreamBuilder':
        return ({key, initialData, stream, builder}) => StreamBuilderObjectBinding(StreamBuilder(key : key, initialData : initialData, stream : stream, builder : builder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StreamBuilderObjectBinding extends HT_ExternObject<StreamBuilder> {
  StreamBuilderObjectBinding(StreamBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('StreamBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'initialData':
        return externObject.initialData;
      case 'initial':
        return externObject.initial;
      case 'afterConnected':
        return externObject.afterConnected;
      case 'afterData':
        return externObject.afterData;
      case 'afterError':
        return externObject.afterError;
      case 'afterDone':
        return externObject.afterDone;
      case 'afterDisconnected':
        return externObject.afterDisconnected;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FutureBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FutureBuilder':
        return ({key, future, initialData, builder}) => FutureBuilderObjectBinding(FutureBuilder(key : key, future : future, initialData : initialData, builder : builder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FutureBuilderObjectBinding extends HT_ExternObject<FutureBuilder> {
  FutureBuilderObjectBinding(FutureBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('FutureBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'future':
        return externObject.future;
      case 'builder':
        return externObject.builder;
      case 'initialData':
        return externObject.initialData;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

