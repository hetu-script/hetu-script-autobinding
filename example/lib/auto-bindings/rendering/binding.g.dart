import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';


class RenderingFlutterBindingClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderingFlutterBinding':
        return ({root}) => RenderingFlutterBindingObjectBinding(RenderingFlutterBinding(root : root));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderingFlutterBindingObjectBinding extends HT_ExternObject<RenderingFlutterBinding> {
  RenderingFlutterBindingObjectBinding(RenderingFlutterBinding value) : super(value);

  @override
  final typeid = HT_TypeId('RenderingFlutterBinding');


}

