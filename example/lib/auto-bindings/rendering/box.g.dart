import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:math'as math;
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';


class BoxConstraintsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BoxConstraints':
        return ({minWidth = 0.0, maxWidth = double.infinity, minHeight = 0.0, maxHeight = double.infinity}) => BoxConstraintsObjectBinding(BoxConstraints(minWidth : minWidth, maxWidth : maxWidth, minHeight : minHeight, maxHeight : maxHeight));
      case 'BoxConstraints.tight':
        return (size) => BoxConstraintsObjectBinding(BoxConstraints.tight(size));
      case 'BoxConstraints.tightFor':
        return ({width, height}) => BoxConstraintsObjectBinding(BoxConstraints.tightFor(width : width, height : height));
      case 'BoxConstraints.tightForFinite':
        return ({width = double.infinity, height = double.infinity}) => BoxConstraintsObjectBinding(BoxConstraints.tightForFinite(width : width, height : height));
      case 'BoxConstraints.loose':
        return (size) => BoxConstraintsObjectBinding(BoxConstraints.loose(size));
      case 'BoxConstraints.expand':
        return ({width, height}) => BoxConstraintsObjectBinding(BoxConstraints.expand(width : width, height : height));
      case 'lerp':
        return (a, b, t) => BoxConstraints.lerp(a, b, t);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BoxConstraintsObjectBinding extends HT_ExternObject<BoxConstraints> {
  BoxConstraintsObjectBinding(BoxConstraints value) : super(value);

  @override
  final typeid = HT_TypeId('BoxConstraints');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'minWidth':
        return externObject.minWidth;
      case 'maxWidth':
        return externObject.maxWidth;
      case 'minHeight':
        return externObject.minHeight;
      case 'maxHeight':
        return externObject.maxHeight;
      case 'flipped':
        return externObject.flipped;
      case 'biggest':
        return externObject.biggest;
      case 'smallest':
        return externObject.smallest;
      case 'hasTightWidth':
        return externObject.hasTightWidth;
      case 'hasTightHeight':
        return externObject.hasTightHeight;
      case 'isTight':
        return externObject.isTight;
      case 'hasBoundedWidth':
        return externObject.hasBoundedWidth;
      case 'hasBoundedHeight':
        return externObject.hasBoundedHeight;
      case 'hasInfiniteWidth':
        return externObject.hasInfiniteWidth;
      case 'hasInfiniteHeight':
        return externObject.hasInfiniteHeight;
      case 'isNormalized':
        return externObject.isNormalized;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'deflate':
        return externObject.deflate;
      case 'loosen':
        return externObject.loosen;
      case 'enforce':
        return externObject.enforce;
      case 'tighten':
        return externObject.tighten;
      case 'widthConstraints':
        return externObject.widthConstraints;
      case 'heightConstraints':
        return externObject.heightConstraints;
      case 'constrainWidth':
        return externObject.constrainWidth;
      case 'constrainHeight':
        return externObject.constrainHeight;
      case 'constrain':
        return externObject.constrain;
      case 'constrainDimensions':
        return externObject.constrainDimensions;
      case 'constrainSizeAndAttemptToPreserveAspectRatio':
        return externObject.constrainSizeAndAttemptToPreserveAspectRatio;
      case 'isSatisfiedBy':
        return externObject.isSatisfiedBy;
      case 'debugAssertIsValid':
        return externObject.debugAssertIsValid;
      case 'normalize':
        return externObject.normalize;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BoxHitTestResultClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BoxHitTestResult':
        return () => BoxHitTestResultObjectBinding(BoxHitTestResult());
      case 'BoxHitTestResult.wrap':
        return (result) => BoxHitTestResultObjectBinding(BoxHitTestResult.wrap(result));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BoxHitTestResultObjectBinding extends HT_ExternObject<BoxHitTestResult> {
  BoxHitTestResultObjectBinding(BoxHitTestResult value) : super(value);

  @override
  final typeid = HT_TypeId('BoxHitTestResult');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'addWithPaintTransform':
        return externObject.addWithPaintTransform;
      case 'addWithPaintOffset':
        return externObject.addWithPaintOffset;
      case 'addWithRawTransform':
        return externObject.addWithRawTransform;
      case 'addWithOutOfBandPosition':
        return externObject.addWithOutOfBandPosition;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BoxHitTestEntryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BoxHitTestEntry':
        return (target, localPosition) => BoxHitTestEntryObjectBinding(BoxHitTestEntry(target, localPosition));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BoxHitTestEntryObjectBinding extends HT_ExternObject<BoxHitTestEntry> {
  BoxHitTestEntryObjectBinding(BoxHitTestEntry value) : super(value);

  @override
  final typeid = HT_TypeId('BoxHitTestEntry');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'localPosition':
        return externObject.localPosition;
      case 'target':
        return externObject.target;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BoxParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BoxParentData':
        return () => BoxParentDataObjectBinding(BoxParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BoxParentDataObjectBinding extends HT_ExternObject<BoxParentData> {
  BoxParentDataObjectBinding(BoxParentData value) : super(value);

  @override
  final typeid = HT_TypeId('BoxParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'offset':
        return externObject.offset;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'offset':
        externObject.offset = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

