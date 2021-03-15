import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
const kThemeAnimationDuration = Duration(milliseconds: 200);


class ThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Theme':
        return ({key, data, child}) => ThemeObjectBinding(Theme(key : key, data : data, child : child));
      case 'of':
        return (context) => Theme.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ThemeObjectBinding extends HT_ExternObject<Theme> {
  ThemeObjectBinding(Theme value) : super(value);

  @override
  final typeid = HT_TypeId('Theme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'child':
        return externObject.child;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ThemeDataTweenClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ThemeDataTween':
        return ({begin, end}) => ThemeDataTweenObjectBinding(ThemeDataTween(begin : begin, end : end));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ThemeDataTweenObjectBinding extends HT_ExternObject<ThemeDataTween> {
  ThemeDataTweenObjectBinding(ThemeDataTween value) : super(value);

  @override
  final typeid = HT_TypeId('ThemeDataTween');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return externObject.lerp;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AnimatedThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnimatedTheme':
        return ({key, data, curve = Curves.linear, duration = kThemeAnimationDuration, onEnd, child}) => AnimatedThemeObjectBinding(AnimatedTheme(key : key, data : data, curve : curve, duration : duration, onEnd : onEnd, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnimatedThemeObjectBinding extends HT_ExternObject<AnimatedTheme> {
  AnimatedThemeObjectBinding(AnimatedTheme value) : super(value);

  @override
  final typeid = HT_TypeId('AnimatedTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

