import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
Widget _defaultTransitionsBuilder(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {return child;}


class PageRouteBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PageRouteBuilder':
        return ({settings, pageBuilder, transitionsBuilder = _defaultTransitionsBuilder, transitionDuration = const Duration(milliseconds: 300), reverseTransitionDuration = const Duration(milliseconds: 300), opaque = true, barrierDismissible = false, barrierColor, barrierLabel, maintainState = true, fullscreenDialog = false}) => PageRouteBuilderObjectBinding(PageRouteBuilder(settings : settings, pageBuilder : pageBuilder, transitionsBuilder : transitionsBuilder, transitionDuration : transitionDuration, reverseTransitionDuration : reverseTransitionDuration, opaque : opaque, barrierDismissible : barrierDismissible, barrierColor : barrierColor, barrierLabel : barrierLabel, maintainState : maintainState, fullscreenDialog : fullscreenDialog));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PageRouteBuilderObjectBinding extends HT_ExternObject<PageRouteBuilder> {
  PageRouteBuilderObjectBinding(PageRouteBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('PageRouteBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'pageBuilder':
        return externObject.pageBuilder;
      case 'transitionsBuilder':
        return externObject.transitionsBuilder;
      case 'transitionDuration':
        return externObject.transitionDuration;
      case 'reverseTransitionDuration':
        return externObject.reverseTransitionDuration;
      case 'opaque':
        return externObject.opaque;
      case 'barrierDismissible':
        return externObject.barrierDismissible;
      case 'barrierColor':
        return externObject.barrierColor;
      case 'barrierLabel':
        return externObject.barrierLabel;
      case 'maintainState':
        return externObject.maintainState;
      case 'buildPage':
        return externObject.buildPage;
      case 'buildTransitions':
        return externObject.buildTransitions;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

