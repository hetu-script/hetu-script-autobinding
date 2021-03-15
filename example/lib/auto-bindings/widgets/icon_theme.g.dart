import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class IconThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IconTheme':
        return ({key, data, child}) => IconThemeObjectBinding(IconTheme(key : key, data : data, child : child));
      case 'merge':
        return ({key, data, child}) => IconTheme.merge(key : key, data : data, child : child);
      case 'of':
        return (context) => IconTheme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IconThemeObjectBinding extends HT_ExternObject<IconTheme> {
  IconThemeObjectBinding(IconTheme value) : super(value);

  @override
  final typeid = HT_TypeId('IconTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      case 'wrap':
        return externObject.wrap;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

