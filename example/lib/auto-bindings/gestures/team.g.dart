import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';


class GestureArenaTeamClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'GestureArenaTeam':
        return () => GestureArenaTeamObjectBinding(GestureArenaTeam());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class GestureArenaTeamObjectBinding extends HT_ExternObject<GestureArenaTeam> {
  GestureArenaTeamObjectBinding(GestureArenaTeam value) : super(value);

  @override
  final typeid = HT_TypeId('GestureArenaTeam');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'captain':
        return externObject.captain;
      case 'add':
        return externObject.add;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'captain':
        externObject.captain = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

