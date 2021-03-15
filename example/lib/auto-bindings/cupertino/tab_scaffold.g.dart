import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class CupertinoTabControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTabController':
        return ({initialIndex = 0}) => CupertinoTabControllerObjectBinding(CupertinoTabController(initialIndex : initialIndex));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTabControllerObjectBinding extends HT_ExternObject<CupertinoTabController> {
  CupertinoTabControllerObjectBinding(CupertinoTabController value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTabController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'index':
        return externObject.index;
      case 'dispose':
        return externObject.dispose;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'index':
        externObject.index = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTabScaffoldClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoTabScaffold':
        return ({key, tabBar, tabBuilder, controller, backgroundColor, resizeToAvoidBottomInset = true, restorationId}) => CupertinoTabScaffoldObjectBinding(CupertinoTabScaffold(key : key, tabBar : tabBar, tabBuilder : tabBuilder, controller : controller, backgroundColor : backgroundColor, resizeToAvoidBottomInset : resizeToAvoidBottomInset, restorationId : restorationId));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoTabScaffoldObjectBinding extends HT_ExternObject<CupertinoTabScaffold> {
  CupertinoTabScaffoldObjectBinding(CupertinoTabScaffold value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoTabScaffold');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tabBar':
        return externObject.tabBar;
      case 'controller':
        return externObject.controller;
      case 'tabBuilder':
        return externObject.tabBuilder;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'resizeToAvoidBottomInset':
        return externObject.resizeToAvoidBottomInset;
      case 'restorationId':
        return externObject.restorationId;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RestorableCupertinoTabControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableCupertinoTabController':
        return ({initialIndex = 0}) => RestorableCupertinoTabControllerObjectBinding(RestorableCupertinoTabController(initialIndex : initialIndex));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableCupertinoTabControllerObjectBinding extends HT_ExternObject<RestorableCupertinoTabController> {
  RestorableCupertinoTabControllerObjectBinding(RestorableCupertinoTabController value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableCupertinoTabController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createDefaultValue':
        return externObject.createDefaultValue;
      case 'fromPrimitives':
        return externObject.fromPrimitives;
      case 'toPrimitives':
        return externObject.toPrimitives;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

