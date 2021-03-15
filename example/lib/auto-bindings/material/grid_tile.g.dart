import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class GridTileClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GridTile':
        return ({key, header, footer, child}) => GridTileObjectBinding(GridTile(key : key, header : header, footer : footer, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GridTileObjectBinding extends HT_ExternObject<GridTile> {
  GridTileObjectBinding(GridTile value) : super(value);

  @override
  final typeid = HT_TypeId('GridTile');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'header':
        return externObject.header;
      case 'footer':
        return externObject.footer;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

