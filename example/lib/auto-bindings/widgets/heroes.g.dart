import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class HeroFlightDirectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'push':
        return HeroFlightDirection.push;
      case 'pop':
        return HeroFlightDirection.pop;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HeroClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Hero':
        return ({key, tag, createRectTween, flightShuttleBuilder, placeholderBuilder, transitionOnUserGestures = false, child}) => HeroObjectBinding(Hero(key : key, tag : tag, createRectTween : createRectTween, flightShuttleBuilder : flightShuttleBuilder, placeholderBuilder : placeholderBuilder, transitionOnUserGestures : transitionOnUserGestures, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HeroObjectBinding extends HT_ExternObject<Hero> {
  HeroObjectBinding(Hero value) : super(value);

  @override
  final typeid = HT_TypeId('Hero');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'tag':
        return externObject.tag;
      case 'createRectTween':
        return externObject.createRectTween;
      case 'child':
        return externObject.child;
      case 'flightShuttleBuilder':
        return externObject.flightShuttleBuilder;
      case 'placeholderBuilder':
        return externObject.placeholderBuilder;
      case 'transitionOnUserGestures':
        return externObject.transitionOnUserGestures;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HeroControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HeroController':
        return ({createRectTween}) => HeroControllerObjectBinding(HeroController(createRectTween : createRectTween));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HeroControllerObjectBinding extends HT_ExternObject<HeroController> {
  HeroControllerObjectBinding(HeroController value) : super(value);

  @override
  final typeid = HT_TypeId('HeroController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createRectTween':
        return externObject.createRectTween;
      case 'didPush':
        return externObject.didPush;
      case 'didPop':
        return externObject.didPop;
      case 'didReplace':
        return externObject.didReplace;
      case 'didStartUserGesture':
        return externObject.didStartUserGesture;
      case 'didStopUserGesture':
        return externObject.didStopUserGesture;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HeroModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HeroMode':
        return ({key, child, enabled = true}) => HeroModeObjectBinding(HeroMode(key : key, child : child, enabled : enabled));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HeroModeObjectBinding extends HT_ExternObject<HeroMode> {
  HeroModeObjectBinding(HeroMode value) : super(value);

  @override
  final typeid = HT_TypeId('HeroMode');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'enabled':
        return externObject.enabled;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

