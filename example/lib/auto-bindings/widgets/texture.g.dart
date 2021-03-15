import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class TextureClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Texture':
        return ({key, textureId, filterQuality = FilterQuality.low}) => TextureObjectBinding(Texture(key : key, textureId : textureId, filterQuality : filterQuality));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextureObjectBinding extends HT_ExternObject<Texture> {
  TextureObjectBinding(Texture value) : super(value);

  @override
  final typeid = HT_TypeId('Texture');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textureId':
        return externObject.textureId;
      case 'filterQuality':
        return externObject.filterQuality;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

