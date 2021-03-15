import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
const _kDefaultDiameterRatio = 1.07;
const _kSqueeze = 1.45;


class CupertinoPickerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoPicker':
        return ({key, diameterRatio = _kDefaultDiameterRatio, backgroundColor, offAxisFraction = 0.0, useMagnifier = false, magnification = 1.0, scrollController, squeeze = _kSqueeze, itemExtent, onSelectedItemChanged, children, selectionOverlay = const CupertinoPickerDefaultSelectionOverlay(), looping = false}) => CupertinoPickerObjectBinding(CupertinoPicker(key : key, diameterRatio : diameterRatio, backgroundColor : backgroundColor, offAxisFraction : offAxisFraction, useMagnifier : useMagnifier, magnification : magnification, scrollController : scrollController, squeeze : squeeze, itemExtent : itemExtent, onSelectedItemChanged : onSelectedItemChanged, children : children, selectionOverlay : selectionOverlay, looping : looping));
      case 'CupertinoPicker.builder':
        return ({key, diameterRatio = _kDefaultDiameterRatio, backgroundColor, offAxisFraction = 0.0, useMagnifier = false, magnification = 1.0, scrollController, squeeze = _kSqueeze, itemExtent, onSelectedItemChanged, itemBuilder, childCount, selectionOverlay = const CupertinoPickerDefaultSelectionOverlay()}) => CupertinoPickerObjectBinding(CupertinoPicker.builder(key : key, diameterRatio : diameterRatio, backgroundColor : backgroundColor, offAxisFraction : offAxisFraction, useMagnifier : useMagnifier, magnification : magnification, scrollController : scrollController, squeeze : squeeze, itemExtent : itemExtent, onSelectedItemChanged : onSelectedItemChanged, itemBuilder : itemBuilder, childCount : childCount, selectionOverlay : selectionOverlay));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoPickerObjectBinding extends HT_ExternObject<CupertinoPicker> {
  CupertinoPickerObjectBinding(CupertinoPicker value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoPicker');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'diameterRatio':
        return externObject.diameterRatio;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'offAxisFraction':
        return externObject.offAxisFraction;
      case 'useMagnifier':
        return externObject.useMagnifier;
      case 'magnification':
        return externObject.magnification;
      case 'scrollController':
        return externObject.scrollController;
      case 'itemExtent':
        return externObject.itemExtent;
      case 'squeeze':
        return externObject.squeeze;
      case 'onSelectedItemChanged':
        return externObject.onSelectedItemChanged;
      case 'childDelegate':
        return externObject.childDelegate;
      case 'selectionOverlay':
        return externObject.selectionOverlay;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class CupertinoPickerDefaultSelectionOverlayClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoPickerDefaultSelectionOverlay':
        return ({key, background = CupertinoColors.tertiarySystemFill, capLeftEdge = true, capRightEdge = true}) => CupertinoPickerDefaultSelectionOverlayObjectBinding(CupertinoPickerDefaultSelectionOverlay(key : key, background : background, capLeftEdge : capLeftEdge, capRightEdge : capRightEdge));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoPickerDefaultSelectionOverlayObjectBinding extends HT_ExternObject<CupertinoPickerDefaultSelectionOverlay> {
  CupertinoPickerDefaultSelectionOverlayObjectBinding(CupertinoPickerDefaultSelectionOverlay value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoPickerDefaultSelectionOverlay');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'capLeftEdge':
        return externObject.capLeftEdge;
      case 'capRightEdge':
        return externObject.capRightEdge;
      case 'background':
        return externObject.background;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

