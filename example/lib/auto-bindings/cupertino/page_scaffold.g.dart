import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class CupertinoPageScaffoldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoPageScaffold':
        return ({key, navigationBar, backgroundColor, resizeToAvoidBottomInset = true, child}) => CupertinoPageScaffoldObjectBinding(CupertinoPageScaffold(key : key, navigationBar : navigationBar, backgroundColor : backgroundColor, resizeToAvoidBottomInset : resizeToAvoidBottomInset, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoPageScaffoldObjectBinding extends HT_ExternObject<CupertinoPageScaffold> {
  CupertinoPageScaffoldObjectBinding(CupertinoPageScaffold value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoPageScaffold');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'navigationBar':
        return externObject.navigationBar;
      case 'child':
        return externObject.child;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'resizeToAvoidBottomInset':
        return externObject.resizeToAvoidBottomInset;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

