import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';
const _kDefaultIndicatorRadius = 10.0;


class CupertinoActivityIndicatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoActivityIndicator':
        return ({key, animating = true, radius = _kDefaultIndicatorRadius}) => CupertinoActivityIndicatorObjectBinding(CupertinoActivityIndicator(key : key, animating : animating, radius : radius));
      case 'CupertinoActivityIndicator.partiallyRevealed':
        return ({key, radius = _kDefaultIndicatorRadius, progress = 1.0}) => CupertinoActivityIndicatorObjectBinding(CupertinoActivityIndicator.partiallyRevealed(key : key, radius : radius, progress : progress));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoActivityIndicatorObjectBinding extends HT_ExternObject<CupertinoActivityIndicator> {
  CupertinoActivityIndicatorObjectBinding(CupertinoActivityIndicator value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoActivityIndicator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'animating':
        return externObject.animating;
      case 'radius':
        return externObject.radius;
      case 'progress':
        return externObject.progress;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

