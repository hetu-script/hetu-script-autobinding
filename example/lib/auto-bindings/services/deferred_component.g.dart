import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:async';


class DeferredComponentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'installDeferredComponent':
        return ({moduleName}) => DeferredComponent.installDeferredComponent(moduleName : moduleName);
      case 'uninstallDeferredComponent':
        return ({moduleName}) => DeferredComponent.uninstallDeferredComponent(moduleName : moduleName);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


