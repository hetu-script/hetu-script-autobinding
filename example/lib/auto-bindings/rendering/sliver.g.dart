import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

class GrowthDirectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'forward':
        return GrowthDirection.forward;
      case 'reverse':
        return GrowthDirection.reverse;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverConstraintsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverConstraints':
        return ({axisDirection, growthDirection, userScrollDirection, scrollOffset, precedingScrollExtent, overlap, remainingPaintExtent, crossAxisExtent, crossAxisDirection, viewportMainAxisExtent, remainingCacheExtent, cacheOrigin}) => SliverConstraintsObjectBinding(SliverConstraints(axisDirection : axisDirection, growthDirection : growthDirection, userScrollDirection : userScrollDirection, scrollOffset : scrollOffset, precedingScrollExtent : precedingScrollExtent, overlap : overlap, remainingPaintExtent : remainingPaintExtent, crossAxisExtent : crossAxisExtent, crossAxisDirection : crossAxisDirection, viewportMainAxisExtent : viewportMainAxisExtent, remainingCacheExtent : remainingCacheExtent, cacheOrigin : cacheOrigin));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverConstraintsObjectBinding extends HT_ExternObject<SliverConstraints> {
  SliverConstraintsObjectBinding(SliverConstraints value) : super(value);

  @override
  final typeid = HT_TypeId('SliverConstraints');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'axisDirection':
        return externObject.axisDirection;
      case 'growthDirection':
        return externObject.growthDirection;
      case 'userScrollDirection':
        return externObject.userScrollDirection;
      case 'scrollOffset':
        return externObject.scrollOffset;
      case 'precedingScrollExtent':
        return externObject.precedingScrollExtent;
      case 'overlap':
        return externObject.overlap;
      case 'remainingPaintExtent':
        return externObject.remainingPaintExtent;
      case 'crossAxisExtent':
        return externObject.crossAxisExtent;
      case 'crossAxisDirection':
        return externObject.crossAxisDirection;
      case 'viewportMainAxisExtent':
        return externObject.viewportMainAxisExtent;
      case 'cacheOrigin':
        return externObject.cacheOrigin;
      case 'remainingCacheExtent':
        return externObject.remainingCacheExtent;
      case 'axis':
        return externObject.axis;
      case 'normalizedGrowthDirection':
        return externObject.normalizedGrowthDirection;
      case 'isTight':
        return externObject.isTight;
      case 'isNormalized':
        return externObject.isNormalized;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'asBoxConstraints':
        return externObject.asBoxConstraints;
      case 'debugAssertIsValid':
        return externObject.debugAssertIsValid;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverGeometryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverGeometry':
        return ({scrollExtent = 0.0, paintExtent = 0.0, paintOrigin = 0.0, layoutExtent, maxPaintExtent = 0.0, maxScrollObstructionExtent = 0.0, hitTestExtent, visible, hasVisualOverflow = false, scrollOffsetCorrection, cacheExtent}) => SliverGeometryObjectBinding(SliverGeometry(scrollExtent : scrollExtent, paintExtent : paintExtent, paintOrigin : paintOrigin, layoutExtent : layoutExtent, maxPaintExtent : maxPaintExtent, maxScrollObstructionExtent : maxScrollObstructionExtent, hitTestExtent : hitTestExtent, visible : visible, hasVisualOverflow : hasVisualOverflow, scrollOffsetCorrection : scrollOffsetCorrection, cacheExtent : cacheExtent));
      case 'SliverGeometry.zero':
        return SliverGeometry.zero;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverGeometryObjectBinding extends HT_ExternObject<SliverGeometry> {
  SliverGeometryObjectBinding(SliverGeometry value) : super(value);

  @override
  final typeid = HT_TypeId('SliverGeometry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'scrollExtent':
        return externObject.scrollExtent;
      case 'paintOrigin':
        return externObject.paintOrigin;
      case 'paintExtent':
        return externObject.paintExtent;
      case 'layoutExtent':
        return externObject.layoutExtent;
      case 'maxPaintExtent':
        return externObject.maxPaintExtent;
      case 'maxScrollObstructionExtent':
        return externObject.maxScrollObstructionExtent;
      case 'hitTestExtent':
        return externObject.hitTestExtent;
      case 'visible':
        return externObject.visible;
      case 'hasVisualOverflow':
        return externObject.hasVisualOverflow;
      case 'scrollOffsetCorrection':
        return externObject.scrollOffsetCorrection;
      case 'cacheExtent':
        return externObject.cacheExtent;
      case 'debugAssertIsValid':
        return externObject.debugAssertIsValid;
      case 'toStringShort':
        return externObject.toStringShort;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverHitTestResultClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverHitTestResult':
        return () => SliverHitTestResultObjectBinding(SliverHitTestResult());
      case 'SliverHitTestResult.wrap':
        return (result) => SliverHitTestResultObjectBinding(SliverHitTestResult.wrap(result));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverHitTestResultObjectBinding extends HT_ExternObject<SliverHitTestResult> {
  SliverHitTestResultObjectBinding(SliverHitTestResult value) : super(value);

  @override
  final typeid = HT_TypeId('SliverHitTestResult');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'addWithAxisOffset':
        return externObject.addWithAxisOffset;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverHitTestEntryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverHitTestEntry':
        return (target, {mainAxisPosition, crossAxisPosition}) => SliverHitTestEntryObjectBinding(SliverHitTestEntry(target, mainAxisPosition : mainAxisPosition, crossAxisPosition : crossAxisPosition));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverHitTestEntryObjectBinding extends HT_ExternObject<SliverHitTestEntry> {
  SliverHitTestEntryObjectBinding(SliverHitTestEntry value) : super(value);

  @override
  final typeid = HT_TypeId('SliverHitTestEntry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'mainAxisPosition':
        return externObject.mainAxisPosition;
      case 'crossAxisPosition':
        return externObject.crossAxisPosition;
      case 'target':
        return externObject.target;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class SliverLogicalParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverLogicalParentData':
        return () => SliverLogicalParentDataObjectBinding(SliverLogicalParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverLogicalParentDataObjectBinding extends HT_ExternObject<SliverLogicalParentData> {
  SliverLogicalParentDataObjectBinding(SliverLogicalParentData value) : super(value);

  @override
  final typeid = HT_TypeId('SliverLogicalParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'layoutOffset':
        return externObject.layoutOffset;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'layoutOffset':
        externObject.layoutOffset = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverLogicalContainerParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverLogicalContainerParentData':
        return () => SliverLogicalContainerParentDataObjectBinding(SliverLogicalContainerParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverLogicalContainerParentDataObjectBinding extends HT_ExternObject<SliverLogicalContainerParentData> {
  SliverLogicalContainerParentDataObjectBinding(SliverLogicalContainerParentData value) : super(value);

  @override
  final typeid = HT_TypeId('SliverLogicalContainerParentData');


}

class SliverPhysicalParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverPhysicalParentData':
        return () => SliverPhysicalParentDataObjectBinding(SliverPhysicalParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverPhysicalParentDataObjectBinding extends HT_ExternObject<SliverPhysicalParentData> {
  SliverPhysicalParentDataObjectBinding(SliverPhysicalParentData value) : super(value);

  @override
  final typeid = HT_TypeId('SliverPhysicalParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'paintOffset':
        return externObject.paintOffset;
      case 'applyPaintTransform':
        return externObject.applyPaintTransform;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'paintOffset':
        externObject.paintOffset = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverPhysicalContainerParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SliverPhysicalContainerParentData':
        return () => SliverPhysicalContainerParentDataObjectBinding(SliverPhysicalContainerParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SliverPhysicalContainerParentDataObjectBinding extends HT_ExternObject<SliverPhysicalContainerParentData> {
  SliverPhysicalContainerParentDataObjectBinding(SliverPhysicalContainerParentData value) : super(value);

  @override
  final typeid = HT_TypeId('SliverPhysicalContainerParentData');


}

class RenderSliverToBoxAdapterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderSliverToBoxAdapter':
        return ({child}) => RenderSliverToBoxAdapterObjectBinding(RenderSliverToBoxAdapter(child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderSliverToBoxAdapterObjectBinding extends HT_ExternObject<RenderSliverToBoxAdapter> {
  RenderSliverToBoxAdapterObjectBinding(RenderSliverToBoxAdapter value) : super(value);

  @override
  final typeid = HT_TypeId('RenderSliverToBoxAdapter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'performLayout':
        return externObject.performLayout;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

