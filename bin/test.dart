import 'dart:convert';
import 'dart:io';

import 'defines.dart';

void main(List<String> args) {
  var f = File('./gen/template.json');
  var content = f.readAsStringSync();
  var js = json.decode(content);
  var fd = FileDefine(js);




}
