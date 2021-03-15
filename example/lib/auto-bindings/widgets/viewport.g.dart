import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';


class ViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Viewport':
        return ({key, axisDirection = AxisDirection.down, crossAxisDirection, anchor = 0.0, offset, center, cacheExtent, cacheExtentStyle = CacheExtentStyle.pixel, clipBehavior = Clip.hardEdge, slivers = const <Widget>[]}) => ViewportObjectBinding(Viewport(key : key, axisDirection : axisDirection, crossAxisDirection : crossAxisDirection, anchor : anchor, offset : offset, center : center, cacheExtent : cacheExtent, cacheExtentStyle : cacheExtentStyle, clipBehavior : clipBehavior, slivers : slivers));
      case 'getDefaultCrossAxisDirection':
        return (context, axisDirection) => Viewport.getDefaultCrossAxisDirection(context, axisDirection);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ViewportObjectBinding extends HT_ExternObject<Viewport> {
  ViewportObjectBinding(Viewport value) : super(value);

  @override
  final typeid = HT_TypeId('Viewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'axisDirection':
        return externObject.axisDirection;
      case 'crossAxisDirection':
        return externObject.crossAxisDirection;
      case 'anchor':
        return externObject.anchor;
      case 'offset':
        return externObject.offset;
      case 'center':
        return externObject.center;
      case 'cacheExtent':
        return externObject.cacheExtent;
      case 'cacheExtentStyle':
        return externObject.cacheExtentStyle;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      case 'createElement':
        return externObject.createElement;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ShrinkWrappingViewportClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ShrinkWrappingViewport':
        return ({key, axisDirection = AxisDirection.down, crossAxisDirection, offset, clipBehavior = Clip.hardEdge, slivers = const <Widget>[]}) => ShrinkWrappingViewportObjectBinding(ShrinkWrappingViewport(key : key, axisDirection : axisDirection, crossAxisDirection : crossAxisDirection, offset : offset, clipBehavior : clipBehavior, slivers : slivers));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ShrinkWrappingViewportObjectBinding extends HT_ExternObject<ShrinkWrappingViewport> {
  ShrinkWrappingViewportObjectBinding(ShrinkWrappingViewport value) : super(value);

  @override
  final typeid = HT_TypeId('ShrinkWrappingViewport');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'axisDirection':
        return externObject.axisDirection;
      case 'crossAxisDirection':
        return externObject.crossAxisDirection;
      case 'offset':
        return externObject.offset;
      case 'clipBehavior':
        return externObject.clipBehavior;
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

