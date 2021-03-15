import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class PageStorageKeyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PageStorageKey':
        return (value) => PageStorageKeyObjectBinding(PageStorageKey(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PageStorageKeyObjectBinding extends HT_ExternObject<PageStorageKey> {
  PageStorageKeyObjectBinding(PageStorageKey value) : super(value);

  @override
  final typeid = HT_TypeId('PageStorageKey');


}

class PageStorageBucketClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PageStorageBucket':
        return () => PageStorageBucketObjectBinding(PageStorageBucket());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PageStorageBucketObjectBinding extends HT_ExternObject<PageStorageBucket> {
  PageStorageBucketObjectBinding(PageStorageBucket value) : super(value);

  @override
  final typeid = HT_TypeId('PageStorageBucket');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'writeState':
        return externObject.writeState;
      case 'readState':
        return externObject.readState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PageStorageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PageStorage':
        return ({key, bucket, child}) => PageStorageObjectBinding(PageStorage(key : key, bucket : bucket, child : child));
      case 'of':
        return (context) => PageStorage.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PageStorageObjectBinding extends HT_ExternObject<PageStorage> {
  PageStorageObjectBinding(PageStorage value) : super(value);

  @override
  final typeid = HT_TypeId('PageStorage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'bucket':
        return externObject.bucket;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

