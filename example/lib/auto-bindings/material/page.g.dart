import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class MaterialPageRouteClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialPageRoute':
        return ({builder, settings, maintainState = true, fullscreenDialog = false}) => MaterialPageRouteObjectBinding(MaterialPageRoute(builder : builder, settings : settings, maintainState : maintainState, fullscreenDialog : fullscreenDialog));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialPageRouteObjectBinding extends HT_ExternObject<MaterialPageRoute> {
  MaterialPageRouteObjectBinding(MaterialPageRoute value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialPageRoute');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'maintainState':
        return externObject.maintainState;
      case 'debugLabel':
        return externObject.debugLabel;
      case 'buildContent':
        return externObject.buildContent;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MaterialPageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaterialPage':
        return ({child, maintainState = true, fullscreenDialog = false, key, name, arguments}) => MaterialPageObjectBinding(MaterialPage(child : child, maintainState : maintainState, fullscreenDialog : fullscreenDialog, key : key, name : name, arguments : arguments));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaterialPageObjectBinding extends HT_ExternObject<MaterialPage> {
  MaterialPageObjectBinding(MaterialPage value) : super(value);

  @override
  final typeid = HT_TypeId('MaterialPage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'maintainState':
        return externObject.maintainState;
      case 'fullscreenDialog':
        return externObject.fullscreenDialog;
      case 'createRoute':
        return externObject.createRoute;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

