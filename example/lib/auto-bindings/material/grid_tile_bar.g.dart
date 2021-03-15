import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class GridTileBarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GridTileBar':
        return ({key, backgroundColor, leading, title, subtitle, trailing}) => GridTileBarObjectBinding(GridTileBar(key : key, backgroundColor : backgroundColor, leading : leading, title : title, subtitle : subtitle, trailing : trailing));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GridTileBarObjectBinding extends HT_ExternObject<GridTileBar> {
  GridTileBarObjectBinding(GridTileBar value) : super(value);

  @override
  final typeid = HT_TypeId('GridTileBar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'leading':
        return externObject.leading;
      case 'title':
        return externObject.title;
      case 'subtitle':
        return externObject.subtitle;
      case 'trailing':
        return externObject.trailing;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

