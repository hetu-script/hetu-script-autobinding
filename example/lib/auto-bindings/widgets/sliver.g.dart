import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
int _kDefaultSemanticIndexCallback(Widget _, int localIndex) => localIndex;


class SliverChildBuilderDelegateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverChildBuilderDelegate':
        return (builder, {findChildIndexCallback, childCount, addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, semanticIndexCallback = _kDefaultSemanticIndexCallback, semanticIndexOffset = 0}) => SliverChildBuilderDelegateObjectBinding(SliverChildBuilderDelegate(builder, findChildIndexCallback : findChildIndexCallback, childCount : childCount, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, semanticIndexCallback : semanticIndexCallback, semanticIndexOffset : semanticIndexOffset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverChildBuilderDelegateObjectBinding extends HT_ExternObject<SliverChildBuilderDelegate> {
  SliverChildBuilderDelegateObjectBinding(SliverChildBuilderDelegate value) : super(value);

  @override
  final typeid = HT_TypeId('SliverChildBuilderDelegate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'builder':
        return externObject.builder;
      case 'childCount':
        return externObject.childCount;
      case 'addAutomaticKeepAlives':
        return externObject.addAutomaticKeepAlives;
      case 'addRepaintBoundaries':
        return externObject.addRepaintBoundaries;
      case 'addSemanticIndexes':
        return externObject.addSemanticIndexes;
      case 'semanticIndexOffset':
        return externObject.semanticIndexOffset;
      case 'semanticIndexCallback':
        return externObject.semanticIndexCallback;
      case 'findChildIndexCallback':
        return externObject.findChildIndexCallback;
      case 'estimatedChildCount':
        return externObject.estimatedChildCount;
      case 'findIndexByKey':
        return externObject.findIndexByKey;
      case 'build':
        return externObject.build;
      case 'shouldRebuild':
        return externObject.shouldRebuild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverChildListDelegateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverChildListDelegate':
        return (children, {addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, semanticIndexCallback = _kDefaultSemanticIndexCallback, semanticIndexOffset = 0}) => SliverChildListDelegateObjectBinding(SliverChildListDelegate(children, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, semanticIndexCallback : semanticIndexCallback, semanticIndexOffset : semanticIndexOffset));
      case 'SliverChildListDelegate.fixed':
        return (children, {addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, semanticIndexCallback = _kDefaultSemanticIndexCallback, semanticIndexOffset = 0}) => SliverChildListDelegateObjectBinding(SliverChildListDelegate.fixed(children, addAutomaticKeepAlives : addAutomaticKeepAlives, addRepaintBoundaries : addRepaintBoundaries, addSemanticIndexes : addSemanticIndexes, semanticIndexCallback : semanticIndexCallback, semanticIndexOffset : semanticIndexOffset));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverChildListDelegateObjectBinding extends HT_ExternObject<SliverChildListDelegate> {
  SliverChildListDelegateObjectBinding(SliverChildListDelegate value) : super(value);

  @override
  final typeid = HT_TypeId('SliverChildListDelegate');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'addAutomaticKeepAlives':
        return externObject.addAutomaticKeepAlives;
      case 'addRepaintBoundaries':
        return externObject.addRepaintBoundaries;
      case 'addSemanticIndexes':
        return externObject.addSemanticIndexes;
      case 'semanticIndexOffset':
        return externObject.semanticIndexOffset;
      case 'semanticIndexCallback':
        return externObject.semanticIndexCallback;
      case 'children':
        return externObject.children;
      case 'estimatedChildCount':
        return externObject.estimatedChildCount;
      case 'findIndexByKey':
        return externObject.findIndexByKey;
      case 'build':
        return externObject.build;
      case 'shouldRebuild':
        return externObject.shouldRebuild;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverList':
        return ({key, delegate}) => SliverListObjectBinding(SliverList(key : key, delegate : delegate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverListObjectBinding extends HT_ExternObject<SliverList> {
  SliverListObjectBinding(SliverList value) : super(value);

  @override
  final typeid = HT_TypeId('SliverList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'createElement':
        return externObject.createElement;
      case 'createRenderObject':
        return externObject.createRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverFixedExtentListClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverFixedExtentList':
        return ({key, delegate, itemExtent}) => SliverFixedExtentListObjectBinding(SliverFixedExtentList(key : key, delegate : delegate, itemExtent : itemExtent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverFixedExtentListObjectBinding extends HT_ExternObject<SliverFixedExtentList> {
  SliverFixedExtentListObjectBinding(SliverFixedExtentList value) : super(value);

  @override
  final typeid = HT_TypeId('SliverFixedExtentList');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'itemExtent':
        return externObject.itemExtent;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverGridClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverGrid':
        return ({key, delegate, gridDelegate}) => SliverGridObjectBinding(SliverGrid(key : key, delegate : delegate, gridDelegate : gridDelegate));
      case 'SliverGrid.count':
        return ({key, crossAxisCount, mainAxisSpacing = 0.0, crossAxisSpacing = 0.0, childAspectRatio = 1.0, children = const <Widget>[]}) => SliverGridObjectBinding(SliverGrid.count(key : key, crossAxisCount : crossAxisCount, mainAxisSpacing : mainAxisSpacing, crossAxisSpacing : crossAxisSpacing, childAspectRatio : childAspectRatio, children : children));
      case 'SliverGrid.extent':
        return ({key, maxCrossAxisExtent, mainAxisSpacing = 0.0, crossAxisSpacing = 0.0, childAspectRatio = 1.0, children = const <Widget>[]}) => SliverGridObjectBinding(SliverGrid.extent(key : key, maxCrossAxisExtent : maxCrossAxisExtent, mainAxisSpacing : mainAxisSpacing, crossAxisSpacing : crossAxisSpacing, childAspectRatio : childAspectRatio, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverGridObjectBinding extends HT_ExternObject<SliverGrid> {
  SliverGridObjectBinding(SliverGrid value) : super(value);

  @override
  final typeid = HT_TypeId('SliverGrid');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'gridDelegate':
        return externObject.gridDelegate;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'estimateMaxScrollOffset':
        return externObject.estimateMaxScrollOffset;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverMultiBoxAdaptorElementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverMultiBoxAdaptorElement':
        return (widget, {replaceMovedChildren = false}) => SliverMultiBoxAdaptorElementObjectBinding(SliverMultiBoxAdaptorElement(widget, replaceMovedChildren : replaceMovedChildren));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverMultiBoxAdaptorElementObjectBinding extends HT_ExternObject<SliverMultiBoxAdaptorElement> {
  SliverMultiBoxAdaptorElementObjectBinding(SliverMultiBoxAdaptorElement value) : super(value);

  @override
  final typeid = HT_TypeId('SliverMultiBoxAdaptorElement');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'widget':
        return externObject.widget;
      case 'renderObject':
        return externObject.renderObject;
      case 'estimatedChildCount':
        return externObject.estimatedChildCount;
      case 'childCount':
        return externObject.childCount;
      case 'update':
        return externObject.update;
      case 'performRebuild':
        return externObject.performRebuild;
      case 'createChild':
        return externObject.createChild;
      case 'updateChild':
        return externObject.updateChild;
      case 'forgetChild':
        return externObject.forgetChild;
      case 'removeChild':
        return externObject.removeChild;
      case 'estimateMaxScrollOffset':
        return externObject.estimateMaxScrollOffset;
      case 'didStartLayout':
        return externObject.didStartLayout;
      case 'didFinishLayout':
        return externObject.didFinishLayout;
      case 'debugAssertChildListLocked':
        return externObject.debugAssertChildListLocked;
      case 'didAdoptChild':
        return externObject.didAdoptChild;
      case 'setDidUnderflow':
        return externObject.setDidUnderflow;
      case 'insertRenderObjectChild':
        return externObject.insertRenderObjectChild;
      case 'moveRenderObjectChild':
        return externObject.moveRenderObjectChild;
      case 'removeRenderObjectChild':
        return externObject.removeRenderObjectChild;
      case 'visitChildren':
        return externObject.visitChildren;
      case 'debugVisitOnstageChildren':
        return externObject.debugVisitOnstageChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverOpacityClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverOpacity':
        return ({key, opacity, alwaysIncludeSemantics = false, sliver}) => SliverOpacityObjectBinding(SliverOpacity(key : key, opacity : opacity, alwaysIncludeSemantics : alwaysIncludeSemantics, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverOpacityObjectBinding extends HT_ExternObject<SliverOpacity> {
  SliverOpacityObjectBinding(SliverOpacity value) : super(value);

  @override
  final typeid = HT_TypeId('SliverOpacity');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'opacity':
        return externObject.opacity;
      case 'alwaysIncludeSemantics':
        return externObject.alwaysIncludeSemantics;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverIgnorePointerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverIgnorePointer':
        return ({key, ignoring = true, ignoringSemantics, sliver}) => SliverIgnorePointerObjectBinding(SliverIgnorePointer(key : key, ignoring : ignoring, ignoringSemantics : ignoringSemantics, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverIgnorePointerObjectBinding extends HT_ExternObject<SliverIgnorePointer> {
  SliverIgnorePointerObjectBinding(SliverIgnorePointer value) : super(value);

  @override
  final typeid = HT_TypeId('SliverIgnorePointer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ignoring':
        return externObject.ignoring;
      case 'ignoringSemantics':
        return externObject.ignoringSemantics;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverOffstageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverOffstage':
        return ({key, offstage = true, sliver}) => SliverOffstageObjectBinding(SliverOffstage(key : key, offstage : offstage, sliver : sliver));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverOffstageObjectBinding extends HT_ExternObject<SliverOffstage> {
  SliverOffstageObjectBinding(SliverOffstage value) : super(value);

  @override
  final typeid = HT_TypeId('SliverOffstage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offstage':
        return externObject.offstage;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'createElement':
        return externObject.createElement;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class KeepAliveClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'KeepAlive':
        return ({key, keepAlive, child}) => KeepAliveObjectBinding(KeepAlive(key : key, keepAlive : keepAlive, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class KeepAliveObjectBinding extends HT_ExternObject<KeepAlive> {
  KeepAliveObjectBinding(KeepAlive value) : super(value);

  @override
  final typeid = HT_TypeId('KeepAlive');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'keepAlive':
        return externObject.keepAlive;
      case 'debugTypicalAncestorWidgetClass':
        return externObject.debugTypicalAncestorWidgetClass;
      case 'applyParentData':
        return externObject.applyParentData;
      case 'debugCanApplyOutOfTurn':
        return externObject.debugCanApplyOutOfTurn;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

