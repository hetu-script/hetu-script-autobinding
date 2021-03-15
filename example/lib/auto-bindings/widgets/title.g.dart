import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class TitleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Title':
        return ({key, title = '', color, child}) => TitleObjectBinding(Title(key : key, title : title, color : color, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TitleObjectBinding extends HT_ExternObject<Title> {
  TitleObjectBinding(Title value) : super(value);

  @override
  final typeid = HT_TypeId('Title');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'title':
        return externObject.title;
      case 'color':
        return externObject.color;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

