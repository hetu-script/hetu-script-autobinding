import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class PreferredSizeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PreferredSize':
        return ({key, child, preferredSize}) => PreferredSizeObjectBinding(PreferredSize(key : key, child : child, preferredSize : preferredSize));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PreferredSizeObjectBinding extends HT_ExternObject<PreferredSize> {
  PreferredSizeObjectBinding(PreferredSize value) : super(value);

  @override
  final typeid = HT_TypeId('PreferredSize');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'preferredSize':
        return externObject.preferredSize;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

