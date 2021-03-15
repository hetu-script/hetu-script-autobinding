import 'package:hetu_script/hetu_script.dart';
import 'dart:async';


class StreamViewClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StreamView':
        return (stream) => StreamViewObjectBinding(StreamView(stream));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StreamViewObjectBinding extends HT_ExternObject<StreamView> {
  StreamViewObjectBinding(StreamView value) : super(value);

  @override
  final typeid = HT_TypeId('StreamView');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'isBroadcast':
        return externObject.isBroadcast;
      case 'asBroadcastStream':
        return externObject.asBroadcastStream;
      case 'listen':
        return externObject.listen;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

