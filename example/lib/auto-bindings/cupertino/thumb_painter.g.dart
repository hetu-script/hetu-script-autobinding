import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
const _kSliderBoxShadows = <BoxShadow>[BoxShadow(color: Color(0x26000000), offset: Offset(0, 3), blurRadius: 8.0), BoxShadow(color: Color(0x29000000), offset: Offset(0, 1), blurRadius: 1.0), BoxShadow(color: Color(0x1A000000), offset: Offset(0, 3), blurRadius: 1.0)];
const _kSwitchBoxShadows = <BoxShadow>[BoxShadow(color: Color(0x26000000), offset: Offset(0, 3), blurRadius: 8.0), BoxShadow(color: Color(0x0F000000), offset: Offset(0, 3), blurRadius: 1.0)];


class CupertinoThumbPainterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoThumbPainter':
        return ({color = CupertinoColors.white, shadows = _kSliderBoxShadows}) => CupertinoThumbPainterObjectBinding(CupertinoThumbPainter(color : color, shadows : shadows));
      case 'CupertinoThumbPainter.switchThumb':
        return ({color = CupertinoColors.white, shadows = _kSwitchBoxShadows}) => CupertinoThumbPainterObjectBinding(CupertinoThumbPainter.switchThumb(color : color, shadows : shadows));
      case 'CupertinoThumbPainter.radius':
        return CupertinoThumbPainter.radius;
      case 'CupertinoThumbPainter.extension':
        return CupertinoThumbPainter.extension;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoThumbPainterObjectBinding extends HT_ExternObject<CupertinoThumbPainter> {
  CupertinoThumbPainterObjectBinding(CupertinoThumbPainter value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoThumbPainter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'color':
        return externObject.color;
      case 'shadows':
        return externObject.shadows;
      case 'paint':
        return externObject.paint;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

