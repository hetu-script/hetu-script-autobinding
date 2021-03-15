import 'package:hetu_script/hetu_script.dart';
import 'dart:convert';


class HtmlEscapeModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HtmlEscapeMode.unknown':
        return HtmlEscapeMode.unknown;
      case 'HtmlEscapeMode.attribute':
        return HtmlEscapeMode.attribute;
      case 'HtmlEscapeMode.sqAttribute':
        return HtmlEscapeMode.sqAttribute;
      case 'HtmlEscapeMode.element':
        return HtmlEscapeMode.element;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class HtmlEscapeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HtmlEscape':
        return ([mode = HtmlEscapeMode.unknown]) => HtmlEscapeObjectBinding(HtmlEscape(mode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HtmlEscapeObjectBinding extends HT_ExternObject<HtmlEscape> {
  HtmlEscapeObjectBinding(HtmlEscape value) : super(value);

  @override
  final typeid = HT_TypeId('HtmlEscape');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'mode':
        return externObject.mode;
      case 'convert':
        return externObject.convert;
      case 'startChunkedConversion':
        return externObject.startChunkedConversion;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

