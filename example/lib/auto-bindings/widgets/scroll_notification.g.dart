import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';


class ScrollStartNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollStartNotification':
        return ({metrics, context, dragDetails}) => ScrollStartNotificationObjectBinding(ScrollStartNotification(metrics : metrics, context : context, dragDetails : dragDetails));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollStartNotificationObjectBinding extends HT_ExternObject<ScrollStartNotification> {
  ScrollStartNotificationObjectBinding(ScrollStartNotification value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollStartNotification');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dragDetails':
        return externObject.dragDetails;
      case 'debugFillDescription':
        return externObject.debugFillDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScrollUpdateNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollUpdateNotification':
        return ({metrics, context, dragDetails, scrollDelta}) => ScrollUpdateNotificationObjectBinding(ScrollUpdateNotification(metrics : metrics, context : context, dragDetails : dragDetails, scrollDelta : scrollDelta));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollUpdateNotificationObjectBinding extends HT_ExternObject<ScrollUpdateNotification> {
  ScrollUpdateNotificationObjectBinding(ScrollUpdateNotification value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollUpdateNotification');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dragDetails':
        return externObject.dragDetails;
      case 'scrollDelta':
        return externObject.scrollDelta;
      case 'debugFillDescription':
        return externObject.debugFillDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class OverscrollNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'OverscrollNotification':
        return ({metrics, context, dragDetails, overscroll, velocity = 0.0}) => OverscrollNotificationObjectBinding(OverscrollNotification(metrics : metrics, context : context, dragDetails : dragDetails, overscroll : overscroll, velocity : velocity));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class OverscrollNotificationObjectBinding extends HT_ExternObject<OverscrollNotification> {
  OverscrollNotificationObjectBinding(OverscrollNotification value) : super(value);

  @override
  final typeid = HT_TypeId('OverscrollNotification');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dragDetails':
        return externObject.dragDetails;
      case 'overscroll':
        return externObject.overscroll;
      case 'velocity':
        return externObject.velocity;
      case 'debugFillDescription':
        return externObject.debugFillDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ScrollEndNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollEndNotification':
        return ({metrics, context, dragDetails}) => ScrollEndNotificationObjectBinding(ScrollEndNotification(metrics : metrics, context : context, dragDetails : dragDetails));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollEndNotificationObjectBinding extends HT_ExternObject<ScrollEndNotification> {
  ScrollEndNotificationObjectBinding(ScrollEndNotification value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollEndNotification');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'dragDetails':
        return externObject.dragDetails;
      case 'debugFillDescription':
        return externObject.debugFillDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class UserScrollNotificationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'UserScrollNotification':
        return ({metrics, context, direction}) => UserScrollNotificationObjectBinding(UserScrollNotification(metrics : metrics, context : context, direction : direction));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class UserScrollNotificationObjectBinding extends HT_ExternObject<UserScrollNotification> {
  UserScrollNotificationObjectBinding(UserScrollNotification value) : super(value);

  @override
  final typeid = HT_TypeId('UserScrollNotification');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'direction':
        return externObject.direction;
      case 'debugFillDescription':
        return externObject.debugFillDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

