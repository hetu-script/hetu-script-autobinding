import 'package:hetu_script/hetu_script.dart';
import 'dart:async';


class DeferredLibraryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DeferredLibrary':
        return (libraryName, {uri}) => DeferredLibraryObjectBinding(DeferredLibrary(libraryName, uri : uri));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DeferredLibraryObjectBinding extends HT_ExternObject<DeferredLibrary> {
  DeferredLibraryObjectBinding(DeferredLibrary value) : super(value);

  @override
  final typeid = HT_TypeId('DeferredLibrary');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'libraryName':
        return externObject.libraryName;
      case 'uri':
        return externObject.uri;
      case 'load':
        return externObject.load;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DeferredLoadExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DeferredLoadException':
        return (message) => DeferredLoadExceptionObjectBinding(DeferredLoadException(message));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DeferredLoadExceptionObjectBinding extends HT_ExternObject<DeferredLoadException> {
  DeferredLoadExceptionObjectBinding(DeferredLoadException value) : super(value);

  @override
  final typeid = HT_TypeId('DeferredLoadException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

