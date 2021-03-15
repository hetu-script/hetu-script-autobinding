import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class ZLibCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ZLibCodec':
        return ({level = ZLibOption.defaultLevel, windowBits = ZLibOption.defaultWindowBits, memLevel = ZLibOption.defaultMemLevel, strategy = ZLibOption.strategyDefault, dictionary, raw = false, gzip = false}) => ZLibCodecObjectBinding(ZLibCodec(level : level, windowBits : windowBits, memLevel : memLevel, strategy : strategy, dictionary : dictionary, raw : raw, gzip : gzip));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ZLibCodecObjectBinding extends HT_ExternObject<ZLibCodec> {
  ZLibCodecObjectBinding(ZLibCodec value) : super(value);

  @override
  final typeid = HT_TypeId('ZLibCodec');


}

class GZipCodecClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GZipCodec':
        return ({level = ZLibOption.defaultLevel, windowBits = ZLibOption.defaultWindowBits, memLevel = ZLibOption.defaultMemLevel, strategy = ZLibOption.strategyDefault, dictionary, raw = false, gzip = true}) => GZipCodecObjectBinding(GZipCodec(level : level, windowBits : windowBits, memLevel : memLevel, strategy : strategy, dictionary : dictionary, raw : raw, gzip : gzip));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GZipCodecObjectBinding extends HT_ExternObject<GZipCodec> {
  GZipCodecObjectBinding(GZipCodec value) : super(value);

  @override
  final typeid = HT_TypeId('GZipCodec');


}

class ZLibEncoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ZLibEncoder':
        return ({gzip = false, level = ZLibOption.defaultLevel, windowBits = ZLibOption.defaultWindowBits, memLevel = ZLibOption.defaultMemLevel, strategy = ZLibOption.strategyDefault, dictionary, raw = false}) => ZLibEncoderObjectBinding(ZLibEncoder(gzip : gzip, level : level, windowBits : windowBits, memLevel : memLevel, strategy : strategy, dictionary : dictionary, raw : raw));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ZLibEncoderObjectBinding extends HT_ExternObject<ZLibEncoder> {
  ZLibEncoderObjectBinding(ZLibEncoder value) : super(value);

  @override
  final typeid = HT_TypeId('ZLibEncoder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'gzip':
        return externObject.gzip;
      case 'level':
        return externObject.level;
      case 'memLevel':
        return externObject.memLevel;
      case 'strategy':
        return externObject.strategy;
      case 'windowBits':
        return externObject.windowBits;
      case 'dictionary':
        return externObject.dictionary;
      case 'raw':
        return externObject.raw;
      case 'convert':
        return externObject.convert;
      case 'startChunkedConversion':
        return externObject.startChunkedConversion;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ZLibDecoderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ZLibDecoder':
        return ({windowBits = ZLibOption.defaultWindowBits, dictionary, raw = false}) => ZLibDecoderObjectBinding(ZLibDecoder(windowBits : windowBits, dictionary : dictionary, raw : raw));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ZLibDecoderObjectBinding extends HT_ExternObject<ZLibDecoder> {
  ZLibDecoderObjectBinding(ZLibDecoder value) : super(value);

  @override
  final typeid = HT_TypeId('ZLibDecoder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'windowBits':
        return externObject.windowBits;
      case 'dictionary':
        return externObject.dictionary;
      case 'raw':
        return externObject.raw;
      case 'convert':
        return externObject.convert;
      case 'startChunkedConversion':
        return externObject.startChunkedConversion;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

