import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';


class WillPopScopeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WillPopScope':
        return ({key, child, onWillPop}) => WillPopScopeObjectBinding(WillPopScope(key : key, child : child, onWillPop : onWillPop));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WillPopScopeObjectBinding extends HT_ExternObject<WillPopScope> {
  WillPopScopeObjectBinding(WillPopScope value) : super(value);

  @override
  final typeid = HT_TypeId('WillPopScope');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'onWillPop':
        return externObject.onWillPop;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

