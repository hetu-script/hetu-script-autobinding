import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class BackButtonIconClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BackButtonIcon':
        return ({key}) => BackButtonIconObjectBinding(BackButtonIcon(key : key));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BackButtonIconObjectBinding extends HT_ExternObject<BackButtonIcon> {
  BackButtonIconObjectBinding(BackButtonIcon value) : super(value);

  @override
  final typeid = HT_TypeId('BackButtonIcon');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BackButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BackButton':
        return ({key, color, onPressed}) => BackButtonObjectBinding(BackButton(key : key, color : color, onPressed : onPressed));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BackButtonObjectBinding extends HT_ExternObject<BackButton> {
  BackButtonObjectBinding(BackButton value) : super(value);

  @override
  final typeid = HT_TypeId('BackButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'onPressed':
        return externObject.onPressed;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CloseButtonClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CloseButton':
        return ({key, color, onPressed}) => CloseButtonObjectBinding(CloseButton(key : key, color : color, onPressed : onPressed));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CloseButtonObjectBinding extends HT_ExternObject<CloseButton> {
  CloseButtonObjectBinding(CloseButton value) : super(value);

  @override
  final typeid = HT_TypeId('CloseButton');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'onPressed':
        return externObject.onPressed;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

