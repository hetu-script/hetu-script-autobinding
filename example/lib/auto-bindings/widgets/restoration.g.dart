import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


class RestorationScopeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorationScope':
        return ({key, restorationId, child}) => RestorationScopeObjectBinding(RestorationScope(key : key, restorationId : restorationId, child : child));
      case 'of':
        return (context) => RestorationScope.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorationScopeObjectBinding extends HT_ExternObject<RestorationScope> {
  RestorationScopeObjectBinding(RestorationScope value) : super(value);

  @override
  final typeid = HT_TypeId('RestorationScope');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'restorationId':
        return externObject.restorationId;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class UnmanagedRestorationScopeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'UnmanagedRestorationScope':
        return ({key, bucket, child}) => UnmanagedRestorationScopeObjectBinding(UnmanagedRestorationScope(key : key, bucket : bucket, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class UnmanagedRestorationScopeObjectBinding extends HT_ExternObject<UnmanagedRestorationScope> {
  UnmanagedRestorationScopeObjectBinding(UnmanagedRestorationScope value) : super(value);

  @override
  final typeid = HT_TypeId('UnmanagedRestorationScope');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'bucket':
        return externObject.bucket;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RootRestorationScopeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RootRestorationScope':
        return ({key, restorationId, child}) => RootRestorationScopeObjectBinding(RootRestorationScope(key : key, restorationId : restorationId, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RootRestorationScopeObjectBinding extends HT_ExternObject<RootRestorationScope> {
  RootRestorationScopeObjectBinding(RootRestorationScope value) : super(value);

  @override
  final typeid = HT_TypeId('RootRestorationScope');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'restorationId':
        return externObject.restorationId;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

