import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class CupertinoScrollbarClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoScrollbar':
        return ({key, child, controller, isAlwaysShown = false, thickness = defaultThickness, thicknessWhileDragging = defaultThicknessWhileDragging, radius = defaultRadius, radiusWhileDragging = defaultRadiusWhileDragging, notificationPredicate}) => CupertinoScrollbarObjectBinding(CupertinoScrollbar(key : key, child : child, controller : controller, isAlwaysShown : isAlwaysShown, thickness : thickness, thicknessWhileDragging : thicknessWhileDragging, radius : radius, radiusWhileDragging : radiusWhileDragging, notificationPredicate : notificationPredicate));
      case 'CupertinoScrollbar.defaultThickness':
        return CupertinoScrollbar.defaultThickness;
      case 'CupertinoScrollbar.defaultThicknessWhileDragging':
        return CupertinoScrollbar.defaultThicknessWhileDragging;
      case 'CupertinoScrollbar.defaultRadius':
        return CupertinoScrollbar.defaultRadius;
      case 'CupertinoScrollbar.defaultRadiusWhileDragging':
        return CupertinoScrollbar.defaultRadiusWhileDragging;
      default:
        throw HTErr_Undefined(id);
    }
  }
  static const defaultThickness = 3;
  static const defaultThicknessWhileDragging = 8.0;
  static const defaultRadius = Radius.circular(1.5);
  static const defaultRadiusWhileDragging = Radius.circular(4.0);
}

class CupertinoScrollbarObjectBinding extends HT_ExternObject<CupertinoScrollbar> {
  CupertinoScrollbarObjectBinding(CupertinoScrollbar value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoScrollbar');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'thicknessWhileDragging':
        return externObject.thicknessWhileDragging;
      case 'radiusWhileDragging':
        return externObject.radiusWhileDragging;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

