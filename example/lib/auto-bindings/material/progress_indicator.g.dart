import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class LinearProgressIndicatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LinearProgressIndicator':
        return ({key, value, backgroundColor, valueColor, minHeight, semanticsLabel, semanticsValue}) => LinearProgressIndicatorObjectBinding(LinearProgressIndicator(key : key, value : value, backgroundColor : backgroundColor, valueColor : valueColor, minHeight : minHeight, semanticsLabel : semanticsLabel, semanticsValue : semanticsValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LinearProgressIndicatorObjectBinding extends HT_ExternObject<LinearProgressIndicator> {
  LinearProgressIndicatorObjectBinding(LinearProgressIndicator value) : super(value);

  @override
  final typeid = HT_TypeId('LinearProgressIndicator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'minHeight':
        return externObject.minHeight;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CircularProgressIndicatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CircularProgressIndicator':
        return ({key, value, backgroundColor, valueColor, strokeWidth = 4.0, semanticsLabel, semanticsValue}) => CircularProgressIndicatorObjectBinding(CircularProgressIndicator(key : key, value : value, backgroundColor : backgroundColor, valueColor : valueColor, strokeWidth : strokeWidth, semanticsLabel : semanticsLabel, semanticsValue : semanticsValue));
      case 'CircularProgressIndicator.adaptive':
        return ({key, value, backgroundColor, valueColor, strokeWidth = 4.0, semanticsLabel, semanticsValue}) => CircularProgressIndicatorObjectBinding(CircularProgressIndicator.adaptive(key : key, value : value, backgroundColor : backgroundColor, valueColor : valueColor, strokeWidth : strokeWidth, semanticsLabel : semanticsLabel, semanticsValue : semanticsValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CircularProgressIndicatorObjectBinding extends HT_ExternObject<CircularProgressIndicator> {
  CircularProgressIndicatorObjectBinding(CircularProgressIndicator value) : super(value);

  @override
  final typeid = HT_TypeId('CircularProgressIndicator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'strokeWidth':
        return externObject.strokeWidth;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RefreshProgressIndicatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RefreshProgressIndicator':
        return ({key, value, backgroundColor, valueColor, strokeWidth = 2.0, semanticsLabel, semanticsValue}) => RefreshProgressIndicatorObjectBinding(RefreshProgressIndicator(key : key, value : value, backgroundColor : backgroundColor, valueColor : valueColor, strokeWidth : strokeWidth, semanticsLabel : semanticsLabel, semanticsValue : semanticsValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RefreshProgressIndicatorObjectBinding extends HT_ExternObject<RefreshProgressIndicator> {
  RefreshProgressIndicatorObjectBinding(RefreshProgressIndicator value) : super(value);

  @override
  final typeid = HT_TypeId('RefreshProgressIndicator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

