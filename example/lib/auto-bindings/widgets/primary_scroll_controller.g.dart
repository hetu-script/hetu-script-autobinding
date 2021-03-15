import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class PrimaryScrollControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PrimaryScrollController':
        return ({key, controller, child}) => PrimaryScrollControllerObjectBinding(PrimaryScrollController(key : key, controller : controller, child : child));
      case 'PrimaryScrollController.none':
        return ({key, child}) => PrimaryScrollControllerObjectBinding(PrimaryScrollController.none(key : key, child : child));
      case 'of':
        return (context) => PrimaryScrollController.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PrimaryScrollControllerObjectBinding extends HT_ExternObject<PrimaryScrollController> {
  PrimaryScrollControllerObjectBinding(PrimaryScrollController value) : super(value);

  @override
  final typeid = HT_TypeId('PrimaryScrollController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'controller':
        return externObject.controller;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

