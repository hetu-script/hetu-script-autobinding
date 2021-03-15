import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class ColorFilteredClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ColorFiltered':
        return ({colorFilter, child, key}) => ColorFilteredObjectBinding(ColorFiltered(colorFilter : colorFilter, child : child, key : key));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ColorFilteredObjectBinding extends HT_ExternObject<ColorFiltered> {
  ColorFilteredObjectBinding(ColorFiltered value) : super(value);

  @override
  final typeid = HT_TypeId('ColorFiltered');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'colorFilter':
        return externObject.colorFilter;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

