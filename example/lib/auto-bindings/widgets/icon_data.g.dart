import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';


class IconDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IconData':
        return (codePoint, {fontFamily, fontPackage, matchTextDirection = false}) => IconDataObjectBinding(IconData(codePoint, fontFamily : fontFamily, fontPackage : fontPackage, matchTextDirection : matchTextDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IconDataObjectBinding extends HT_ExternObject<IconData> {
  IconDataObjectBinding(IconData value) : super(value);

  @override
  final typeid = HT_TypeId('IconData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'codePoint':
        return externObject.codePoint;
      case 'fontFamily':
        return externObject.fontFamily;
      case 'fontPackage':
        return externObject.fontPackage;
      case 'matchTextDirection':
        return externObject.matchTextDirection;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class IconDataPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IconDataProperty':
        return (name, value, {ifNull, showName = true, style = DiagnosticsTreeStyle.singleLine, level = DiagnosticLevel.info}) => IconDataPropertyObjectBinding(IconDataProperty(name, value, ifNull : ifNull, showName : showName, style : style, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IconDataPropertyObjectBinding extends HT_ExternObject<IconDataProperty> {
  IconDataPropertyObjectBinding(IconDataProperty value) : super(value);

  @override
  final typeid = HT_TypeId('IconDataProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'toJsonMap':
        return externObject.toJsonMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

