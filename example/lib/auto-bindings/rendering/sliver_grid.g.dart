import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';


class SliverGridGeometryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverGridGeometry':
        return ({scrollOffset, crossAxisOffset, mainAxisExtent, crossAxisExtent}) => SliverGridGeometryObjectBinding(SliverGridGeometry(scrollOffset : scrollOffset, crossAxisOffset : crossAxisOffset, mainAxisExtent : mainAxisExtent, crossAxisExtent : crossAxisExtent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverGridGeometryObjectBinding extends HT_ExternObject<SliverGridGeometry> {
  SliverGridGeometryObjectBinding(SliverGridGeometry value) : super(value);

  @override
  final typeid = HT_TypeId('SliverGridGeometry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scrollOffset':
        return externObject.scrollOffset;
      case 'crossAxisOffset':
        return externObject.crossAxisOffset;
      case 'mainAxisExtent':
        return externObject.mainAxisExtent;
      case 'crossAxisExtent':
        return externObject.crossAxisExtent;
      case 'trailingScrollOffset':
        return externObject.trailingScrollOffset;
      case 'getBoxConstraints':
        return externObject.getBoxConstraints;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverGridRegularTileLayoutClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverGridRegularTileLayout':
        return ({crossAxisCount, mainAxisStride, crossAxisStride, childMainAxisExtent, childCrossAxisExtent, reverseCrossAxis}) => SliverGridRegularTileLayoutObjectBinding(SliverGridRegularTileLayout(crossAxisCount : crossAxisCount, mainAxisStride : mainAxisStride, crossAxisStride : crossAxisStride, childMainAxisExtent : childMainAxisExtent, childCrossAxisExtent : childCrossAxisExtent, reverseCrossAxis : reverseCrossAxis));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverGridRegularTileLayoutObjectBinding extends HT_ExternObject<SliverGridRegularTileLayout> {
  SliverGridRegularTileLayoutObjectBinding(SliverGridRegularTileLayout value) : super(value);

  @override
  final typeid = HT_TypeId('SliverGridRegularTileLayout');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'crossAxisCount':
        return externObject.crossAxisCount;
      case 'mainAxisStride':
        return externObject.mainAxisStride;
      case 'crossAxisStride':
        return externObject.crossAxisStride;
      case 'childMainAxisExtent':
        return externObject.childMainAxisExtent;
      case 'childCrossAxisExtent':
        return externObject.childCrossAxisExtent;
      case 'reverseCrossAxis':
        return externObject.reverseCrossAxis;
      case 'getMinChildIndexForScrollOffset':
        return externObject.getMinChildIndexForScrollOffset;
      case 'getMaxChildIndexForScrollOffset':
        return externObject.getMaxChildIndexForScrollOffset;
      case 'getGeometryForChildIndex':
        return externObject.getGeometryForChildIndex;
      case 'computeMaxScrollOffset':
        return externObject.computeMaxScrollOffset;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverGridDelegateWithFixedCrossAxisCountClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverGridDelegateWithFixedCrossAxisCount':
        return ({crossAxisCount, mainAxisSpacing = 0.0, crossAxisSpacing = 0.0, childAspectRatio = 1.0, mainAxisExtent}) => SliverGridDelegateWithFixedCrossAxisCountObjectBinding(SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount : crossAxisCount, mainAxisSpacing : mainAxisSpacing, crossAxisSpacing : crossAxisSpacing, childAspectRatio : childAspectRatio, mainAxisExtent : mainAxisExtent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverGridDelegateWithFixedCrossAxisCountObjectBinding extends HT_ExternObject<SliverGridDelegateWithFixedCrossAxisCount> {
  SliverGridDelegateWithFixedCrossAxisCountObjectBinding(SliverGridDelegateWithFixedCrossAxisCount value) : super(value);

  @override
  final typeid = HT_TypeId('SliverGridDelegateWithFixedCrossAxisCount');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'crossAxisCount':
        return externObject.crossAxisCount;
      case 'mainAxisSpacing':
        return externObject.mainAxisSpacing;
      case 'crossAxisSpacing':
        return externObject.crossAxisSpacing;
      case 'childAspectRatio':
        return externObject.childAspectRatio;
      case 'mainAxisExtent':
        return externObject.mainAxisExtent;
      case 'getLayout':
        return externObject.getLayout;
      case 'shouldRelayout':
        return externObject.shouldRelayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverGridDelegateWithMaxCrossAxisExtentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverGridDelegateWithMaxCrossAxisExtent':
        return ({maxCrossAxisExtent, mainAxisSpacing = 0.0, crossAxisSpacing = 0.0, childAspectRatio = 1.0, mainAxisExtent}) => SliverGridDelegateWithMaxCrossAxisExtentObjectBinding(SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent : maxCrossAxisExtent, mainAxisSpacing : mainAxisSpacing, crossAxisSpacing : crossAxisSpacing, childAspectRatio : childAspectRatio, mainAxisExtent : mainAxisExtent));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverGridDelegateWithMaxCrossAxisExtentObjectBinding extends HT_ExternObject<SliverGridDelegateWithMaxCrossAxisExtent> {
  SliverGridDelegateWithMaxCrossAxisExtentObjectBinding(SliverGridDelegateWithMaxCrossAxisExtent value) : super(value);

  @override
  final typeid = HT_TypeId('SliverGridDelegateWithMaxCrossAxisExtent');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'maxCrossAxisExtent':
        return externObject.maxCrossAxisExtent;
      case 'mainAxisSpacing':
        return externObject.mainAxisSpacing;
      case 'crossAxisSpacing':
        return externObject.crossAxisSpacing;
      case 'childAspectRatio':
        return externObject.childAspectRatio;
      case 'mainAxisExtent':
        return externObject.mainAxisExtent;
      case 'getLayout':
        return externObject.getLayout;
      case 'shouldRelayout':
        return externObject.shouldRelayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverGridParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverGridParentData':
        return () => SliverGridParentDataObjectBinding(SliverGridParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverGridParentDataObjectBinding extends HT_ExternObject<SliverGridParentData> {
  SliverGridParentDataObjectBinding(SliverGridParentData value) : super(value);

  @override
  final typeid = HT_TypeId('SliverGridParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'crossAxisOffset':
        return externObject.crossAxisOffset;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'crossAxisOffset':
        externObject.crossAxisOffset = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverGridClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverGrid':
        return ({childManager, gridDelegate}) => RenderSliverGridObjectBinding(RenderSliverGrid(childManager : childManager, gridDelegate : gridDelegate));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverGridObjectBinding extends HT_ExternObject<RenderSliverGrid> {
  RenderSliverGridObjectBinding(RenderSliverGrid value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverGrid');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'gridDelegate':
        return externObject.gridDelegate;
      case 'setupParentData':
        return externObject.setupParentData;
      case 'childCrossAxisPosition':
        return externObject.childCrossAxisPosition;
      case 'performLayout':
        return externObject.performLayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'gridDelegate':
        externObject.gridDelegate = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

