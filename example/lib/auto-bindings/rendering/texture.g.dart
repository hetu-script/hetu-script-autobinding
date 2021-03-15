import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';


class TextureBoxClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextureBox':
        return ({textureId, filterQuality = FilterQuality.low}) => TextureBoxObjectBinding(TextureBox(textureId : textureId, filterQuality : filterQuality));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextureBoxObjectBinding extends HT_ExternObject<TextureBox> {
  TextureBoxObjectBinding(TextureBox value) : super(value);

  @override
  final typeid = HT_TypeId('TextureBox');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textureId':
        return externObject.textureId;
      case 'filterQuality':
        return externObject.filterQuality;
      case 'sizedByParent':
        return externObject.sizedByParent;
      case 'alwaysNeedsCompositing':
        return externObject.alwaysNeedsCompositing;
      case 'isRepaintBoundary':
        return externObject.isRepaintBoundary;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'hitTestSelf':
        return externObject.hitTestSelf;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'textureId':
        externObject.textureId = value;
        break;
      case 'filterQuality':
        externObject.filterQuality = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

