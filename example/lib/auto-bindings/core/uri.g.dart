import 'package:hetu_script/hetu_script.dart';
import 'dart:core';


class UriDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'parse':
        return (uri) => UriData.parse(uri);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


