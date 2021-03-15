import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';


class GridPaperClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GridPaper':
        return ({key, color = const Color(0x7FC3E8F3), interval = 100.0, divisions = 2, subdivisions = 5, child}) => GridPaperObjectBinding(GridPaper(key : key, color : color, interval : interval, divisions : divisions, subdivisions : subdivisions, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GridPaperObjectBinding extends HT_ExternObject<GridPaper> {
  GridPaperObjectBinding(GridPaper value) : super(value);

  @override
  final typeid = HT_TypeId('GridPaper');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'interval':
        return externObject.interval;
      case 'divisions':
        return externObject.divisions;
      case 'subdivisions':
        return externObject.subdivisions;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

