import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';


class PointerRouterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PointerRouter':
        return () => PointerRouterObjectBinding(PointerRouter());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PointerRouterObjectBinding extends HT_ExternObject<PointerRouter> {
  PointerRouterObjectBinding(PointerRouter value) : super(value);

  @override
  final typeid = HT_TypeId('PointerRouter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugGlobalRouteCount':
        return externObject.debugGlobalRouteCount;
      case 'addRoute':
        return externObject.addRoute;
      case 'removeRoute':
        return externObject.removeRoute;
      case 'addGlobalRoute':
        return externObject.addGlobalRoute;
      case 'removeGlobalRoute':
        return externObject.removeGlobalRoute;
      case 'route':
        return externObject.route;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

