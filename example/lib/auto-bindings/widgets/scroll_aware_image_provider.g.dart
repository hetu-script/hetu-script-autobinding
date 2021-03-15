import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';


class ScrollAwareImageProviderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ScrollAwareImageProvider':
        return ({context, imageProvider}) => ScrollAwareImageProviderObjectBinding(ScrollAwareImageProvider<Object>(context : context, imageProvider : imageProvider));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ScrollAwareImageProviderObjectBinding extends HT_ExternObject<ScrollAwareImageProvider> {
  ScrollAwareImageProviderObjectBinding(ScrollAwareImageProvider value) : super(value);

  @override
  final typeid = HT_TypeId('ScrollAwareImageProvider');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'context':
        return externObject.context;
      case 'imageProvider':
        return externObject.imageProvider;
      case 'resolveStreamForKey':
        return externObject.resolveStreamForKey;
      case 'load':
        return externObject.load;
      case 'obtainKey':
        return externObject.obtainKey;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

