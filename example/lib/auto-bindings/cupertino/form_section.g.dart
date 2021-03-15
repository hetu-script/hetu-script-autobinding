import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
const _kDefaultInsetGroupedRowsMargin = EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0);


class CupertinoFormSectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CupertinoFormSection':
        return ({key, children, header, footer, margin = EdgeInsets.zero, backgroundColor = CupertinoColors.systemGroupedBackground, decoration, clipBehavior = Clip.none}) => CupertinoFormSectionObjectBinding(CupertinoFormSection(key : key, children : children, header : header, footer : footer, margin : margin, backgroundColor : backgroundColor, decoration : decoration, clipBehavior : clipBehavior));
      case 'CupertinoFormSection.insetGrouped':
        return ({key, children, header, footer, margin = _kDefaultInsetGroupedRowsMargin, backgroundColor = CupertinoColors.systemGroupedBackground, decoration, clipBehavior = Clip.none}) => CupertinoFormSectionObjectBinding(CupertinoFormSection.insetGrouped(key : key, children : children, header : header, footer : footer, margin : margin, backgroundColor : backgroundColor, decoration : decoration, clipBehavior : clipBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CupertinoFormSectionObjectBinding extends HT_ExternObject<CupertinoFormSection> {
  CupertinoFormSectionObjectBinding(CupertinoFormSection value) : super(value);

  @override
  final typeid = HT_TypeId('CupertinoFormSection');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'header':
        return externObject.header;
      case 'footer':
        return externObject.footer;
      case 'margin':
        return externObject.margin;
      case 'children':
        return externObject.children;
      case 'decoration':
        return externObject.decoration;
      case 'backgroundColor':
        return externObject.backgroundColor;
      case 'clipBehavior':
        return externObject.clipBehavior;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

