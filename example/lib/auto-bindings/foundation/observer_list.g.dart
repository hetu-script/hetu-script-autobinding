import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';


class ObserverListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ObserverList':
        return () => ObserverListObjectBinding(ObserverList());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ObserverListObjectBinding extends HT_ExternObject<ObserverList> {
  ObserverListObjectBinding(ObserverList value) : super(value);

  @override
  final typeid = HT_TypeId('ObserverList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'iterator':
        return externObject.iterator;
      case 'isEmpty':
        return externObject.isEmpty;
      case 'isNotEmpty':
        return externObject.isNotEmpty;
      case 'add':
        return externObject.add;
      case 'remove':
        return externObject.remove;
      case 'contains':
        return externObject.contains;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class HashedObserverListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HashedObserverList':
        return () => HashedObserverListObjectBinding(HashedObserverList());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HashedObserverListObjectBinding extends HT_ExternObject<HashedObserverList> {
  HashedObserverListObjectBinding(HashedObserverList value) : super(value);

  @override
  final typeid = HT_TypeId('HashedObserverList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'iterator':
        return externObject.iterator;
      case 'isEmpty':
        return externObject.isEmpty;
      case 'isNotEmpty':
        return externObject.isNotEmpty;
      case 'add':
        return externObject.add;
      case 'remove':
        return externObject.remove;
      case 'contains':
        return externObject.contains;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

