import 'package:hetu_script/hetu_script.dart';

class HetuScriptBinding {
  static final HetuScriptBinding _singleton = HetuScriptBinding._internal();

  factory HetuScriptBinding() {
    return _singleton;
  }

  HetuScriptBinding._internal();

  final _bindings = <String, HT_ExternFunc>{};

  void preloadBindings(Map<String, HT_ExternFunc> bindings) {
    _bindings.addAll(bindings);
  }

  Map<String, HT_ExternFunc> get bindings => _bindings;
}
