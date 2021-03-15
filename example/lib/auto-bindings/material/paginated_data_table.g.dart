import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';


class PaginatedDataTableClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PaginatedDataTable':
        return ({key, header, actions, columns, sortColumnIndex, sortAscending = true, onSelectAll, dataRowHeight = kMinInteractiveDimension, headingRowHeight = 56.0, horizontalMargin = 24.0, columnSpacing = 56.0, showCheckboxColumn = true, initialFirstRowIndex = 0, onPageChanged, rowsPerPage = defaultRowsPerPage, availableRowsPerPage = const <int>[defaultRowsPerPage, defaultRowsPerPage * 2, defaultRowsPerPage * 5, defaultRowsPerPage * 10], onRowsPerPageChanged, dragStartBehavior = DragStartBehavior.start, source}) => PaginatedDataTableObjectBinding(PaginatedDataTable(key : key, header : header, actions : actions, columns : columns, sortColumnIndex : sortColumnIndex, sortAscending : sortAscending, onSelectAll : onSelectAll, dataRowHeight : dataRowHeight, headingRowHeight : headingRowHeight, horizontalMargin : horizontalMargin, columnSpacing : columnSpacing, showCheckboxColumn : showCheckboxColumn, initialFirstRowIndex : initialFirstRowIndex, onPageChanged : onPageChanged, rowsPerPage : rowsPerPage, availableRowsPerPage : availableRowsPerPage, onRowsPerPageChanged : onRowsPerPageChanged, dragStartBehavior : dragStartBehavior, source : source));
      case 'PaginatedDataTable.defaultRowsPerPage':
        return PaginatedDataTable.defaultRowsPerPage;
      default:
        throw HTErr_Undefined(id);
    }
  }
  static const defaultRowsPerPage = 10;
}

class PaginatedDataTableObjectBinding extends HT_ExternObject<PaginatedDataTable> {
  PaginatedDataTableObjectBinding(PaginatedDataTable value) : super(value);

  @override
  final typeid = HT_TypeId('PaginatedDataTable');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'header':
        return externObject.header;
      case 'actions':
        return externObject.actions;
      case 'columns':
        return externObject.columns;
      case 'sortColumnIndex':
        return externObject.sortColumnIndex;
      case 'sortAscending':
        return externObject.sortAscending;
      case 'onSelectAll':
        return externObject.onSelectAll;
      case 'dataRowHeight':
        return externObject.dataRowHeight;
      case 'headingRowHeight':
        return externObject.headingRowHeight;
      case 'horizontalMargin':
        return externObject.horizontalMargin;
      case 'columnSpacing':
        return externObject.columnSpacing;
      case 'showCheckboxColumn':
        return externObject.showCheckboxColumn;
      case 'initialFirstRowIndex':
        return externObject.initialFirstRowIndex;
      case 'onPageChanged':
        return externObject.onPageChanged;
      case 'rowsPerPage':
        return externObject.rowsPerPage;
      case 'availableRowsPerPage':
        return externObject.availableRowsPerPage;
      case 'onRowsPerPageChanged':
        return externObject.onRowsPerPageChanged;
      case 'source':
        return externObject.source;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PaginatedDataTableStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PaginatedDataTableState':
        return () => PaginatedDataTableStateObjectBinding(PaginatedDataTableState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PaginatedDataTableStateObjectBinding extends HT_ExternObject<PaginatedDataTableState> {
  PaginatedDataTableStateObjectBinding(PaginatedDataTableState value) : super(value);

  @override
  final typeid = HT_TypeId('PaginatedDataTableState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initState':
        return externObject.initState;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'dispose':
        return externObject.dispose;
      case 'pageTo':
        return externObject.pageTo;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

