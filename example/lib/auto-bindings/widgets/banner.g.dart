import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
const _kColor = Color(0xA0B71C1C);
const _kHeight = 12.0;
const _kTextStyle = TextStyle(color: Color(0xFFFFFFFF), fontSize: _kHeight * 0.85, fontWeight: FontWeight.w900, height: 1.0);

class BannerLocationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'topStart':
        return BannerLocation.topStart;
      case 'topEnd':
        return BannerLocation.topEnd;
      case 'bottomStart':
        return BannerLocation.bottomStart;
      case 'bottomEnd':
        return BannerLocation.bottomEnd;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BannerPainterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BannerPainter':
        return ({message, textDirection, location, layoutDirection, color = _kColor, textStyle = _kTextStyle}) => BannerPainterObjectBinding(BannerPainter(message : message, textDirection : textDirection, location : location, layoutDirection : layoutDirection, color : color, textStyle : textStyle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BannerPainterObjectBinding extends HT_ExternObject<BannerPainter> {
  BannerPainterObjectBinding(BannerPainter value) : super(value);

  @override
  final typeid = HT_TypeId('BannerPainter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'textDirection':
        return externObject.textDirection;
      case 'location':
        return externObject.location;
      case 'layoutDirection':
        return externObject.layoutDirection;
      case 'color':
        return externObject.color;
      case 'textStyle':
        return externObject.textStyle;
      case 'paint':
        return externObject.paint;
      case 'shouldRepaint':
        return externObject.shouldRepaint;
      case 'hitTest':
        return externObject.hitTest;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BannerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Banner':
        return ({key, child, message, textDirection, location, layoutDirection, color = _kColor, textStyle = _kTextStyle}) => BannerObjectBinding(Banner(key : key, child : child, message : message, textDirection : textDirection, location : location, layoutDirection : layoutDirection, color : color, textStyle : textStyle));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BannerObjectBinding extends HT_ExternObject<Banner> {
  BannerObjectBinding(Banner value) : super(value);

  @override
  final typeid = HT_TypeId('Banner');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'message':
        return externObject.message;
      case 'textDirection':
        return externObject.textDirection;
      case 'location':
        return externObject.location;
      case 'layoutDirection':
        return externObject.layoutDirection;
      case 'color':
        return externObject.color;
      case 'textStyle':
        return externObject.textStyle;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CheckedModeBannerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CheckedModeBanner':
        return ({key, child}) => CheckedModeBannerObjectBinding(CheckedModeBanner(key : key, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CheckedModeBannerObjectBinding extends HT_ExternObject<CheckedModeBanner> {
  CheckedModeBannerObjectBinding(CheckedModeBanner value) : super(value);

  @override
  final typeid = HT_TypeId('CheckedModeBanner');

  @override
  dynamic fetch(String id) {
    switch (id) {
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

