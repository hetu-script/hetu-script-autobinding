import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

Set<String> exportedClasses = {
  'Widget',
  'Column',
  'Row',
  'Container',
  'Text',
  'Card',
  'Icon',
  'Scaffold',
  'Checkbox',
  'ColorPreferredSizeWidget',
  'DrawerCallback',
  'Color',
  'Colors',
  'bool',
  'DragStartBehavior',
  'double',
  'String',
  'Clip',
  'ValueChanged<bool>',
  'MaterialStateProperty<Color>',
  'MaterialTapTargetSize',
  'VisualDensity',
  'FocusNode',
  'TextStyle',
  'StrutStyle',
  'TextAlign',
  'TextDirection',
  'Locale',
  'TextOverflow',
  'int',
  'TextWidthBasis',
  'ui.TextHeightBehavior',
  'BoxConstraints',
  'Matrix4',
  'IconData',
  'FontWeight',
  'FontStyle',
  'TextBaseline',
  'Paint',
  'ui.Shadow',
  'ui.FontFeature',
  'TextDecoration',
  'TextDecorationStyle',
  'Size',
  'EdgeInsets',
  'EdgeInsetsDirectional',
  'SystemMouseCursor',
  'TextSpan',
  'Alignment',
  'FractionalOffset',
  'AlignmentDirectional',
  'FlutterLogoDecoration',
  'BoxDecoration',
  'ShapeDecoration',
  'UnderlineTabIndicator',
  'DoubleTapGestureRecognizer',
  'MultiTapGestureRecognizer',
  'Border',
  'BorderDirectional',
  'BorderRadius',
  'BorderRadiusDirectional',
  'LinearGradient',
  'RadialGradient',
  'SweepGradient',
  'GradientRotation',
  'FadeTransition',
  'SliverFadeTransition',
  'Opacity',
  'ShaderMask',
  'BackdropFilter',
  'CustomPaint',
  'ClipRect',
  'ClipRRect',
  'ClipOval',
  'ClipPath',
  'PhysicalModel',
  'PhysicalShape',
  'Transform',
  'CompositedTransformTarget',
  'CompositedTransformFollower',
  'FittedBox',
  'FractionalTranslation',
  'RotatedBox',
  'Padding',
  'Align',
  'Center',
  'CustomSingleChildLayout',
  'SizedBox',
  'ConstrainedBox',
  'UnconstrainedBox',
  'FractionallySizedBox',
  'LimitedBox',
  'OverflowBox',
  'SizedOverflowBox',
  'Offstage',
  'AspectRatio',
  'IntrinsicWidth',
  'IntrinsicHeight',
  'Baseline',
  'SliverToBoxAdapter',
  'SliverPadding',
  'Listener',
  'RepaintBoundary',
  'IgnorePointer',
  'AbsorbPointer',
  'MetaData',
  'Semantics',
  'MergeSemantics',
  'BlockSemantics',
  'ExcludeSemantics',
  'IndexedSemantics',
  'ColoredBox',
  'SliverOverlapAbsorber',
  'SliverOverlapInjector',
  'DecoratedBox',
  'ColorFiltered',
  'AnnotatedRegion',
  'ImageFiltered',
  'SizeChangedLayoutNotifier',
  'SliverOpacity',
  'SliverIgnorePointer',
  'SliverOffstage',
  'AnimatedSize',
  'CupertinoTabView',
  'CupertinoTextField',
  'CupertinoSegmentedControl',
  'CupertinoSlidingSegmentedControl',
  'CupertinoSearchTextField',
  'CupertinoButton',
  'CupertinoTabScaffold',
  'CupertinoDatePicker',
  'CupertinoTimerPicker',
  'CupertinoSliverRefreshControl',
  'CupertinoPicker',
  'CupertinoContextMenu',
  'CupertinoActivityIndicator',
  'CupertinoSlider',
  'CupertinoPageScaffold',
  'CupertinoContextMenuAction',
  'CupertinoSwitch',
  'CupertinoApp',
  'CupertinoNavigationBar',
  'CupertinoSliverNavigationBar',
  'MonthPicker',
  'Material',
  'ScaffoldMessenger',
  'TextField',
  'LicensePage',
  'RefreshIndicator',
  'InputDatePickerFormField',
  'SelectableText',
  'Ink',
  'SnackBarAction',
  'SnackBar',
  'InputDecorator',
  'ReorderableListView',
  'RawMaterialButton',
  'DefaultTabController',
  'NavigationRail',
  'Radio',
  'Stepper',
  'TabBar',
  'TabBarView',
  'RangeSlider',
  'PopupMenuButton',
  'ExpandIcon',
  'AppBar',
  'SliverAppBar',
  'BottomAppBar',
  'UserAccountsDrawerHeader',
  'CalendarDatePicker',
  'YearPicker',
  'RawChip',
  'PaginatedDataTable',
  'Tooltip',
  'DropdownButton',
  'Slider',
  'ExpansionTile',
  'BottomSheet',
  'MergeableMaterial',
  'DrawerController',
  'FlexibleSpaceBar',
  'Switch',
  'Scrollbar',
  'BottomNavigationBar',
  'MaterialApp',
  'ExpansionPanelList',
  'AnimatedCrossFade',
  'Router',
  'MouseRegion',
  'StatefulBuilder',
  'RawGestureDetector',
  'FutureBuilder',
  'ActionListener',
  'Actions',
  'FocusableActionDetector',
  'Form',
  'FormField',
  'CupertinoTextFormFieldRow',
  'DropdownButtonFormField',
  'TextFormField',
  'Image',
  'NestedScrollView',
  'ReorderableList',
  'SliverReorderableList',
  'Navigator',
  'ValueListenableBuilder',
  'DraggableScrollableSheet',
  'EditableText',
  'Scrollable',
  'FocusTraversalGroup',
  'AnimatedSwitcher',
  'DualTransitionBuilder',
  'PageView',
  'Shortcuts',
  'Draggable',
  'LongPressDraggable',
  'DragTarget',
  'GlowingOverscrollIndicator',
  'Hero',
  'WidgetInspector',
  'AutomaticKeepAlive',
  'SemanticsDebugger',
  'TextSelectionGestureDetector',
  'RestorationScope',
  'RootRestorationScope',
  'AnimatedList',
  'SliverAnimatedList',
  'Focus',
  'FocusScope',
  'InteractiveViewer',
  'AutofillGroup',
  'ListWheelScrollView',
  'Dismissible',
  'WillPopScope',
  'RawScrollbar',
  'CupertinoScrollbar',
  'AndroidView',
  'UiKitView',
  'PlatformViewLink',
  'WidgetsApp',
  'RawAutocomplete',
  'Overlay',
  'RawKeyboardListener',
  'Localizations',
  'CupertinoFormRow',
  'CupertinoTextSelectionToolbar',
  'CupertinoTextSelectionToolbarButton',
  'CupertinoActionSheet',
  'CupertinoActionSheetAction',
  'CupertinoAlertDialog',
  'CupertinoPopupSurface',
  'CupertinoDialogAction',
  'CupertinoTabBar',
  'CupertinoPickerDefaultSelectionOverlay',
  'CupertinoPageTransition',
  'CupertinoFullscreenDialogTransition',
  'CupertinoFormSection',
  'CupertinoNavigationBarBackButton',
  'CupertinoTheme',
  'DayPicker',
  'DrawerHeader',
  'MaterialButton',
  'RaisedButton',
  'OutlineButton',
  'FlatButton',
  'GridTile',
  'BackButtonIcon',
  'BackButton',
  'CloseButton',
  'TextSelectionToolbarTextButton',
  'AboutListTile',
  'AboutDialog',
  'TextSelectionToolbar',
  'RadioListTile',
  'GridTileBar',
  'CircleAvatar',
  'ButtonBar',
  'DataTable',
  'Dialog',
  'AlertDialog',
  'SimpleDialogOption',
  'SimpleDialog',
  'InkResponse',
  'TableRowInkWell',
  'InkWell',
  'CheckboxListTile',
  'Tab',
  'TabPageSelectorIndicator',
  'TabPageSelector',
  'FloatingActionButton',
  'MaterialBanner',
  'Chip',
  'InputChip',
  'ChoiceChip',
  'FilterChip',
  'ActionChip',
  'FlutterLogo',
  'SwitchListTile',
  'ListTile',
  'Divider',
  'VerticalDivider',
  'Drawer',
  'AnimatedIcon',
  'Autocomplete',
  'Theme',
  'IconButton',
  'ToggleButtons',
  'SingleChildScrollView',
  'GridPaper',
  'SliverPersistentHeader',
  'PageStorage',
  'PositionedDirectional',
  'KeyedSubtree',
  'Builder',
  'GestureDetector',
  'NavigationToolbar',
  'ReorderableDragStartListener',
  'ReorderableDelayedDragStartListener',
  'PreferredSize',
  'DraggableScrollableActuator',
  'Placeholder',
  'ImageIcon',
  'OrientationBuilder',
  'Title',
  'Visibility',
  'SliverVisibility',
  'Banner',
  'CheckedModeBanner',
  'NotificationListener',
  'HeroMode',
  'TickerMode',
  'FadeInImage',
  'ExcludeFocus',
  'ModalBarrier',
  'SafeArea',
  'SliverSafeArea',
  'HtmlElementView',
  'Spacer',
  'SliverFillViewport',
  'SliverFillRemaining',
  'FilteringTextInputFormatter',
  'BlacklistingTextInputFormatter',
  'WhitelistingTextInputFormatter',
  'LengthLimitingTextInputFormatter',
  'CupertinoTextSelectionControls',
  'MaterialTextSelectionControls',
  'SawTooth',
  'Interval',
  'Threshold',
  'Cubic',
  'CatmullRomCurve',
  'FlippedCurve',
  'ElasticInCurve',
  'ElasticOutCurve',
  'ElasticInOutCurve',
  'PlatformRouteInformationProvider',
  'RootBackButtonDispatcher',
  'ChildBackButtonDispatcher',
  'ResizeImage',
  'FileImage',
  'MemoryImage',
  'ScrollAwareImageProvider',
  'CircularNotchedRectangle',
  'AutomaticNotchedShape',
  'ContinuousRectangleBorder',
  'CircleBorder',
  'BeveledRectangleBorder',
  'StadiumBorder',
  'RoundedRectangleBorder',
  'MaterialSlice',
  'MaterialGap',
  'LabeledGlobalKey',
  'GlobalObjectKey',
  'BannerPainter',
  'TextSelectionToolbarLayoutDelegate',
  'DesktopTextSelectionToolbarLayoutDelegate',
  'OrdinalSortKey',
  'NetworkAssetBundle',
  'WidgetOrderTraversalPolicy',
  'ReadingOrderTraversalPolicy',
  'OrderedTraversalPolicy',
  'SliverChildBuilderDelegate',
  'SliverChildListDelegate',
  'ValueKey',
  'PageStorageKey',
  'UniqueKey',
  'ObjectKey',
  'ThemeData',
  'ButtonThemeData',
  'ToggleButtonsThemeData',
  'Brightness',
  'MaterialColor',
};

Set<String> ignoredEnums = {
  'RenderAnimatedSizeState',
};

// Set<String> exportedClasses = {'TextSelectionToolbar'};

Set<String> extendsSet = {
  'SingleChildRenderObjectWidget',
  'StatefulWidget',
  'StatelessWidget'
};

class ExtendClassConstructor {
  final String className;
  final String ctorName;
  final List<String> positionArguments;
  final List<String> namedArguments;
  final List<String> namedInitializers;
  final Map<String, String> argumentTypes;
  final Set<String> varInitializers;

  ExtendClassConstructor(
      this.className,
      this.ctorName,
      this.namedArguments,
      this.namedInitializers,
      this.positionArguments,
      this.argumentTypes,
      this.varInitializers);
}

class ExtendClass {
  final String className;
  ExtendClass superclass;
  final List<ExtendClass> subclasses = [];
  final Map<String, String> varTypes = {};

  ExtendClass(this.className);
}

class ExportEnum {
  final String enumName;
  final List<String> enumValues;

  ExportEnum(this.enumName, this.enumValues);
}

class ExportStaticConstVars {
  final String varKey;
  final List<String> varValues;

  ExportStaticConstVars(this.varKey, this.varValues);
}

class ConstVarDefine {
  final String varName;
  final String varExpr;

  ConstVarDefine(this.varName, this.varExpr);
}

class MyVisitor extends RecursiveAstVisitor {
  Map<String, ExtendClassConstructor> exported = {};
  Set<String> allSuperClasses = {};
  var classMap = <String, ExtendClass>{};
  var enumLists = <ExportEnum>[];
  var varsLists = <ExportStaticConstVars>[];
  var usedIdentifiers = <String>{};
  var shouldAdded = <String>{};
  var abstractClass = <String>{};
  var constVars = <String>{};
  var constVarMap = <String, ConstVarDefine>{};
  var methods = <String>{};
  var methodMap = <String, String>{};
  var privateClasses = <String>{};
  var privateClassMap = <String, String>{};
  var staticVars = <String>{};
  var staticVarMap = <String, String>{};

  List<ExtendClassConstructor> _ctorTurn = [];
  Set<String> _constVarTurn = {};
  Set<String> _methodTurn = {};
  Set<String> _staticVarTurn = {};
  Set<String> _privateClassTurn = {};

  bool findUsefulVar(String test) {
    var d = _constVarTurn.firstWhere((element) {
      // print('find $element in $test');
      var regExp = RegExp(
        r'\b' + element + r'\b',
        caseSensitive: true,
        multiLine: false,
      );
      return regExp.hasMatch(test) && !constVars.contains(element);
      // if (regExp.hasMatch(test)) {
      //   return element;
      // }
      // var s = test.contains(element) && !constVars.contains(element);
      // return s;
    }, orElse: () => null);
    // print("find end");
    if (d != null) {
      constVars.add(d);
      print('useful const var: ${constVarMap[d].varExpr}');
      findUsefulVar(constVarMap[d].varExpr);
      return true;
    }
    return false;
  }

  String findUsefulStaticVar(String test) {
    var d = _staticVarTurn.firstWhere((element) {
      // print('find $element in $test');
      var regExp = RegExp(
        r'\b' + element + r'\b',
        caseSensitive: true,
        multiLine: false,
      );
      return regExp.hasMatch(test) && !staticVars.contains(element);
      // if (regExp.hasMatch(test)) {
      //   return element;
      // }
      // var s = test.contains(element) && !constVars.contains(element);
      // return s;
    }, orElse: () => null);
    // print("find end");
    if (d != null) {
      if (test.contains('.')) {
        //有.也是不行的
        return null;
      }
      print('useful static var: ${staticVarMap[d]}');
      return d;
    }
    return null;
  }

  bool findUsefulMethod(String test) {
    var d = _methodTurn.firstWhere((element) {
      var regExp = RegExp(
        r'\b' + element + r'\b',
        caseSensitive: true,
        multiLine: false,
      );
      return regExp.hasMatch(test) &&
          (test.indexOf('=') < test.indexOf(element)) &&
          !methods.contains(element);
    }, orElse: () => null);
    if (d != null) {
      methods.add(d);
      print('match method: ${methodMap[d]}');
      // findUsefulMethod(methodMap[d])
      // findUsefulPrivateClass(methodMap[d]);
      return true;
    }
    return false;
  }

  bool findUsefulPrivateClass(String test) {
    // print('useful private class: $test');
    var d = _privateClassTurn.firstWhere((element) {
      // print('find $element');
      var regExp = RegExp(
        r'\b' + element + r'\b',
        caseSensitive: true,
        multiLine: false,
      );
      return regExp.hasMatch(test) && !privateClasses.contains(element);
    }, orElse: () => null);
    if (d != null) {
      privateClasses.add(d);
      print('useful private class: ${d}');
      findUsefulPrivateClass(privateClassMap[d]);
      return true;
    }
    return false;
  }

  void turnOver(String path) {
    // print("turn over: $path");
    if (_constVarTurn.length == 0) {
      return;
    }
    // print("const: $constVarTurn");

    for (var ctor in _ctorTurn) {
      print('\tConstructor: ${ctor.ctorName}');
      for (var i = ctor.namedInitializers.length - 1; i >= 0; i--) {
        var element = ctor.namedInitializers[i];
        // print('element: $element');
        var found = 0;
        found |= findUsefulVar(element) ? 1 : 0;
        found |= findUsefulMethod(element) ? 2 : 0;
        found |= findUsefulPrivateClass(element) ? 4 : 0;

        if (found > 0) {
          //有不合格的参数，去掉
          String getBit(int bits) {
            if (bits & 1 != 0) {
              return 'var';
            } else if (bits & 2 != 0) {
              return 'method';
            } else {
              return 'private class';
            }
          }

          print('\t\tParam Not Exported(${getBit(found)}): $element');

          ctor.namedInitializers.removeAt(i);
          ctor.namedArguments.removeAt(i);
          continue;
        }

        if (element.contains('=') && !element.contains('.')) {
          var rep = findUsefulStaticVar(element);
          //看是否有静态方法需要替换
          if (rep != null) {
            print(
                "${ctor.ctorName} replace:  $element, $rep with ${staticVarMap[rep]}");
            ctor.namedInitializers[i] =
                element.replaceAll(rep, staticVarMap[rep]);
          }
        }
      }

      print('\t\tParam Exported: ${ctor.namedInitializers.length}');
    }
    _constVarTurn.clear();
    _methodTurn.clear();
    _ctorTurn.clear();
    _privateClassTurn.clear();
  }

  @override
  dynamic visitClassDeclaration(ClassDeclaration node) {
    var className = node.name.name;

    if (className.startsWith('_')) {
      // print("class:\n$node}");
      privateClassMap[className] = node.toString();
      _privateClassTurn.add(className);
      return;
    }

    ExtendClass getClass(String name) {
      var c = classMap[name];
      if (c == null) {
        c = ExtendClass(name);
        classMap[name] = c;
      }
      return c;
    }

    var extendClassName = node.extendsClause?.superclass?.name?.toString();
    var extclass = getClass(className);
    classMap[className] = extclass;

    if (node.isAbstract) {
      abstractClass.add(className);
      return;
    }
    if (extendClassName != null) {
      var c = getClass(extendClassName);
      if (c.subclasses
              .indexWhere((element) => element.className == className) ==
          -1) {
        c.subclasses.add(extclass);
        extclass.superclass = c;
      }
    }
    // print('class $className ${extendClassName ?? ""}');

    if (extendClassName != null) allSuperClasses.add(extendClassName);

    //测试Container
    if (!exportedClasses.contains(className)) {
      return;
    }

    //静态方法，构造函数
    var usefulVarArgs = <String, String>{};
    var definedFields = <String, String>{};
    for (var m in node.members) {
      var namedArgs = <String>[];
      var positionArgs = <String>[];
      var initializers = <String>[];
      var argTypes = <String, String>{};
      var varInitializers = <String>{};

      //添加变量到类里
      void addParam(String varName, {String vartype, bool onlyDefine = false}) {
        vartype = vartype?.replaceAll('<T>', '');
        if (onlyDefine) {
          //这种情况一定有类型
          definedFields[varName] = vartype;
          //检查是否有用到的变量了
          if (usefulVarArgs.containsKey(varName)) {
            if (usefulVarArgs[varName] == null) {
              usefulVarArgs[varName] = vartype.replaceAll('?', '');
              // print("useful arg: $varName ${usefulVarArgs[varName]}");
            }
          }
        } else {
          //vartype可能为null
          var vt = vartype;
          if (vartype == null) {
            //检查define
            if (definedFields.containsKey(varName)) {
              vartype = definedFields[varName];
            }
          }
          usefulVarArgs[varName] = vartype?.replaceAll('?', '');
          // print('useful arg: $varName ${usefulVarArgs[varName]}');
        }
      }

      if (m is ConstructorDeclaration) {
        //contructor
        // print('\t\t constructor: ${m.name}');
        var ctorName;

        if (m.name == null) {
          //默认
          ctorName = className;
        } else if (m.name.name.startsWith('_')) {
          //私有构造函数不导出
          continue;
        } else {
          //命名
          ctorName = className + '_' + m.name.name;
        }
        // print('\t\t\t\t params: ${m.parameters}');
        for (var param in m.parameters.parameters) {
          if (param.metadata
              .any((element) => element.toString().contains('Deprecated'))) {
            // print(
            //     'Ignored Deprecated param: ${param.identifier.name} $className');
            continue;
          }
          // print('param[${param.identifier.name}]: \n\t\t${param.childEntities.join('\n')}');

          if (param.isPositional) {
            // print("pos: ${param.identifier.name}");
            positionArgs.add(param.identifier.name);
            if (param.childEntities.first.toString().contains('this')) {
              var varName = param.childEntities.last.toString();
              var varType;
              if (param.childEntities.length == 1) {
                varName = param.childEntities.first
                    .toString()
                    .replaceAll('this.', '');
              }
              addParam(varName, vartype: varType, onlyDefine: false);
            } else {
              var varType = param.childEntities.first.toString();
              var varName = param.childEntities.last.toString();

              addParam(varName, vartype: varType, onlyDefine: false);
            }
          } else {
            var testStr =
                param.childEntities.last.toString().replaceAll('const ', '');
            var testSplits = testStr.split(' ');
            var testResult = testSplits.firstWhere(
                (element) => element.startsWith('_'),
                orElse: () => null);
            if (testResult != null) {
              //用的私有变量，暂时不加这个参数了。 需要等以下issue解决：
              //https://github.com/dart-lang/language/issues/216
              continue;
            }

            namedArgs.add(param.identifier.name);
            if (param.childEntities
                .any((element) => element.toString() == '=')) {
              //有初始化赋值
              var list = param.childEntities.toList();
              var index =
                  list.indexWhere((element) => element.toString() == '=');
              var expr = list.last.toString().replaceAll('ui.', '');
              // print('[${param.identifier.name}]intializer expr: $expr');

              var parts = List.from(param.childEntities)
                  .map((e) => e.toString())
                  .toList();
              parts[0] = param.identifier.name;
              parts.removeLast();
              parts.add(expr);
              initializers.add(parts.join(' '));

              //解析变量名和类型
              if (!param.childEntities.first.toString().contains(' ')) {
                //无类型声明
                var varName = param.childEntities.first
                    .toString()
                    .replaceFirst('this.', '');
                var varType;
                addParam(varName, vartype: varType, onlyDefine: false);
              } else {
                //有类型声明
                var childStr = param.childEntities.first.toString();
                var index = childStr.lastIndexOf(' ');
                var varType = childStr.substring(0, index);
                var varName =
                    childStr.substring(index + 1).replaceAll('this.', '');

                addParam(varName, vartype: varType, onlyDefine: false);
              }
            } else {
              //无初始化赋值
              initializers.add(param.identifier.name);

              //解析变量名和类型
              if (param.childEntities.first.toString().contains(' ')) {
                //对应 InlineSpan this.textSpan 的情况
                var childStr = param.childEntities.first.toString();
                var index = childStr.lastIndexOf(' ');
                var varType = childStr.substring(0, index);
                var varName =
                    childStr.substring(index + 1).replaceAll('this.', '');
                addParam(varName, vartype: varType, onlyDefine: false);
              } else if (param.childEntities.length == 1) {
                if (param.childEntities.first.toString().contains('this.')) {
                  //无类型声明
                  var varName = param.childEntities.first
                      .toString()
                      .replaceFirst('this.', '');
                  var varType;
                  addParam(varName, vartype: varType, onlyDefine: false);
                } else {
                  //有类型声明
                  var parts = param.childEntities.first.toString().split(' ');
                  var varName = parts[1];
                  var varType = parts[0];

                  addParam(varName, vartype: varType, onlyDefine: false);
                }
              } else {
                assert(false, 'incomplete logic!');
              }
            }
            //
            // if (param.identifier.name.contains('this.')) {
            //   //this？
            //   var varName = param.identifier.name.replaceFirst('this.', '');
            //   var varType;
            //   addParam(varName, vartype: varType, onlyDefine: false);
            // } else if (param.identifier.name.contains(' ')) {
            //   var parts = param.identifier.name.split(' ');
            //   var varName = parts[1];
            //   var varType = parts[0];
            //
            //   addParam(varName, vartype: varType, onlyDefine: false);
            // } else {
            //   //only var name
            //   var varName = param.identifier.name;
            //   var varType;
            //
            //   addParam(varName, vartype: varType, onlyDefine: false);
            // }
          }
        }

        var ec = ExtendClassConstructor(className, ctorName, namedArgs,
            initializers, positionArgs, argTypes, varInitializers);
        exported[ctorName] = ec;

        _ctorTurn.add(ec);
      } else if (m is FieldDeclaration) {
        // print('type : ${m.fields.type}');
        var variable = m.fields.variables.first;
        if (m.fields.isConst && m.isStatic
            /* && m.fields.type.toString() == className*/
            ) {
          var value = m.fields.variables.first.name.name;
          if (value.startsWith('_')) {
            continue;
          }
          // print('output const static var: ${value}');

          _staticVarTurn.add(value);
          staticVarMap[value] = '$className.${value}';
          var escv = varsLists.singleWhere(
              (element) => element.varKey == className,
              orElse: () => null);
          if (escv == null) {
            escv = ExportStaticConstVars(className, [value]);
            varsLists.add(escv);
          } else {
            escv.varValues.add(value);
          }
        }

        addParam(variable.name.name,
            vartype: m.fields.type.toString(), onlyDefine: true);
        // for (var f in m.fields.variables) {
        //   print('var: ${f.name.name}');
        // }

      } else if (m is MethodDeclaration) {
        // print('method: ${m.name.name}');
        if (m.isStatic) {
          _methodTurn.add(m.name.name);
          methodMap[m.name.name] = m.toString();
          // print('method[${m.name.name}] = ${m}');
        }
      }
    }

    extclass.varTypes.addAll(Map.from(usefulVarArgs));

    for (var varName in usefulVarArgs.keys) {
      var vt = usefulVarArgs[varName];
      if (vt != null && vt.contains('List')) {
        var mod = vt.substring(5, vt.length - 1);
        usefulVarArgs[varName] = mod;
      }
    }

    usedIdentifiers.addAll(usefulVarArgs.values);
    usedIdentifiers.remove(null);

    return super.visitClassDeclaration(node);
  }

  @override
  dynamic visitEnumDeclaration(EnumDeclaration node) {
    var enumName = node.name.name;
    if (enumName.startsWith('_')) {
      return;
    }
    // if (!exportedClasses.contains(enumName)) {
    //   return;
    // }
    // if (enumName != 'Clip') {
    //   return;
    // }
    // print("enum: $enumName");
    // for (var e in node.constants) {
    //   print('constant: ${e.name}');
    // }
    if (ignoredEnums.contains(enumName)) {
      return;
    }
    enumLists.add(
        ExportEnum(enumName, node.constants.map((e) => e.name.name).toList()));
    return super.visitEnumDeclaration(node);
  }

  @override
  dynamic visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    // print("top:\n${node.variables.variables.map((e) => e.toString()).join('\n')}");
    node.variables.variables.forEach((element) {
      if (element.isConst) {
        // print('const var: ${element.toString()}');
        var name = element.name.name;
        _constVarTurn.add(name);
        constVarMap[name] = ConstVarDefine(name, element.toString());
      }
    });
    return super.visitTopLevelVariableDeclaration(node);
  }
}
