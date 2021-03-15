import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';


class SpacerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Spacer':
        return ({key, flex = 1}) => SpacerObjectBinding(Spacer(key : key, flex : flex));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SpacerObjectBinding extends HT_ExternObject<Spacer> {
  SpacerObjectBinding(Spacer value) : super(value);

  @override
  final typeid = HT_TypeId('Spacer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'flex':
        return externObject.flex;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

