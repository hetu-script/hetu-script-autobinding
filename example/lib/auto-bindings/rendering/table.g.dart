import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/rendering.dart';
import 'dart:collection';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';

class TableCellVerticalAlignmentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'top':
        return TableCellVerticalAlignment.top;
      case 'middle':
        return TableCellVerticalAlignment.middle;
      case 'bottom':
        return TableCellVerticalAlignment.bottom;
      case 'baseline':
        return TableCellVerticalAlignment.baseline;
      case 'fill':
        return TableCellVerticalAlignment.fill;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TableCellParentDataClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TableCellParentData':
        return () => TableCellParentDataObjectBinding(TableCellParentData());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TableCellParentDataObjectBinding extends HT_ExternObject<TableCellParentData> {
  TableCellParentDataObjectBinding(TableCellParentData value) : super(value);

  @override
  final typeid = HT_TypeId('TableCellParentData');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'verticalAlignment':
        return externObject.verticalAlignment;
      case 'x':
        return externObject.x;
      case 'y':
        return externObject.y;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'verticalAlignment':
        externObject.verticalAlignment = value;
        break;
      case 'x':
        externObject.x = value;
        break;
      case 'y':
        externObject.y = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IntrinsicColumnWidthClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IntrinsicColumnWidth':
        return ({flex}) => IntrinsicColumnWidthObjectBinding(IntrinsicColumnWidth(flex : flex));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IntrinsicColumnWidthObjectBinding extends HT_ExternObject<IntrinsicColumnWidth> {
  IntrinsicColumnWidthObjectBinding(IntrinsicColumnWidth value) : super(value);

  @override
  final typeid = HT_TypeId('IntrinsicColumnWidth');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'minIntrinsicWidth':
        return externObject.minIntrinsicWidth;
      case 'maxIntrinsicWidth':
        return externObject.maxIntrinsicWidth;
      case 'flex':
        return externObject.flex;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FixedColumnWidthClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FixedColumnWidth':
        return (value) => FixedColumnWidthObjectBinding(FixedColumnWidth(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FixedColumnWidthObjectBinding extends HT_ExternObject<FixedColumnWidth> {
  FixedColumnWidthObjectBinding(FixedColumnWidth value) : super(value);

  @override
  final typeid = HT_TypeId('FixedColumnWidth');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'minIntrinsicWidth':
        return externObject.minIntrinsicWidth;
      case 'maxIntrinsicWidth':
        return externObject.maxIntrinsicWidth;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FractionColumnWidthClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FractionColumnWidth':
        return (value) => FractionColumnWidthObjectBinding(FractionColumnWidth(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FractionColumnWidthObjectBinding extends HT_ExternObject<FractionColumnWidth> {
  FractionColumnWidthObjectBinding(FractionColumnWidth value) : super(value);

  @override
  final typeid = HT_TypeId('FractionColumnWidth');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'minIntrinsicWidth':
        return externObject.minIntrinsicWidth;
      case 'maxIntrinsicWidth':
        return externObject.maxIntrinsicWidth;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FlexColumnWidthClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlexColumnWidth':
        return ([value = 1.0]) => FlexColumnWidthObjectBinding(FlexColumnWidth(value));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlexColumnWidthObjectBinding extends HT_ExternObject<FlexColumnWidth> {
  FlexColumnWidthObjectBinding(FlexColumnWidth value) : super(value);

  @override
  final typeid = HT_TypeId('FlexColumnWidth');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'minIntrinsicWidth':
        return externObject.minIntrinsicWidth;
      case 'maxIntrinsicWidth':
        return externObject.maxIntrinsicWidth;
      case 'flex':
        return externObject.flex;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MaxColumnWidthClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MaxColumnWidth':
        return (a, b) => MaxColumnWidthObjectBinding(MaxColumnWidth(a, b));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MaxColumnWidthObjectBinding extends HT_ExternObject<MaxColumnWidth> {
  MaxColumnWidthObjectBinding(MaxColumnWidth value) : super(value);

  @override
  final typeid = HT_TypeId('MaxColumnWidth');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'a':
        return externObject.a;
      case 'b':
        return externObject.b;
      case 'minIntrinsicWidth':
        return externObject.minIntrinsicWidth;
      case 'maxIntrinsicWidth':
        return externObject.maxIntrinsicWidth;
      case 'flex':
        return externObject.flex;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MinColumnWidthClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MinColumnWidth':
        return (a, b) => MinColumnWidthObjectBinding(MinColumnWidth(a, b));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MinColumnWidthObjectBinding extends HT_ExternObject<MinColumnWidth> {
  MinColumnWidthObjectBinding(MinColumnWidth value) : super(value);

  @override
  final typeid = HT_TypeId('MinColumnWidth');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'a':
        return externObject.a;
      case 'b':
        return externObject.b;
      case 'minIntrinsicWidth':
        return externObject.minIntrinsicWidth;
      case 'maxIntrinsicWidth':
        return externObject.maxIntrinsicWidth;
      case 'flex':
        return externObject.flex;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RenderTableClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RenderTable':
        return ({columns, rows, columnWidths, defaultColumnWidth = const FlexColumnWidth(1.0), textDirection, border, rowDecorations, configuration = ImageConfiguration.empty, defaultVerticalAlignment = TableCellVerticalAlignment.top, textBaseline, children}) => RenderTableObjectBinding(RenderTable(columns : columns, rows : rows, columnWidths : columnWidths, defaultColumnWidth : defaultColumnWidth, textDirection : textDirection, border : border, rowDecorations : rowDecorations, configuration : configuration, defaultVerticalAlignment : defaultVerticalAlignment, textBaseline : textBaseline, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RenderTableObjectBinding extends HT_ExternObject<RenderTable> {
  RenderTableObjectBinding(RenderTable value) : super(value);

  @override
  final typeid = HT_TypeId('RenderTable');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'columns':
        return externObject.columns;
      case 'rows':
        return externObject.rows;
      case 'columnWidths':
        return externObject.columnWidths;
      case 'defaultColumnWidth':
        return externObject.defaultColumnWidth;
      case 'textDirection':
        return externObject.textDirection;
      case 'border':
        return externObject.border;
      case 'rowDecorations':
        return externObject.rowDecorations;
      case 'configuration':
        return externObject.configuration;
      case 'defaultVerticalAlignment':
        return externObject.defaultVerticalAlignment;
      case 'textBaseline':
        return externObject.textBaseline;
      case 'setColumnWidth':
        return externObject.setColumnWidth;
      case 'setupParentData':
        return externObject.setupParentData;
      case 'setFlatChildren':
        return externObject.setFlatChildren;
      case 'setChildren':
        return externObject.setChildren;
      case 'addRow':
        return externObject.addRow;
      case 'setChild':
        return externObject.setChild;
      case 'attach':
        return externObject.attach;
      case 'detach':
        return externObject.detach;
      case 'visitChildren':
        return externObject.visitChildren;
      case 'computeMinIntrinsicWidth':
        return externObject.computeMinIntrinsicWidth;
      case 'computeMaxIntrinsicWidth':
        return externObject.computeMaxIntrinsicWidth;
      case 'computeMinIntrinsicHeight':
        return externObject.computeMinIntrinsicHeight;
      case 'computeMaxIntrinsicHeight':
        return externObject.computeMaxIntrinsicHeight;
      case 'computeDistanceToActualBaseline':
        return externObject.computeDistanceToActualBaseline;
      case 'column':
        return externObject.column;
      case 'row':
        return externObject.row;
      case 'getRowBox':
        return externObject.getRowBox;
      case 'computeDryLayout':
        return externObject.computeDryLayout;
      case 'performLayout':
        return externObject.performLayout;
      case 'hitTestChildren':
        return externObject.hitTestChildren;
      case 'paint':
        return externObject.paint;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      case 'debugDescribeChildren':
        return externObject.debugDescribeChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'columns':
        externObject.columns = value;
        break;
      case 'rows':
        externObject.rows = value;
        break;
      case 'columnWidths':
        externObject.columnWidths = value;
        break;
      case 'defaultColumnWidth':
        externObject.defaultColumnWidth = value;
        break;
      case 'textDirection':
        externObject.textDirection = value;
        break;
      case 'border':
        externObject.border = value;
        break;
      case 'rowDecorations':
        externObject.rowDecorations = value;
        break;
      case 'configuration':
        externObject.configuration = value;
        break;
      case 'defaultVerticalAlignment':
        externObject.defaultVerticalAlignment = value;
        break;
      case 'textBaseline':
        externObject.textBaseline = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

