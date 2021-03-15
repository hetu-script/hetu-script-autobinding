import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:async';
import 'dart:ui'as ui;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';


class ImageInfoClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageInfo':
        return ({image, scale = 1.0, debugLabel}) => ImageInfoObjectBinding(ImageInfo(image : image, scale : scale, debugLabel : debugLabel));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageInfoObjectBinding extends HT_ExternObject<ImageInfo> {
  ImageInfoObjectBinding(ImageInfo value) : super(value);

  @override
  final typeid = HT_TypeId('ImageInfo');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'image':
        return externObject.image;
      case 'scale':
        return externObject.scale;
      case 'debugLabel':
        return externObject.debugLabel;
      case 'hashCode':
        return externObject.hashCode;
      case 'clone':
        return externObject.clone;
      case 'isCloneOf':
        return externObject.isCloneOf;
      case 'dispose':
        return externObject.dispose;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ImageStreamListenerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageStreamListener':
        return (onImage, {onChunk, onError}) => ImageStreamListenerObjectBinding(ImageStreamListener(onImage, onChunk : onChunk, onError : onError));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageStreamListenerObjectBinding extends HT_ExternObject<ImageStreamListener> {
  ImageStreamListenerObjectBinding(ImageStreamListener value) : super(value);

  @override
  final typeid = HT_TypeId('ImageStreamListener');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'onImage':
        return externObject.onImage;
      case 'onChunk':
        return externObject.onChunk;
      case 'onError':
        return externObject.onError;
      case 'hashCode':
        return externObject.hashCode;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ImageChunkEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageChunkEvent':
        return ({cumulativeBytesLoaded, expectedTotalBytes}) => ImageChunkEventObjectBinding(ImageChunkEvent(cumulativeBytesLoaded : cumulativeBytesLoaded, expectedTotalBytes : expectedTotalBytes));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageChunkEventObjectBinding extends HT_ExternObject<ImageChunkEvent> {
  ImageChunkEventObjectBinding(ImageChunkEvent value) : super(value);

  @override
  final typeid = HT_TypeId('ImageChunkEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'cumulativeBytesLoaded':
        return externObject.cumulativeBytesLoaded;
      case 'expectedTotalBytes':
        return externObject.expectedTotalBytes;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ImageStreamClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageStream':
        return () => ImageStreamObjectBinding(ImageStream());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageStreamObjectBinding extends HT_ExternObject<ImageStream> {
  ImageStreamObjectBinding(ImageStream value) : super(value);

  @override
  final typeid = HT_TypeId('ImageStream');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'completer':
        return externObject.completer;
      case 'key':
        return externObject.key;
      case 'setCompleter':
        return externObject.setCompleter;
      case 'addListener':
        return externObject.addListener;
      case 'removeListener':
        return externObject.removeListener;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class OneFrameImageStreamCompleterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OneFrameImageStreamCompleter':
        return (image, {informationCollector}) => OneFrameImageStreamCompleterObjectBinding(OneFrameImageStreamCompleter(image, informationCollector : informationCollector));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OneFrameImageStreamCompleterObjectBinding extends HT_ExternObject<OneFrameImageStreamCompleter> {
  OneFrameImageStreamCompleterObjectBinding(OneFrameImageStreamCompleter value) : super(value);

  @override
  final typeid = HT_TypeId('OneFrameImageStreamCompleter');


}

class MultiFrameImageStreamCompleterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MultiFrameImageStreamCompleter':
        return ({codec, scale, debugLabel, chunkEvents, informationCollector}) => MultiFrameImageStreamCompleterObjectBinding(MultiFrameImageStreamCompleter(codec : codec, scale : scale, debugLabel : debugLabel, chunkEvents : chunkEvents, informationCollector : informationCollector));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MultiFrameImageStreamCompleterObjectBinding extends HT_ExternObject<MultiFrameImageStreamCompleter> {
  MultiFrameImageStreamCompleterObjectBinding(MultiFrameImageStreamCompleter value) : super(value);

  @override
  final typeid = HT_TypeId('MultiFrameImageStreamCompleter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'addListener':
        return externObject.addListener;
      case 'removeListener':
        return externObject.removeListener;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

