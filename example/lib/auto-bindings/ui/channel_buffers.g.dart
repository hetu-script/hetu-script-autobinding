import 'package:hetu_script/hetu_script.dart';
import 'dart:ui';


class ChannelBuffersClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ChannelBuffers':
        return () => ChannelBuffersObjectBinding(ChannelBuffers());
      case 'ChannelBuffers.kDefaultBufferSize':
        return ChannelBuffers.kDefaultBufferSize;
      case 'ChannelBuffers.kControlChannelName':
        return ChannelBuffers.kControlChannelName;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ChannelBuffersObjectBinding extends HT_ExternObject<ChannelBuffers> {
  ChannelBuffersObjectBinding(ChannelBuffers value) : super(value);

  @override
  final typeid = HT_TypeId('ChannelBuffers');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'push':
        return externObject.push;
      case 'setListener':
        return externObject.setListener;
      case 'clearListener':
        return externObject.clearListener;
      case 'drain':
        return externObject.drain;
      case 'handleMessage':
        return externObject.handleMessage;
      case 'resize':
        return externObject.resize;
      case 'allowOverflow':
        return externObject.allowOverflow;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

