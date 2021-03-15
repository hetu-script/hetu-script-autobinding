import 'package:hetu_script/hetu_script.dart';
import 'dart:convert';


class LineSplitterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LineSplitter':
        return () => LineSplitterObjectBinding(LineSplitter());
      case 'split':
        return (lines, [start = 0, end]) => LineSplitter.split(lines, start, end);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LineSplitterObjectBinding extends HT_ExternObject<LineSplitter> {
  LineSplitterObjectBinding(LineSplitter value) : super(value);

  @override
  final typeid = HT_TypeId('LineSplitter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'convert':
        return externObject.convert;
      case 'startChunkedConversion':
        return externObject.startChunkedConversion;
      case 'bind':
        return externObject.bind;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

