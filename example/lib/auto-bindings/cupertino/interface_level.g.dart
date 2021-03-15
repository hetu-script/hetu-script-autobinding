import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CupertinoUserInterfaceLevelDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'base':
        return CupertinoUserInterfaceLevelData.base;
      case 'elevated':
        return CupertinoUserInterfaceLevelData.elevated;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoUserInterfaceLevelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoUserInterfaceLevel':
        return ({key, data, child}) => CupertinoUserInterfaceLevelObjectBinding(CupertinoUserInterfaceLevel(key : key, data : data, child : child));
      case 'of':
        return (context) => CupertinoUserInterfaceLevel.of(context);
      case 'maybeOf':
        return (context) => CupertinoUserInterfaceLevel.maybeOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoUserInterfaceLevelObjectBinding extends HT_ExternObject<CupertinoUserInterfaceLevel> {
  CupertinoUserInterfaceLevelObjectBinding(CupertinoUserInterfaceLevel value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoUserInterfaceLevel');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

