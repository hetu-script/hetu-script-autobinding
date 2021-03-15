import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class CupertinoFormRowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoFormRow':
        return ({key, child, prefix, padding, helper, error}) => CupertinoFormRowObjectBinding(CupertinoFormRow(key : key, child : child, prefix : prefix, padding : padding, helper : helper, error : error));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoFormRowObjectBinding extends HT_ExternObject<CupertinoFormRow> {
  CupertinoFormRowObjectBinding(CupertinoFormRow value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoFormRow');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'prefix':
        return externObject.prefix;
      case 'padding':
        return externObject.padding;
      case 'helper':
        return externObject.helper;
      case 'error':
        return externObject.error;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

