import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';


class RestorationManagerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorationManager':
        return () => RestorationManagerObjectBinding(RestorationManager());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorationManagerObjectBinding extends HT_ExternObject<RestorationManager> {
  RestorationManagerObjectBinding(RestorationManager value) : super(value);

  @override
  final typeid = HT_TypeId('RestorationManager');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'rootBucket':
        return externObject.rootBucket;
      case 'isReplacing':
        return externObject.isReplacing;
      case 'initChannels':
        return externObject.initChannels;
      case 'handleRestorationUpdateFromEngine':
        return externObject.handleRestorationUpdateFromEngine;
      case 'sendToEngine':
        return externObject.sendToEngine;
      case 'scheduleSerializationFor':
        return externObject.scheduleSerializationFor;
      case 'unscheduleSerializationFor':
        return externObject.unscheduleSerializationFor;
      case 'flushData':
        return externObject.flushData;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RestorationBucketClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RestorationBucket.empty':
        return ({restorationId, debugOwner}) => RestorationBucketObjectBinding(RestorationBucket.empty(restorationId : restorationId, debugOwner : debugOwner));
      case 'RestorationBucket.root':
        return ({manager, rawData}) => RestorationBucketObjectBinding(RestorationBucket.root(manager : manager, rawData : rawData));
      case 'RestorationBucket.child':
        return ({restorationId, parent, debugOwner}) => RestorationBucketObjectBinding(RestorationBucket.child(restorationId : restorationId, parent : parent, debugOwner : debugOwner));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RestorationBucketObjectBinding extends HT_ExternObject<RestorationBucket> {
  RestorationBucketObjectBinding(RestorationBucket value) : super(value);

  @override
  final typeid = HT_TypeId('RestorationBucket');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'debugOwner':
        return externObject.debugOwner;
      case 'isReplacing':
        return externObject.isReplacing;
      case 'restorationId':
        return externObject.restorationId;
      case 'read':
        return externObject.read;
      case 'write':
        return externObject.write;
      case 'remove':
        return externObject.remove;
      case 'contains':
        return externObject.contains;
      case 'claimChild':
        return externObject.claimChild;
      case 'adoptChild':
        return externObject.adoptChild;
      case 'finalize':
        return externObject.finalize;
      case 'rename':
        return externObject.rename;
      case 'dispose':
        return externObject.dispose;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

