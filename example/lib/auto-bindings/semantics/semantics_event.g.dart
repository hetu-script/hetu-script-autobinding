import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';


class AnnounceSemanticsEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AnnounceSemanticsEvent':
        return (message, textDirection) => AnnounceSemanticsEventObjectBinding(AnnounceSemanticsEvent(message, textDirection));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AnnounceSemanticsEventObjectBinding extends HT_ExternObject<AnnounceSemanticsEvent> {
  AnnounceSemanticsEventObjectBinding(AnnounceSemanticsEvent value) : super(value);

  @override
  final typeid = HT_TypeId('AnnounceSemanticsEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'textDirection':
        return externObject.textDirection;
      case 'getDataMap':
        return externObject.getDataMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TooltipSemanticsEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TooltipSemanticsEvent':
        return (message) => TooltipSemanticsEventObjectBinding(TooltipSemanticsEvent(message));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TooltipSemanticsEventObjectBinding extends HT_ExternObject<TooltipSemanticsEvent> {
  TooltipSemanticsEventObjectBinding(TooltipSemanticsEvent value) : super(value);

  @override
  final typeid = HT_TypeId('TooltipSemanticsEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'getDataMap':
        return externObject.getDataMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LongPressSemanticsEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LongPressSemanticsEvent':
        return () => LongPressSemanticsEventObjectBinding(LongPressSemanticsEvent());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LongPressSemanticsEventObjectBinding extends HT_ExternObject<LongPressSemanticsEvent> {
  LongPressSemanticsEventObjectBinding(LongPressSemanticsEvent value) : super(value);

  @override
  final typeid = HT_TypeId('LongPressSemanticsEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getDataMap':
        return externObject.getDataMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TapSemanticEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TapSemanticEvent':
        return () => TapSemanticEventObjectBinding(TapSemanticEvent());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TapSemanticEventObjectBinding extends HT_ExternObject<TapSemanticEvent> {
  TapSemanticEventObjectBinding(TapSemanticEvent value) : super(value);

  @override
  final typeid = HT_TypeId('TapSemanticEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getDataMap':
        return externObject.getDataMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class UpdateLiveRegionEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'UpdateLiveRegionEvent':
        return () => UpdateLiveRegionEventObjectBinding(UpdateLiveRegionEvent());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class UpdateLiveRegionEventObjectBinding extends HT_ExternObject<UpdateLiveRegionEvent> {
  UpdateLiveRegionEventObjectBinding(UpdateLiveRegionEvent value) : super(value);

  @override
  final typeid = HT_TypeId('UpdateLiveRegionEvent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getDataMap':
        return externObject.getDataMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

