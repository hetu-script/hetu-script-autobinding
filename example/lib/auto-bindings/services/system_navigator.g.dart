import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';


class SystemNavigatorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'pop':
        return ({animated}) => SystemNavigator.pop(animated : animated);
      case 'routeInformationUpdated':
        return ({location, state}) => SystemNavigator.routeInformationUpdated(location : location, state : state);
      case 'routeUpdated':
        return ({routeName, previousRouteName}) => SystemNavigator.routeUpdated(routeName : routeName, previousRouteName : previousRouteName);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


