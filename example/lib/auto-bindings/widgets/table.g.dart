import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';


class TableRowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TableRow':
        return ({key, decoration, children}) => TableRowObjectBinding(TableRow(key : key, decoration : decoration, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TableRowObjectBinding extends HT_ExternObject<TableRow> {
  TableRowObjectBinding(TableRow value) : super(value);

  @override
  final typeid = HT_TypeId('TableRow');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'key':
        return externObject.key;
      case 'decoration':
        return externObject.decoration;
      case 'children':
        return externObject.children;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TableClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Table':
        return ({key, children = const <TableRow>[], columnWidths, defaultColumnWidth = const FlexColumnWidth(1.0), textDirection, border, defaultVerticalAlignment = TableCellVerticalAlignment.top, textBaseline}) => TableObjectBinding(Table(key : key, children : children, columnWidths : columnWidths, defaultColumnWidth : defaultColumnWidth, textDirection : textDirection, border : border, defaultVerticalAlignment : defaultVerticalAlignment, textBaseline : textBaseline));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TableObjectBinding extends HT_ExternObject<Table> {
  TableObjectBinding(Table value) : super(value);

  @override
  final typeid = HT_TypeId('Table');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'children':
        return externObject.children;
      case 'columnWidths':
        return externObject.columnWidths;
      case 'defaultColumnWidth':
        return externObject.defaultColumnWidth;
      case 'textDirection':
        return externObject.textDirection;
      case 'border':
        return externObject.border;
      case 'defaultVerticalAlignment':
        return externObject.defaultVerticalAlignment;
      case 'textBaseline':
        return externObject.textBaseline;
      case 'createElement':
        return externObject.createElement;
      case 'createRenderObject':
        return externObject.createRenderObject;
      case 'updateRenderObject':
        return externObject.updateRenderObject;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TableCellClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TableCell':
        return ({key, verticalAlignment, child}) => TableCellObjectBinding(TableCell(key : key, verticalAlignment : verticalAlignment, child : child));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TableCellObjectBinding extends HT_ExternObject<TableCell> {
  TableCellObjectBinding(TableCell value) : super(value);

  @override
  final typeid = HT_TypeId('TableCell');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'verticalAlignment':
        return externObject.verticalAlignment;
      case 'debugTypicalAncestorWidgetClass':
        return externObject.debugTypicalAncestorWidgetClass;
      case 'applyParentData':
        return externObject.applyParentData;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

