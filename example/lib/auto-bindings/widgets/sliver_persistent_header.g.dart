import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';


class SliverPersistentHeaderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverPersistentHeader':
        return ({key, delegate, pinned = false, floating = false}) => SliverPersistentHeaderObjectBinding(SliverPersistentHeader(key : key, delegate : delegate, pinned : pinned, floating : floating));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverPersistentHeaderObjectBinding extends HT_ExternObject<SliverPersistentHeader> {
  SliverPersistentHeaderObjectBinding(SliverPersistentHeader value) : super(value);

  @override
  final typeid = HT_TypeId('SliverPersistentHeader');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'delegate':
        return externObject.delegate;
      case 'pinned':
        return externObject.pinned;
      case 'floating':
        return externObject.floating;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

