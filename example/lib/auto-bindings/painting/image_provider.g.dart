import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/painting.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui'as ui;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class ImageConfigurationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ImageConfiguration':
        return ({bundle, devicePixelRatio, locale, textDirection, size, platform}) => ImageConfigurationObjectBinding(ImageConfiguration(bundle : bundle, devicePixelRatio : devicePixelRatio, locale : locale, textDirection : textDirection, size : size, platform : platform));
      case 'ImageConfiguration.empty':
        return ImageConfiguration.empty;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ImageConfigurationObjectBinding extends HT_ExternObject<ImageConfiguration> {
  ImageConfigurationObjectBinding(ImageConfiguration value) : super(value);

  @override
  final typeid = HT_TypeId('ImageConfiguration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'bundle':
        return externObject.bundle;
      case 'devicePixelRatio':
        return externObject.devicePixelRatio;
      case 'locale':
        return externObject.locale;
      case 'textDirection':
        return externObject.textDirection;
      case 'size':
        return externObject.size;
      case 'platform':
        return externObject.platform;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AssetBundleImageKeyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AssetBundleImageKey':
        return ({bundle, name, scale}) => AssetBundleImageKeyObjectBinding(AssetBundleImageKey(bundle : bundle, name : name, scale : scale));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AssetBundleImageKeyObjectBinding extends HT_ExternObject<AssetBundleImageKey> {
  AssetBundleImageKeyObjectBinding(AssetBundleImageKey value) : super(value);

  @override
  final typeid = HT_TypeId('AssetBundleImageKey');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'bundle':
        return externObject.bundle;
      case 'name':
        return externObject.name;
      case 'scale':
        return externObject.scale;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ResizeImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ResizeImage':
        return (imageProvider, {width, height, allowUpscaling = false}) => ResizeImageObjectBinding(ResizeImage(imageProvider, width : width, height : height, allowUpscaling : allowUpscaling));
      case 'resizeIfNeeded':
        return (cacheWidth, cacheHeight, provider) => ResizeImage.resizeIfNeeded(cacheWidth, cacheHeight, provider);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ResizeImageObjectBinding extends HT_ExternObject<ResizeImage> {
  ResizeImageObjectBinding(ResizeImage value) : super(value);

  @override
  final typeid = HT_TypeId('ResizeImage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'imageProvider':
        return externObject.imageProvider;
      case 'width':
        return externObject.width;
      case 'height':
        return externObject.height;
      case 'allowUpscaling':
        return externObject.allowUpscaling;
      case 'load':
        return externObject.load;
      case 'obtainKey':
        return externObject.obtainKey;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FileImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FileImage':
        return (file, {scale = 1.0}) => FileImageObjectBinding(FileImage(file, scale : scale));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FileImageObjectBinding extends HT_ExternObject<FileImage> {
  FileImageObjectBinding(FileImage value) : super(value);

  @override
  final typeid = HT_TypeId('FileImage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'file':
        return externObject.file;
      case 'scale':
        return externObject.scale;
      case 'hashCode':
        return externObject.hashCode;
      case 'obtainKey':
        return externObject.obtainKey;
      case 'load':
        return externObject.load;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MemoryImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MemoryImage':
        return (bytes, {scale = 1.0}) => MemoryImageObjectBinding(MemoryImage(bytes, scale : scale));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MemoryImageObjectBinding extends HT_ExternObject<MemoryImage> {
  MemoryImageObjectBinding(MemoryImage value) : super(value);

  @override
  final typeid = HT_TypeId('MemoryImage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'bytes':
        return externObject.bytes;
      case 'scale':
        return externObject.scale;
      case 'hashCode':
        return externObject.hashCode;
      case 'obtainKey':
        return externObject.obtainKey;
      case 'load':
        return externObject.load;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ExactAssetImageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ExactAssetImage':
        return (assetName, {scale = 1.0, bundle, package}) => ExactAssetImageObjectBinding(ExactAssetImage(assetName, scale : scale, bundle : bundle, package : package));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ExactAssetImageObjectBinding extends HT_ExternObject<ExactAssetImage> {
  ExactAssetImageObjectBinding(ExactAssetImage value) : super(value);

  @override
  final typeid = HT_TypeId('ExactAssetImage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'assetName':
        return externObject.assetName;
      case 'scale':
        return externObject.scale;
      case 'bundle':
        return externObject.bundle;
      case 'package':
        return externObject.package;
      case 'keyName':
        return externObject.keyName;
      case 'hashCode':
        return externObject.hashCode;
      case 'obtainKey':
        return externObject.obtainKey;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class NetworkImageLoadExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'NetworkImageLoadException':
        return ({statusCode, uri}) => NetworkImageLoadExceptionObjectBinding(NetworkImageLoadException(statusCode : statusCode, uri : uri));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class NetworkImageLoadExceptionObjectBinding extends HT_ExternObject<NetworkImageLoadException> {
  NetworkImageLoadExceptionObjectBinding(NetworkImageLoadException value) : super(value);

  @override
  final typeid = HT_TypeId('NetworkImageLoadException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'statusCode':
        return externObject.statusCode;
      case 'uri':
        return externObject.uri;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

