import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class DataColumnClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DataColumn':
        return ({label, tooltip, numeric = false, onSort}) => DataColumnObjectBinding(DataColumn(label : label, tooltip : tooltip, numeric : numeric, onSort : onSort));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DataColumnObjectBinding extends HT_ExternObject<DataColumn> {
  DataColumnObjectBinding(DataColumn value) : super(value);

  @override
  final typeid = HT_TypeId('DataColumn');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'label':
        return externObject.label;
      case 'tooltip':
        return externObject.tooltip;
      case 'numeric':
        return externObject.numeric;
      case 'onSort':
        return externObject.onSort;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DataRowClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DataRow':
        return ({key, selected = false, onSelectChanged, color, cells}) => DataRowObjectBinding(DataRow(key : key, selected : selected, onSelectChanged : onSelectChanged, color : color, cells : cells));
      case 'DataRow.byIndex':
        return ({index, selected = false, onSelectChanged, color, cells}) => DataRowObjectBinding(DataRow.byIndex(index : index, selected : selected, onSelectChanged : onSelectChanged, color : color, cells : cells));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DataRowObjectBinding extends HT_ExternObject<DataRow> {
  DataRowObjectBinding(DataRow value) : super(value);

  @override
  final typeid = HT_TypeId('DataRow');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'key':
        return externObject.key;
      case 'onSelectChanged':
        return externObject.onSelectChanged;
      case 'selected':
        return externObject.selected;
      case 'cells':
        return externObject.cells;
      case 'color':
        return externObject.color;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DataCellClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DataCell':
        return (child, {placeholder = false, showEditIcon = false, onTap}) => DataCellObjectBinding(DataCell(child, placeholder : placeholder, showEditIcon : showEditIcon, onTap : onTap));
      case 'DataCell.empty':
        return DataCell.empty;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DataCellObjectBinding extends HT_ExternObject<DataCell> {
  DataCellObjectBinding(DataCell value) : super(value);

  @override
  final typeid = HT_TypeId('DataCell');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'placeholder':
        return externObject.placeholder;
      case 'showEditIcon':
        return externObject.showEditIcon;
      case 'onTap':
        return externObject.onTap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DataTableClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DataTable':
        return ({key, columns, sortColumnIndex, sortAscending = true, onSelectAll, decoration, dataRowColor, dataRowHeight, dataTextStyle, headingRowColor, headingRowHeight, headingTextStyle, horizontalMargin, columnSpacing, showCheckboxColumn = true, showBottomBorder = false, dividerThickness, rows}) => DataTableObjectBinding(DataTable(key : key, columns : columns, sortColumnIndex : sortColumnIndex, sortAscending : sortAscending, onSelectAll : onSelectAll, decoration : decoration, dataRowColor : dataRowColor, dataRowHeight : dataRowHeight, dataTextStyle : dataTextStyle, headingRowColor : headingRowColor, headingRowHeight : headingRowHeight, headingTextStyle : headingTextStyle, horizontalMargin : horizontalMargin, columnSpacing : columnSpacing, showCheckboxColumn : showCheckboxColumn, showBottomBorder : showBottomBorder, dividerThickness : dividerThickness, rows : rows));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DataTableObjectBinding extends HT_ExternObject<DataTable> {
  DataTableObjectBinding(DataTable value) : super(value);

  @override
  final typeid = HT_TypeId('DataTable');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'columns':
        return externObject.columns;
      case 'sortColumnIndex':
        return externObject.sortColumnIndex;
      case 'sortAscending':
        return externObject.sortAscending;
      case 'onSelectAll':
        return externObject.onSelectAll;
      case 'decoration':
        return externObject.decoration;
      case 'dataRowColor':
        return externObject.dataRowColor;
      case 'dataRowHeight':
        return externObject.dataRowHeight;
      case 'dataTextStyle':
        return externObject.dataTextStyle;
      case 'headingRowColor':
        return externObject.headingRowColor;
      case 'headingRowHeight':
        return externObject.headingRowHeight;
      case 'headingTextStyle':
        return externObject.headingTextStyle;
      case 'horizontalMargin':
        return externObject.horizontalMargin;
      case 'columnSpacing':
        return externObject.columnSpacing;
      case 'showCheckboxColumn':
        return externObject.showCheckboxColumn;
      case 'rows':
        return externObject.rows;
      case 'dividerThickness':
        return externObject.dividerThickness;
      case 'showBottomBorder':
        return externObject.showBottomBorder;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TableRowInkWellClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TableRowInkWell':
        return ({key, child, onTap, onDoubleTap, onLongPress, onHighlightChanged, overlayColor}) => TableRowInkWellObjectBinding(TableRowInkWell(key : key, child : child, onTap : onTap, onDoubleTap : onDoubleTap, onLongPress : onLongPress, onHighlightChanged : onHighlightChanged, overlayColor : overlayColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TableRowInkWellObjectBinding extends HT_ExternObject<TableRowInkWell> {
  TableRowInkWellObjectBinding(TableRowInkWell value) : super(value);

  @override
  final typeid = HT_TypeId('TableRowInkWell');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getRectCallback':
        return externObject.getRectCallback;
      case 'debugCheckContext':
        return externObject.debugCheckContext;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

