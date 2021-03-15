import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';


class AbstractNodeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AbstractNode':
        return () => AbstractNodeObjectBinding(AbstractNode());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AbstractNodeObjectBinding extends HT_ExternObject<AbstractNode> {
  AbstractNodeObjectBinding(AbstractNode value) : super(value);

  @override
  final typeid = HT_TypeId('AbstractNode');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'depth':
        return externObject.depth;
      case 'owner':
        return externObject.owner;
      case 'attached':
        return externObject.attached;
      case 'parent':
        return externObject.parent;
      case 'redepthChild':
        return externObject.redepthChild;
      case 'redepthChildren':
        return externObject.redepthChildren;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'adoptChild':
        return externObject.adoptChild;
      case 'dropChild':
        return externObject.dropChild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

