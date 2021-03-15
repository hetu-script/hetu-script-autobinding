import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class RestorableNumClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableNum':
        return (defaultValue) => RestorableNumObjectBinding(RestorableNum<num>(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableNumObjectBinding extends HT_ExternObject<RestorableNum> {
  RestorableNumObjectBinding(RestorableNum value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableNum');


}

class RestorableDoubleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableDouble':
        return (defaultValue) => RestorableDoubleObjectBinding(RestorableDouble(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableDoubleObjectBinding extends HT_ExternObject<RestorableDouble> {
  RestorableDoubleObjectBinding(RestorableDouble value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableDouble');


}

class RestorableIntClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableInt':
        return (defaultValue) => RestorableIntObjectBinding(RestorableInt(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableIntObjectBinding extends HT_ExternObject<RestorableInt> {
  RestorableIntObjectBinding(RestorableInt value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableInt');


}

class RestorableStringClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableString':
        return (defaultValue) => RestorableStringObjectBinding(RestorableString(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableStringObjectBinding extends HT_ExternObject<RestorableString> {
  RestorableStringObjectBinding(RestorableString value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableString');


}

class RestorableBoolClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableBool':
        return (defaultValue) => RestorableBoolObjectBinding(RestorableBool(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableBoolObjectBinding extends HT_ExternObject<RestorableBool> {
  RestorableBoolObjectBinding(RestorableBool value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableBool');


}

class RestorableBoolNClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableBoolN':
        return (defaultValue) => RestorableBoolNObjectBinding(RestorableBoolN(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableBoolNObjectBinding extends HT_ExternObject<RestorableBoolN> {
  RestorableBoolNObjectBinding(RestorableBoolN value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableBoolN');


}

class RestorableNumNClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableNumN':
        return (defaultValue) => RestorableNumNObjectBinding(RestorableNumN<num?>(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableNumNObjectBinding extends HT_ExternObject<RestorableNumN> {
  RestorableNumNObjectBinding(RestorableNumN value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableNumN');


}

class RestorableDoubleNClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableDoubleN':
        return (defaultValue) => RestorableDoubleNObjectBinding(RestorableDoubleN(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableDoubleNObjectBinding extends HT_ExternObject<RestorableDoubleN> {
  RestorableDoubleNObjectBinding(RestorableDoubleN value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableDoubleN');


}

class RestorableIntNClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableIntN':
        return (defaultValue) => RestorableIntNObjectBinding(RestorableIntN(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableIntNObjectBinding extends HT_ExternObject<RestorableIntN> {
  RestorableIntNObjectBinding(RestorableIntN value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableIntN');


}

class RestorableStringNClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableStringN':
        return (defaultValue) => RestorableStringNObjectBinding(RestorableStringN(defaultValue));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableStringNObjectBinding extends HT_ExternObject<RestorableStringN> {
  RestorableStringNObjectBinding(RestorableStringN value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableStringN');


}

class RestorableTextEditingControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorableTextEditingController.fromValue':
        return (value) => RestorableTextEditingControllerObjectBinding(RestorableTextEditingController.fromValue(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorableTextEditingControllerObjectBinding extends HT_ExternObject<RestorableTextEditingController> {
  RestorableTextEditingControllerObjectBinding(RestorableTextEditingController value) : super(value);

  @override
  final typeid = HT_TypeId('RestorableTextEditingController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createDefaultValue':
        return externObject.createDefaultValue;
      case 'fromPrimitives':
        return externObject.fromPrimitives;
      case 'toPrimitives':
        return externObject.toPrimitives;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

