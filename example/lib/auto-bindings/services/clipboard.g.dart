import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


class ClipboardDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ClipboardData':
        return ({text}) => ClipboardDataObjectBinding(ClipboardData(text : text));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ClipboardDataObjectBinding extends HT_ExternObject<ClipboardData> {
  ClipboardDataObjectBinding(ClipboardData value) : super(value);

  @override
  final typeid = HT_TypeId('ClipboardData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'text':
        return externObject.text;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ClipboardClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'setData':
        return (data) => Clipboard.setData(data);
      case 'getData':
        return (format) => Clipboard.getData(format);
      case 'Clipboard.kTextPlain':
        return Clipboard.kTextPlain;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


