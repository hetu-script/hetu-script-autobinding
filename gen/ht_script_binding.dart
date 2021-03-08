import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';
import 'package:hetu_script/hetu_script.dart';
import 'package:hetu_script_binding/hetu_script_binding.dart';

var wrapperExternalFunctions = <String, HT_External>{
	'SawTooth': WidgetWrapper.buildSawTooth,
	'Interval': WidgetWrapper.buildInterval,
	'Threshold': WidgetWrapper.buildThreshold,
	'Cubic': WidgetWrapper.buildCubic,
	'CatmullRomCurve': WidgetWrapper.buildCatmullRomCurve,
	'CatmullRomCurve_precompute': WidgetWrapper.buildCatmullRomCurve_precompute,
	'FlippedCurve': WidgetWrapper.buildFlippedCurve,
	'ElasticInCurve': WidgetWrapper.buildElasticInCurve,
	'ElasticOutCurve': WidgetWrapper.buildElasticOutCurve,
	'ElasticInOutCurve': WidgetWrapper.buildElasticInOutCurve,
	'ValueKey': WidgetWrapper.buildValueKey,
	'OrdinalSortKey': WidgetWrapper.buildOrdinalSortKey,
	'Border': WidgetWrapper.buildBorder,
	'Border_fromBorderSide': WidgetWrapper.buildBorder_fromBorderSide,
	'Border_symmetric': WidgetWrapper.buildBorder_symmetric,
	'Border_all': WidgetWrapper.buildBorder_all,
	'BorderDirectional': WidgetWrapper.buildBorderDirectional,
	'ResizeImage': WidgetWrapper.buildResizeImage,
	'FileImage': WidgetWrapper.buildFileImage,
	'MemoryImage': WidgetWrapper.buildMemoryImage,
	'BorderRadius_all': WidgetWrapper.buildBorderRadius_all,
	'BorderRadius_circular': WidgetWrapper.buildBorderRadius_circular,
	'BorderRadius_vertical': WidgetWrapper.buildBorderRadius_vertical,
	'BorderRadius_horizontal': WidgetWrapper.buildBorderRadius_horizontal,
	'BorderRadius_only': WidgetWrapper.buildBorderRadius_only,
	'BorderRadiusDirectional_all': WidgetWrapper.buildBorderRadiusDirectional_all,
	'BorderRadiusDirectional_circular': WidgetWrapper.buildBorderRadiusDirectional_circular,
	'BorderRadiusDirectional_vertical': WidgetWrapper.buildBorderRadiusDirectional_vertical,
	'BorderRadiusDirectional_horizontal': WidgetWrapper.buildBorderRadiusDirectional_horizontal,
	'BorderRadiusDirectional_only': WidgetWrapper.buildBorderRadiusDirectional_only,
	'ContinuousRectangleBorder': WidgetWrapper.buildContinuousRectangleBorder,
	'TextStyle': WidgetWrapper.buildTextStyle,
	'CircleBorder': WidgetWrapper.buildCircleBorder,
	'BeveledRectangleBorder': WidgetWrapper.buildBeveledRectangleBorder,
	'GradientRotation': WidgetWrapper.buildGradientRotation,
	'LinearGradient': WidgetWrapper.buildLinearGradient,
	'RadialGradient': WidgetWrapper.buildRadialGradient,
	'SweepGradient': WidgetWrapper.buildSweepGradient,
	'Alignment': WidgetWrapper.buildAlignment,
	'AlignmentDirectional': WidgetWrapper.buildAlignmentDirectional,
	'TextSpan': WidgetWrapper.buildTextSpan,
	'FlutterLogoDecoration': WidgetWrapper.buildFlutterLogoDecoration,
	'BoxDecoration': WidgetWrapper.buildBoxDecoration,
	'FractionalOffset': WidgetWrapper.buildFractionalOffset,
	'FractionalOffset_fromOffsetAndSize': WidgetWrapper.buildFractionalOffset_fromOffsetAndSize,
	'FractionalOffset_fromOffsetAndRect': WidgetWrapper.buildFractionalOffset_fromOffsetAndRect,
	'CircularNotchedRectangle': WidgetWrapper.buildCircularNotchedRectangle,
	'AutomaticNotchedShape': WidgetWrapper.buildAutomaticNotchedShape,
	'StadiumBorder': WidgetWrapper.buildStadiumBorder,
	'RoundedRectangleBorder': WidgetWrapper.buildRoundedRectangleBorder,
	'ShapeDecoration': WidgetWrapper.buildShapeDecoration,
	'ShapeDecoration_fromBoxDecoration': WidgetWrapper.buildShapeDecoration_fromBoxDecoration,
	'EdgeInsets_fromLTRB': WidgetWrapper.buildEdgeInsets_fromLTRB,
	'EdgeInsets_all': WidgetWrapper.buildEdgeInsets_all,
	'EdgeInsets_only': WidgetWrapper.buildEdgeInsets_only,
	'EdgeInsets_symmetric': WidgetWrapper.buildEdgeInsets_symmetric,
	'EdgeInsets_fromWindowPadding': WidgetWrapper.buildEdgeInsets_fromWindowPadding,
	'EdgeInsetsDirectional_fromSTEB': WidgetWrapper.buildEdgeInsetsDirectional_fromSTEB,
	'EdgeInsetsDirectional_only': WidgetWrapper.buildEdgeInsetsDirectional_only,
	'StrutStyle': WidgetWrapper.buildStrutStyle,
	'StrutStyle_fromTextStyle': WidgetWrapper.buildStrutStyle_fromTextStyle,
	'DoubleTapGestureRecognizer': WidgetWrapper.buildDoubleTapGestureRecognizer,
	'MultiTapGestureRecognizer': WidgetWrapper.buildMultiTapGestureRecognizer,
	'BoxConstraints': WidgetWrapper.buildBoxConstraints,
	'BoxConstraints_tight': WidgetWrapper.buildBoxConstraints_tight,
	'BoxConstraints_tightFor': WidgetWrapper.buildBoxConstraints_tightFor,
	'BoxConstraints_tightForFinite': WidgetWrapper.buildBoxConstraints_tightForFinite,
	'BoxConstraints_loose': WidgetWrapper.buildBoxConstraints_loose,
	'BoxConstraints_expand': WidgetWrapper.buildBoxConstraints_expand,
	'CupertinoTabView': WidgetWrapper.buildCupertinoTabView,
	'CupertinoTextField': WidgetWrapper.buildCupertinoTextField,
	'CupertinoTextField_borderless': WidgetWrapper.buildCupertinoTextField_borderless,
	'CupertinoFormRow': WidgetWrapper.buildCupertinoFormRow,
	'CupertinoTextSelectionToolbar': WidgetWrapper.buildCupertinoTextSelectionToolbar,
	'CupertinoTextSelectionToolbarButton': WidgetWrapper.buildCupertinoTextSelectionToolbarButton,
	'CupertinoTextSelectionToolbarButton_text': WidgetWrapper.buildCupertinoTextSelectionToolbarButton_text,
	'CupertinoSegmentedControl': WidgetWrapper.buildCupertinoSegmentedControl,
	'CupertinoActionSheet': WidgetWrapper.buildCupertinoActionSheet,
	'CupertinoActionSheetAction': WidgetWrapper.buildCupertinoActionSheetAction,
	'CupertinoSlidingSegmentedControl': WidgetWrapper.buildCupertinoSlidingSegmentedControl,
	'CupertinoSearchTextField': WidgetWrapper.buildCupertinoSearchTextField,
	'CupertinoButton': WidgetWrapper.buildCupertinoButton,
	'CupertinoButton_filled': WidgetWrapper.buildCupertinoButton_filled,
	'CupertinoTabScaffold': WidgetWrapper.buildCupertinoTabScaffold,
	'CupertinoAlertDialog': WidgetWrapper.buildCupertinoAlertDialog,
	'CupertinoPopupSurface': WidgetWrapper.buildCupertinoPopupSurface,
	'CupertinoDialogAction': WidgetWrapper.buildCupertinoDialogAction,
	'CupertinoTabBar': WidgetWrapper.buildCupertinoTabBar,
	'CupertinoDatePicker': WidgetWrapper.buildCupertinoDatePicker,
	'CupertinoTimerPicker': WidgetWrapper.buildCupertinoTimerPicker,
	'CupertinoSliverRefreshControl': WidgetWrapper.buildCupertinoSliverRefreshControl,
	'CupertinoPicker': WidgetWrapper.buildCupertinoPicker,
	'CupertinoPicker_builder': WidgetWrapper.buildCupertinoPicker_builder,
	'CupertinoPickerDefaultSelectionOverlay': WidgetWrapper.buildCupertinoPickerDefaultSelectionOverlay,
	'CupertinoContextMenu': WidgetWrapper.buildCupertinoContextMenu,
	'CupertinoPageTransition': WidgetWrapper.buildCupertinoPageTransition,
	'CupertinoFullscreenDialogTransition': WidgetWrapper.buildCupertinoFullscreenDialogTransition,
	'CupertinoActivityIndicator': WidgetWrapper.buildCupertinoActivityIndicator,
	'CupertinoActivityIndicator_partiallyRevealed': WidgetWrapper.buildCupertinoActivityIndicator_partiallyRevealed,
	'CupertinoSlider': WidgetWrapper.buildCupertinoSlider,
	'CupertinoPageScaffold': WidgetWrapper.buildCupertinoPageScaffold,
	'CupertinoFormSection': WidgetWrapper.buildCupertinoFormSection,
	'CupertinoFormSection_insetGrouped': WidgetWrapper.buildCupertinoFormSection_insetGrouped,
	'CupertinoTextFormFieldRow': WidgetWrapper.buildCupertinoTextFormFieldRow,
	'CupertinoContextMenuAction': WidgetWrapper.buildCupertinoContextMenuAction,
	'CupertinoSwitch': WidgetWrapper.buildCupertinoSwitch,
	'CupertinoScrollbar': WidgetWrapper.buildCupertinoScrollbar,
	'CupertinoApp': WidgetWrapper.buildCupertinoApp,
	'CupertinoApp_router': WidgetWrapper.buildCupertinoApp_router,
	'CupertinoNavigationBar': WidgetWrapper.buildCupertinoNavigationBar,
	'CupertinoSliverNavigationBar': WidgetWrapper.buildCupertinoSliverNavigationBar,
	'CupertinoNavigationBarBackButton': WidgetWrapper.buildCupertinoNavigationBarBackButton,
	'CupertinoTheme': WidgetWrapper.buildCupertinoTheme,
	'DayPicker': WidgetWrapper.buildDayPicker,
	'MonthPicker': WidgetWrapper.buildMonthPicker,
	'DrawerHeader': WidgetWrapper.buildDrawerHeader,
	'MaterialButton': WidgetWrapper.buildMaterialButton,
	'GridTile': WidgetWrapper.buildGridTile,
	'Material': WidgetWrapper.buildMaterial,
	'ScaffoldMessenger': WidgetWrapper.buildScaffoldMessenger,
	'Scaffold': WidgetWrapper.buildScaffold,
	'ToggleButtonsThemeData': WidgetWrapper.buildToggleButtonsThemeData,
	'BackButtonIcon': WidgetWrapper.buildBackButtonIcon,
	'BackButton': WidgetWrapper.buildBackButton,
	'CloseButton': WidgetWrapper.buildCloseButton,
	'TextSelectionToolbarTextButton': WidgetWrapper.buildTextSelectionToolbarTextButton,
	'TextField': WidgetWrapper.buildTextField,
	'AboutListTile': WidgetWrapper.buildAboutListTile,
	'AboutDialog': WidgetWrapper.buildAboutDialog,
	'LicensePage': WidgetWrapper.buildLicensePage,
	'TextSelectionToolbar': WidgetWrapper.buildTextSelectionToolbar,
	'RadioListTile': WidgetWrapper.buildRadioListTile,
	'RefreshIndicator': WidgetWrapper.buildRefreshIndicator,
	'InputDatePickerFormField': WidgetWrapper.buildInputDatePickerFormField,
	'GridTileBar': WidgetWrapper.buildGridTileBar,
	'SelectableText': WidgetWrapper.buildSelectableText,
	'SelectableText_rich': WidgetWrapper.buildSelectableText_rich,
	'CircleAvatar': WidgetWrapper.buildCircleAvatar,
	'Ink': WidgetWrapper.buildInk,
	'Ink_image': WidgetWrapper.buildInk_image,
	'ButtonBar': WidgetWrapper.buildButtonBar,
	'MaterialColor': WidgetWrapper.buildMaterialColor,
	'SnackBarAction': WidgetWrapper.buildSnackBarAction,
	'SnackBar': WidgetWrapper.buildSnackBar,
	'InputDecorator': WidgetWrapper.buildInputDecorator,
	'ReorderableListView': WidgetWrapper.buildReorderableListView,
	'ReorderableListView_builder': WidgetWrapper.buildReorderableListView_builder,
	'Card': WidgetWrapper.buildCard,
	'RawMaterialButton': WidgetWrapper.buildRawMaterialButton,
	'DataTable': WidgetWrapper.buildDataTable,
	'TableRowInkWell': WidgetWrapper.buildTableRowInkWell,
	'DefaultTabController': WidgetWrapper.buildDefaultTabController,
	'NavigationRail': WidgetWrapper.buildNavigationRail,
	'RaisedButton': WidgetWrapper.buildRaisedButton,
	'RaisedButton_icon': WidgetWrapper.buildRaisedButton_icon,
	'Dialog': WidgetWrapper.buildDialog,
	'AlertDialog': WidgetWrapper.buildAlertDialog,
	'SimpleDialogOption': WidgetWrapper.buildSimpleDialogOption,
	'SimpleDialog': WidgetWrapper.buildSimpleDialog,
	'InkResponse': WidgetWrapper.buildInkResponse,
	'InkWell': WidgetWrapper.buildInkWell,
	'Checkbox': WidgetWrapper.buildCheckbox,
	'Radio': WidgetWrapper.buildRadio,
	'Stepper': WidgetWrapper.buildStepper,
	'CheckboxListTile': WidgetWrapper.buildCheckboxListTile,
	'Tab': WidgetWrapper.buildTab,
	'TabBar': WidgetWrapper.buildTabBar,
	'TabBarView': WidgetWrapper.buildTabBarView,
	'TabPageSelectorIndicator': WidgetWrapper.buildTabPageSelectorIndicator,
	'TabPageSelector': WidgetWrapper.buildTabPageSelector,
	'FloatingActionButton': WidgetWrapper.buildFloatingActionButton,
	'FloatingActionButton_extended': WidgetWrapper.buildFloatingActionButton_extended,
	'RangeSlider': WidgetWrapper.buildRangeSlider,
	'PopupMenuButton': WidgetWrapper.buildPopupMenuButton,
	'ExpandIcon': WidgetWrapper.buildExpandIcon,
	'AppBar': WidgetWrapper.buildAppBar,
	'SliverAppBar': WidgetWrapper.buildSliverAppBar,
	'BottomAppBar': WidgetWrapper.buildBottomAppBar,
	'UserAccountsDrawerHeader': WidgetWrapper.buildUserAccountsDrawerHeader,
	'MaterialBanner': WidgetWrapper.buildMaterialBanner,
	'CalendarDatePicker': WidgetWrapper.buildCalendarDatePicker,
	'YearPicker': WidgetWrapper.buildYearPicker,
	'Chip': WidgetWrapper.buildChip,
	'InputChip': WidgetWrapper.buildInputChip,
	'ChoiceChip': WidgetWrapper.buildChoiceChip,
	'FilterChip': WidgetWrapper.buildFilterChip,
	'ActionChip': WidgetWrapper.buildActionChip,
	'RawChip': WidgetWrapper.buildRawChip,
	'PaginatedDataTable': WidgetWrapper.buildPaginatedDataTable,
	'FlutterLogo': WidgetWrapper.buildFlutterLogo,
	'Tooltip': WidgetWrapper.buildTooltip,
	'SwitchListTile': WidgetWrapper.buildSwitchListTile,
	'SwitchListTile_adaptive': WidgetWrapper.buildSwitchListTile_adaptive,
	'DropdownButton': WidgetWrapper.buildDropdownButton,
	'DropdownButtonFormField': WidgetWrapper.buildDropdownButtonFormField,
	'TextFormField': WidgetWrapper.buildTextFormField,
	'Slider': WidgetWrapper.buildSlider,
	'Slider_adaptive': WidgetWrapper.buildSlider_adaptive,
	'UnderlineTabIndicator': WidgetWrapper.buildUnderlineTabIndicator,
	'ButtonThemeData': WidgetWrapper.buildButtonThemeData,
	'ListTile': WidgetWrapper.buildListTile,
	'ExpansionTile': WidgetWrapper.buildExpansionTile,
	'BottomSheet': WidgetWrapper.buildBottomSheet,
	'Divider': WidgetWrapper.buildDivider,
	'VerticalDivider': WidgetWrapper.buildVerticalDivider,
	'MaterialSlice': WidgetWrapper.buildMaterialSlice,
	'MaterialGap': WidgetWrapper.buildMaterialGap,
	'MergeableMaterial': WidgetWrapper.buildMergeableMaterial,
	'Drawer': WidgetWrapper.buildDrawer,
	'DrawerController': WidgetWrapper.buildDrawerController,
	'AnimatedIcon': WidgetWrapper.buildAnimatedIcon,
	'ThemeData': WidgetWrapper.buildThemeData,
	'ThemeData_raw': WidgetWrapper.buildThemeData_raw,
	'ThemeData_from': WidgetWrapper.buildThemeData_from,
	'ThemeData_light': WidgetWrapper.buildThemeData_light,
	'ThemeData_dark': WidgetWrapper.buildThemeData_dark,
	'ThemeData_fallback': WidgetWrapper.buildThemeData_fallback,
	'VisualDensity': WidgetWrapper.buildVisualDensity,
	'FlexibleSpaceBar': WidgetWrapper.buildFlexibleSpaceBar,
	'Switch': WidgetWrapper.buildSwitch,
	'Switch_adaptive': WidgetWrapper.buildSwitch_adaptive,
	'Scrollbar': WidgetWrapper.buildScrollbar,
	'BottomNavigationBar': WidgetWrapper.buildBottomNavigationBar,
	'MaterialApp': WidgetWrapper.buildMaterialApp,
	'MaterialApp_router': WidgetWrapper.buildMaterialApp_router,
	'Autocomplete': WidgetWrapper.buildAutocomplete,
	'ExpansionPanelList': WidgetWrapper.buildExpansionPanelList,
	'ExpansionPanelList_radio': WidgetWrapper.buildExpansionPanelList_radio,
	'Theme': WidgetWrapper.buildTheme,
	'IconButton': WidgetWrapper.buildIconButton,
	'OutlineButton': WidgetWrapper.buildOutlineButton,
	'OutlineButton_icon': WidgetWrapper.buildOutlineButton_icon,
	'ToggleButtons': WidgetWrapper.buildToggleButtons,
	'FlatButton': WidgetWrapper.buildFlatButton,
	'FlatButton_icon': WidgetWrapper.buildFlatButton_icon,
	'NetworkAssetBundle': WidgetWrapper.buildNetworkAssetBundle,
	'FilteringTextInputFormatter': WidgetWrapper.buildFilteringTextInputFormatter,
	'FilteringTextInputFormatter_allow': WidgetWrapper.buildFilteringTextInputFormatter_allow,
	'FilteringTextInputFormatter_deny': WidgetWrapper.buildFilteringTextInputFormatter_deny,
	'BlacklistingTextInputFormatter': WidgetWrapper.buildBlacklistingTextInputFormatter,
	'WhitelistingTextInputFormatter': WidgetWrapper.buildWhitelistingTextInputFormatter,
	'LengthLimitingTextInputFormatter': WidgetWrapper.buildLengthLimitingTextInputFormatter,
	'SingleChildScrollView': WidgetWrapper.buildSingleChildScrollView,
	'AnimatedCrossFade': WidgetWrapper.buildAnimatedCrossFade,
	'GridPaper': WidgetWrapper.buildGridPaper,
	'FadeTransition': WidgetWrapper.buildFadeTransition,
	'SliverFadeTransition': WidgetWrapper.buildSliverFadeTransition,
	'SliverPersistentHeader': WidgetWrapper.buildSliverPersistentHeader,
	'PageStorageKey': WidgetWrapper.buildPageStorageKey,
	'PageStorage': WidgetWrapper.buildPageStorage,
	'Router': WidgetWrapper.buildRouter,
	'RootBackButtonDispatcher': WidgetWrapper.buildRootBackButtonDispatcher,
	'ChildBackButtonDispatcher': WidgetWrapper.buildChildBackButtonDispatcher,
	'PlatformRouteInformationProvider': WidgetWrapper.buildPlatformRouteInformationProvider,
	'Opacity': WidgetWrapper.buildOpacity,
	'ShaderMask': WidgetWrapper.buildShaderMask,
	'BackdropFilter': WidgetWrapper.buildBackdropFilter,
	'CustomPaint': WidgetWrapper.buildCustomPaint,
	'ClipRect': WidgetWrapper.buildClipRect,
	'ClipRRect': WidgetWrapper.buildClipRRect,
	'ClipOval': WidgetWrapper.buildClipOval,
	'ClipPath': WidgetWrapper.buildClipPath,
	'PhysicalModel': WidgetWrapper.buildPhysicalModel,
	'PhysicalShape': WidgetWrapper.buildPhysicalShape,
	'Transform': WidgetWrapper.buildTransform,
	'Transform_rotate': WidgetWrapper.buildTransform_rotate,
	'Transform_translate': WidgetWrapper.buildTransform_translate,
	'Transform_scale': WidgetWrapper.buildTransform_scale,
	'CompositedTransformTarget': WidgetWrapper.buildCompositedTransformTarget,
	'CompositedTransformFollower': WidgetWrapper.buildCompositedTransformFollower,
	'FittedBox': WidgetWrapper.buildFittedBox,
	'FractionalTranslation': WidgetWrapper.buildFractionalTranslation,
	'RotatedBox': WidgetWrapper.buildRotatedBox,
	'Padding': WidgetWrapper.buildPadding,
	'Align': WidgetWrapper.buildAlign,
	'Center': WidgetWrapper.buildCenter,
	'CustomSingleChildLayout': WidgetWrapper.buildCustomSingleChildLayout,
	'SizedBox': WidgetWrapper.buildSizedBox,
	'SizedBox_expand': WidgetWrapper.buildSizedBox_expand,
	'SizedBox_shrink': WidgetWrapper.buildSizedBox_shrink,
	'SizedBox_fromSize': WidgetWrapper.buildSizedBox_fromSize,
	'ConstrainedBox': WidgetWrapper.buildConstrainedBox,
	'UnconstrainedBox': WidgetWrapper.buildUnconstrainedBox,
	'FractionallySizedBox': WidgetWrapper.buildFractionallySizedBox,
	'LimitedBox': WidgetWrapper.buildLimitedBox,
	'OverflowBox': WidgetWrapper.buildOverflowBox,
	'SizedOverflowBox': WidgetWrapper.buildSizedOverflowBox,
	'Offstage': WidgetWrapper.buildOffstage,
	'AspectRatio': WidgetWrapper.buildAspectRatio,
	'IntrinsicWidth': WidgetWrapper.buildIntrinsicWidth,
	'IntrinsicHeight': WidgetWrapper.buildIntrinsicHeight,
	'Baseline': WidgetWrapper.buildBaseline,
	'SliverToBoxAdapter': WidgetWrapper.buildSliverToBoxAdapter,
	'SliverPadding': WidgetWrapper.buildSliverPadding,
	'PositionedDirectional': WidgetWrapper.buildPositionedDirectional,
	'Row': WidgetWrapper.buildRow,
	'Column': WidgetWrapper.buildColumn,
	'Listener': WidgetWrapper.buildListener,
	'MouseRegion': WidgetWrapper.buildMouseRegion,
	'RepaintBoundary': WidgetWrapper.buildRepaintBoundary,
	'RepaintBoundary_wrap': WidgetWrapper.buildRepaintBoundary_wrap,
	'IgnorePointer': WidgetWrapper.buildIgnorePointer,
	'AbsorbPointer': WidgetWrapper.buildAbsorbPointer,
	'MetaData': WidgetWrapper.buildMetaData,
	'Semantics': WidgetWrapper.buildSemantics,
	'Semantics_fromProperties': WidgetWrapper.buildSemantics_fromProperties,
	'MergeSemantics': WidgetWrapper.buildMergeSemantics,
	'BlockSemantics': WidgetWrapper.buildBlockSemantics,
	'ExcludeSemantics': WidgetWrapper.buildExcludeSemantics,
	'IndexedSemantics': WidgetWrapper.buildIndexedSemantics,
	'KeyedSubtree': WidgetWrapper.buildKeyedSubtree,
	'KeyedSubtree_wrap': WidgetWrapper.buildKeyedSubtree_wrap,
	'Builder': WidgetWrapper.buildBuilder,
	'StatefulBuilder': WidgetWrapper.buildStatefulBuilder,
	'ColoredBox': WidgetWrapper.buildColoredBox,
	'GestureDetector': WidgetWrapper.buildGestureDetector,
	'RawGestureDetector': WidgetWrapper.buildRawGestureDetector,
	'FutureBuilder': WidgetWrapper.buildFutureBuilder,
	'Text': WidgetWrapper.buildText,
	'Text_rich': WidgetWrapper.buildText_rich,
	'ActionListener': WidgetWrapper.buildActionListener,
	'Actions': WidgetWrapper.buildActions,
	'FocusableActionDetector': WidgetWrapper.buildFocusableActionDetector,
	'Form': WidgetWrapper.buildForm,
	'FormField': WidgetWrapper.buildFormField,
	'Image': WidgetWrapper.buildImage,
	'Image_network': WidgetWrapper.buildImage_network,
	'Image_file': WidgetWrapper.buildImage_file,
	'Image_asset': WidgetWrapper.buildImage_asset,
	'Image_memory': WidgetWrapper.buildImage_memory,
	'NestedScrollView': WidgetWrapper.buildNestedScrollView,
	'SliverOverlapAbsorber': WidgetWrapper.buildSliverOverlapAbsorber,
	'SliverOverlapInjector': WidgetWrapper.buildSliverOverlapInjector,
	'NavigationToolbar': WidgetWrapper.buildNavigationToolbar,
	'ReorderableList': WidgetWrapper.buildReorderableList,
	'SliverReorderableList': WidgetWrapper.buildSliverReorderableList,
	'ReorderableDragStartListener': WidgetWrapper.buildReorderableDragStartListener,
	'ReorderableDelayedDragStartListener': WidgetWrapper.buildReorderableDelayedDragStartListener,
	'Navigator': WidgetWrapper.buildNavigator,
	'PreferredSize': WidgetWrapper.buildPreferredSize,
	'ValueListenableBuilder': WidgetWrapper.buildValueListenableBuilder,
	'DraggableScrollableSheet': WidgetWrapper.buildDraggableScrollableSheet,
	'DraggableScrollableActuator': WidgetWrapper.buildDraggableScrollableActuator,
	'DecoratedBox': WidgetWrapper.buildDecoratedBox,
	'Container': WidgetWrapper.buildContainer,
	'ScrollAwareImageProvider': WidgetWrapper.buildScrollAwareImageProvider,
	'EditableText': WidgetWrapper.buildEditableText,
	'Placeholder': WidgetWrapper.buildPlaceholder,
	'Icon': WidgetWrapper.buildIcon,
	'ImageIcon': WidgetWrapper.buildImageIcon,
	'Scrollable': WidgetWrapper.buildScrollable,
	'OrientationBuilder': WidgetWrapper.buildOrientationBuilder,
	'FocusNode': WidgetWrapper.buildFocusNode,
	'OrderedTraversalPolicy': WidgetWrapper.buildOrderedTraversalPolicy,
	'FocusTraversalGroup': WidgetWrapper.buildFocusTraversalGroup,
	'ColorFiltered': WidgetWrapper.buildColorFiltered,
	'Title': WidgetWrapper.buildTitle,
	'AnimatedSwitcher': WidgetWrapper.buildAnimatedSwitcher,
	'DualTransitionBuilder': WidgetWrapper.buildDualTransitionBuilder,
	'Visibility': WidgetWrapper.buildVisibility,
	'SliverVisibility': WidgetWrapper.buildSliverVisibility,
	'AnnotatedRegion': WidgetWrapper.buildAnnotatedRegion,
	'BannerPainter': WidgetWrapper.buildBannerPainter,
	'Banner': WidgetWrapper.buildBanner,
	'CheckedModeBanner': WidgetWrapper.buildCheckedModeBanner,
	'NotificationListener': WidgetWrapper.buildNotificationListener,
	'PageView': WidgetWrapper.buildPageView,
	'PageView_builder': WidgetWrapper.buildPageView_builder,
	'PageView_custom': WidgetWrapper.buildPageView_custom,
	'Shortcuts': WidgetWrapper.buildShortcuts,
	'ImageFiltered': WidgetWrapper.buildImageFiltered,
	'Draggable': WidgetWrapper.buildDraggable,
	'LongPressDraggable': WidgetWrapper.buildLongPressDraggable,
	'DragTarget': WidgetWrapper.buildDragTarget,
	'GlowingOverscrollIndicator': WidgetWrapper.buildGlowingOverscrollIndicator,
	'Hero': WidgetWrapper.buildHero,
	'HeroMode': WidgetWrapper.buildHeroMode,
	'SizeChangedLayoutNotifier': WidgetWrapper.buildSizeChangedLayoutNotifier,
	'WidgetInspector': WidgetWrapper.buildWidgetInspector,
	'AutomaticKeepAlive': WidgetWrapper.buildAutomaticKeepAlive,
	'UniqueKey': WidgetWrapper.buildUniqueKey,
	'ObjectKey': WidgetWrapper.buildObjectKey,
	'LabeledGlobalKey': WidgetWrapper.buildLabeledGlobalKey,
	'GlobalObjectKey': WidgetWrapper.buildGlobalObjectKey,
	'SemanticsDebugger': WidgetWrapper.buildSemanticsDebugger,
	'TextSelectionGestureDetector': WidgetWrapper.buildTextSelectionGestureDetector,
	'TickerMode': WidgetWrapper.buildTickerMode,
	'RestorationScope': WidgetWrapper.buildRestorationScope,
	'RootRestorationScope': WidgetWrapper.buildRootRestorationScope,
	'AnimatedList': WidgetWrapper.buildAnimatedList,
	'SliverAnimatedList': WidgetWrapper.buildSliverAnimatedList,
	'IconData': WidgetWrapper.buildIconData,
	'FadeInImage': WidgetWrapper.buildFadeInImage,
	'FadeInImage_memoryNetwork': WidgetWrapper.buildFadeInImage_memoryNetwork,
	'FadeInImage_assetNetwork': WidgetWrapper.buildFadeInImage_assetNetwork,
	'Focus': WidgetWrapper.buildFocus,
	'FocusScope': WidgetWrapper.buildFocusScope,
	'ExcludeFocus': WidgetWrapper.buildExcludeFocus,
	'ModalBarrier': WidgetWrapper.buildModalBarrier,
	'InteractiveViewer': WidgetWrapper.buildInteractiveViewer,
	'AutofillGroup': WidgetWrapper.buildAutofillGroup,
	'ListWheelScrollView': WidgetWrapper.buildListWheelScrollView,
	'ListWheelScrollView_useDelegate': WidgetWrapper.buildListWheelScrollView_useDelegate,
	'SliverChildBuilderDelegate': WidgetWrapper.buildSliverChildBuilderDelegate,
	'SliverChildListDelegate': WidgetWrapper.buildSliverChildListDelegate,
	'SliverChildListDelegate_fixed': WidgetWrapper.buildSliverChildListDelegate_fixed,
	'SliverOpacity': WidgetWrapper.buildSliverOpacity,
	'SliverIgnorePointer': WidgetWrapper.buildSliverIgnorePointer,
	'SliverOffstage': WidgetWrapper.buildSliverOffstage,
	'Dismissible': WidgetWrapper.buildDismissible,
	'WillPopScope': WidgetWrapper.buildWillPopScope,
	'TextSelectionToolbarLayoutDelegate': WidgetWrapper.buildTextSelectionToolbarLayoutDelegate,
	'DesktopTextSelectionToolbarLayoutDelegate': WidgetWrapper.buildDesktopTextSelectionToolbarLayoutDelegate,
	'SafeArea': WidgetWrapper.buildSafeArea,
	'SliverSafeArea': WidgetWrapper.buildSliverSafeArea,
	'RawScrollbar': WidgetWrapper.buildRawScrollbar,
	'AndroidView': WidgetWrapper.buildAndroidView,
	'UiKitView': WidgetWrapper.buildUiKitView,
	'HtmlElementView': WidgetWrapper.buildHtmlElementView,
	'PlatformViewLink': WidgetWrapper.buildPlatformViewLink,
	'WidgetsApp': WidgetWrapper.buildWidgetsApp,
	'WidgetsApp_router': WidgetWrapper.buildWidgetsApp_router,
	'RawAutocomplete': WidgetWrapper.buildRawAutocomplete,
	'Overlay': WidgetWrapper.buildOverlay,
	'RawKeyboardListener': WidgetWrapper.buildRawKeyboardListener,
	'Spacer': WidgetWrapper.buildSpacer,
	'Localizations': WidgetWrapper.buildLocalizations,
	'Localizations_override': WidgetWrapper.buildLocalizations_override,
	'SliverFillViewport': WidgetWrapper.buildSliverFillViewport,
	'SliverFillRemaining': WidgetWrapper.buildSliverFillRemaining,
	'AnimatedSize': WidgetWrapper.buildAnimatedSize,
	'TextDecoration_combine': WidgetWrapper.buildTextDecoration_combine,
	'Color': WidgetWrapper.buildColor,
	'Color_fromARGB': WidgetWrapper.buildColor_fromARGB,
	'Color_fromRGBO': WidgetWrapper.buildColor_fromRGBO,
	'Paint': WidgetWrapper.buildPaint,
	'Size': WidgetWrapper.buildSize,
	'Size_copy': WidgetWrapper.buildSize_copy,
	'Size_square': WidgetWrapper.buildSize_square,
	'Size_fromWidth': WidgetWrapper.buildSize_fromWidth,
	'Size_fromHeight': WidgetWrapper.buildSize_fromHeight,
	'Size_fromRadius': WidgetWrapper.buildSize_fromRadius,
	'Locale': WidgetWrapper.buildLocale,
	'Locale_fromSubtags': WidgetWrapper.buildLocale_fromSubtags,
};

class WidgetWrapper {
	static SawTooth buildSawTooth(instance, args, {namedArgs}) {
		SawTooth ctor(count) => SawTooth(count);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Interval buildInterval(instance, args, {namedArgs}) {
		Interval ctor(begin, end, {curve = Curves.linear}) => Interval(begin, end, curve: curve);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Threshold buildThreshold(instance, args, {namedArgs}) {
		Threshold ctor(threshold) => Threshold(threshold);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Cubic buildCubic(instance, args, {namedArgs}) {
		Cubic ctor(a, b, c, d) => Cubic(a, b, c, d);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CatmullRomCurve buildCatmullRomCurve(instance, args, {namedArgs}) {
		CatmullRomCurve ctor(controlPoints, {tension = 0.0}) => CatmullRomCurve(controlPoints, tension: tension);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CatmullRomCurve buildCatmullRomCurve_precompute(instance, args, {namedArgs}) {
		CatmullRomCurve ctor(controlPoints, {tension = 0.0}) => CatmullRomCurve.precompute(controlPoints, tension: tension);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FlippedCurve buildFlippedCurve(instance, args, {namedArgs}) {
		FlippedCurve ctor(curve) => FlippedCurve(curve);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ElasticInCurve buildElasticInCurve(instance, args, {namedArgs}) {
		ElasticInCurve ctor(period) => ElasticInCurve(period);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ElasticOutCurve buildElasticOutCurve(instance, args, {namedArgs}) {
		ElasticOutCurve ctor(period) => ElasticOutCurve(period);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ElasticInOutCurve buildElasticInOutCurve(instance, args, {namedArgs}) {
		ElasticInOutCurve ctor(period) => ElasticInOutCurve(period);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ValueKey buildValueKey(instance, args, {namedArgs}) {
		ValueKey ctor(value) => ValueKey(value);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static OrdinalSortKey buildOrdinalSortKey(instance, args, {namedArgs}) {
		OrdinalSortKey ctor(order, {name}) => OrdinalSortKey(order, name: name);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Border buildBorder(instance, args, {namedArgs}) {
		Border ctor({top = BorderSide.none, right = BorderSide.none, bottom = BorderSide.none, left = BorderSide.none}) => Border(top: top, right: right, bottom: bottom, left: left);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Border buildBorder_fromBorderSide(instance, args, {namedArgs}) {
		Border ctor(side) => Border.fromBorderSide(side);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Border buildBorder_symmetric(instance, args, {namedArgs}) {
		Border ctor({vertical = BorderSide.none, horizontal = BorderSide.none}) => Border.symmetric(vertical: vertical, horizontal: horizontal);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Border buildBorder_all(instance, args, {namedArgs}) {
		Border ctor({color = const Color(0xFF000000), width = 1.0, style = BorderStyle.solid}) => Border.all(color: color, width: width, style: style);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderDirectional buildBorderDirectional(instance, args, {namedArgs}) {
		BorderDirectional ctor({top = BorderSide.none, start = BorderSide.none, end = BorderSide.none, bottom = BorderSide.none}) => BorderDirectional(top: top, start: start, end: end, bottom: bottom);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ResizeImage buildResizeImage(instance, args, {namedArgs}) {
		ResizeImage ctor(imageProvider, {width, height, allowUpscaling = false}) => ResizeImage(imageProvider, width: width, height: height, allowUpscaling: allowUpscaling);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FileImage buildFileImage(instance, args, {namedArgs}) {
		FileImage ctor(file, {scale = 1.0}) => FileImage(file, scale: scale);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MemoryImage buildMemoryImage(instance, args, {namedArgs}) {
		MemoryImage ctor(bytes, {scale = 1.0}) => MemoryImage(bytes, scale: scale);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadius buildBorderRadius_all(instance, args, {namedArgs}) {
		BorderRadius ctor(radius) => BorderRadius.all(radius);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadius buildBorderRadius_circular(instance, args, {namedArgs}) {
		BorderRadius ctor(radius) => BorderRadius.circular(radius);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadius buildBorderRadius_vertical(instance, args, {namedArgs}) {
		BorderRadius ctor({top = Radius.zero, bottom = Radius.zero}) => BorderRadius.vertical(top: top, bottom: bottom);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadius buildBorderRadius_horizontal(instance, args, {namedArgs}) {
		BorderRadius ctor({left = Radius.zero, right = Radius.zero}) => BorderRadius.horizontal(left: left, right: right);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadius buildBorderRadius_only(instance, args, {namedArgs}) {
		BorderRadius ctor({topLeft = Radius.zero, topRight = Radius.zero, bottomLeft = Radius.zero, bottomRight = Radius.zero}) => BorderRadius.only(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft, bottomRight: bottomRight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadiusDirectional buildBorderRadiusDirectional_all(instance, args, {namedArgs}) {
		BorderRadiusDirectional ctor(radius) => BorderRadiusDirectional.all(radius);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadiusDirectional buildBorderRadiusDirectional_circular(instance, args, {namedArgs}) {
		BorderRadiusDirectional ctor(radius) => BorderRadiusDirectional.circular(radius);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadiusDirectional buildBorderRadiusDirectional_vertical(instance, args, {namedArgs}) {
		BorderRadiusDirectional ctor({top = Radius.zero, bottom = Radius.zero}) => BorderRadiusDirectional.vertical(top: top, bottom: bottom);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadiusDirectional buildBorderRadiusDirectional_horizontal(instance, args, {namedArgs}) {
		BorderRadiusDirectional ctor({start = Radius.zero, end = Radius.zero}) => BorderRadiusDirectional.horizontal(start: start, end: end);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BorderRadiusDirectional buildBorderRadiusDirectional_only(instance, args, {namedArgs}) {
		BorderRadiusDirectional ctor({topStart = Radius.zero, topEnd = Radius.zero, bottomStart = Radius.zero, bottomEnd = Radius.zero}) => BorderRadiusDirectional.only(topStart: topStart, topEnd: topEnd, bottomStart: bottomStart, bottomEnd: bottomEnd);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ContinuousRectangleBorder buildContinuousRectangleBorder(instance, args, {namedArgs}) {
		ContinuousRectangleBorder ctor({side = BorderSide.none, borderRadius = BorderRadius.zero}) => ContinuousRectangleBorder(side: side, borderRadius: borderRadius);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TextStyle buildTextStyle(instance, args, {namedArgs}) {
		TextStyle ctor({color, decoration, decorationColor, decorationStyle, decorationThickness, fontWeight, fontStyle, textBaseline, fontFamily, fontFamilyFallback, fontSize, letterSpacing, wordSpacing, height, locale, background, foreground, shadows, fontFeatures}) => TextStyle(color: color, decoration: decoration, decorationColor: decorationColor, decorationStyle: decorationStyle, decorationThickness: decorationThickness, fontWeight: fontWeight, fontStyle: fontStyle, textBaseline: textBaseline, fontFamily: fontFamily, fontFamilyFallback: List<String>.from(fontFamilyFallback), fontSize: fontSize, letterSpacing: letterSpacing, wordSpacing: wordSpacing, height: height, locale: locale, background: background, foreground: foreground, shadows: List<Shadow>.from(shadows), fontFeatures: List<FontFeature>.from(fontFeatures));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CircleBorder buildCircleBorder(instance, args, {namedArgs}) {
		CircleBorder ctor({side = BorderSide.none}) => CircleBorder(side: side);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BeveledRectangleBorder buildBeveledRectangleBorder(instance, args, {namedArgs}) {
		BeveledRectangleBorder ctor({side = BorderSide.none, borderRadius = BorderRadius.zero}) => BeveledRectangleBorder(side: side, borderRadius: borderRadius);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static GradientRotation buildGradientRotation(instance, args, {namedArgs}) {
		GradientRotation ctor(radians) => GradientRotation(radians);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static LinearGradient buildLinearGradient(instance, args, {namedArgs}) {
		LinearGradient ctor({begin = Alignment.centerLeft, end = Alignment.centerRight, colors, stops, tileMode = TileMode.clamp, transform}) => LinearGradient(begin: begin, end: end, colors: List<Color>.from(colors), stops: List<double>.from(stops), tileMode: tileMode, transform: transform);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RadialGradient buildRadialGradient(instance, args, {namedArgs}) {
		RadialGradient ctor({center = Alignment.center, radius = 0.5, colors, stops, tileMode = TileMode.clamp, focal, focalRadius = 0.0, transform}) => RadialGradient(center: center, radius: radius, colors: List<Color>.from(colors), stops: List<double>.from(stops), tileMode: tileMode, focal: focal, focalRadius: focalRadius, transform: transform);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SweepGradient buildSweepGradient(instance, args, {namedArgs}) {
		SweepGradient ctor({center = Alignment.center, startAngle = 0.0, endAngle = math.pi * 2, colors, stops, tileMode = TileMode.clamp, transform}) => SweepGradient(center: center, startAngle: startAngle, endAngle: endAngle, colors: List<Color>.from(colors), stops: List<double>.from(stops), tileMode: tileMode, transform: transform);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Alignment buildAlignment(instance, args, {namedArgs}) {
		Alignment ctor(x, y) => Alignment(x, y);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AlignmentDirectional buildAlignmentDirectional(instance, args, {namedArgs}) {
		AlignmentDirectional ctor(start, y) => AlignmentDirectional(start, y);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TextSpan buildTextSpan(instance, args, {namedArgs}) {
		TextSpan ctor({text, children, style, recognizer, semanticsLabel}) => TextSpan(text: text, children: List<InlineSpan>.from(children), style: style, recognizer: recognizer, semanticsLabel: semanticsLabel);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FlutterLogoDecoration buildFlutterLogoDecoration(instance, args, {namedArgs}) {
		FlutterLogoDecoration ctor({textColor = const Color(0xFF757575), style = FlutterLogoStyle.markOnly, margin = EdgeInsets.zero}) => FlutterLogoDecoration(textColor: textColor, style: style, margin: margin);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BoxDecoration buildBoxDecoration(instance, args, {namedArgs}) {
		BoxDecoration ctor({color, image, border, borderRadius, boxShadow, gradient, backgroundBlendMode, shape = BoxShape.rectangle}) => BoxDecoration(color: color, image: image, border: border, borderRadius: borderRadius, boxShadow: List<BoxShadow>.from(boxShadow), gradient: gradient, backgroundBlendMode: backgroundBlendMode, shape: shape);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FractionalOffset buildFractionalOffset(instance, args, {namedArgs}) {
		FractionalOffset ctor(dx, dy) => FractionalOffset(dx, dy);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FractionalOffset buildFractionalOffset_fromOffsetAndSize(instance, args, {namedArgs}) {
		FractionalOffset ctor(offset, size) => FractionalOffset.fromOffsetAndSize(offset, size);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FractionalOffset buildFractionalOffset_fromOffsetAndRect(instance, args, {namedArgs}) {
		FractionalOffset ctor(offset, rect) => FractionalOffset.fromOffsetAndRect(offset, rect);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CircularNotchedRectangle buildCircularNotchedRectangle(instance, args, {namedArgs}) {
		CircularNotchedRectangle ctor() => CircularNotchedRectangle();
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AutomaticNotchedShape buildAutomaticNotchedShape(instance, args, {namedArgs}) {
		AutomaticNotchedShape ctor(host, guest) => AutomaticNotchedShape(host, guest);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static StadiumBorder buildStadiumBorder(instance, args, {namedArgs}) {
		StadiumBorder ctor({side = BorderSide.none}) => StadiumBorder(side: side);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RoundedRectangleBorder buildRoundedRectangleBorder(instance, args, {namedArgs}) {
		RoundedRectangleBorder ctor({side = BorderSide.none, borderRadius = BorderRadius.zero}) => RoundedRectangleBorder(side: side, borderRadius: borderRadius);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ShapeDecoration buildShapeDecoration(instance, args, {namedArgs}) {
		ShapeDecoration ctor({color, image, gradient, shadows, shape}) => ShapeDecoration(color: color, image: image, gradient: gradient, shadows: List<BoxShadow>.from(shadows), shape: shape);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ShapeDecoration buildShapeDecoration_fromBoxDecoration(instance, args, {namedArgs}) {
		ShapeDecoration ctor(source) => ShapeDecoration.fromBoxDecoration(source);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static EdgeInsets buildEdgeInsets_fromLTRB(instance, args, {namedArgs}) {
		EdgeInsets ctor(left, top, right, bottom) => EdgeInsets.fromLTRB(left, top, right, bottom);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static EdgeInsets buildEdgeInsets_all(instance, args, {namedArgs}) {
		EdgeInsets ctor(value) => EdgeInsets.all(value);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static EdgeInsets buildEdgeInsets_only(instance, args, {namedArgs}) {
		EdgeInsets ctor({left = 0.0, top = 0.0, right = 0.0, bottom = 0.0}) => EdgeInsets.only(left: left, top: top, right: right, bottom: bottom);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static EdgeInsets buildEdgeInsets_symmetric(instance, args, {namedArgs}) {
		EdgeInsets ctor({vertical = 0.0, horizontal = 0.0}) => EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static EdgeInsets buildEdgeInsets_fromWindowPadding(instance, args, {namedArgs}) {
		EdgeInsets ctor(padding, devicePixelRatio) => EdgeInsets.fromWindowPadding(padding, devicePixelRatio);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static EdgeInsetsDirectional buildEdgeInsetsDirectional_fromSTEB(instance, args, {namedArgs}) {
		EdgeInsetsDirectional ctor(start, top, end, bottom) => EdgeInsetsDirectional.fromSTEB(start, top, end, bottom);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static EdgeInsetsDirectional buildEdgeInsetsDirectional_only(instance, args, {namedArgs}) {
		EdgeInsetsDirectional ctor({start = 0.0, top = 0.0, end = 0.0, bottom = 0.0}) => EdgeInsetsDirectional.only(start: start, top: top, end: end, bottom: bottom);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static StrutStyle buildStrutStyle(instance, args, {namedArgs}) {
		StrutStyle ctor({fontFamily, fontFamilyFallback, fontSize, height, leading, fontWeight, fontStyle, forceStrutHeight}) => StrutStyle(fontFamily: fontFamily, fontFamilyFallback: List<String>.from(fontFamilyFallback), fontSize: fontSize, height: height, leading: leading, fontWeight: fontWeight, fontStyle: fontStyle, forceStrutHeight: forceStrutHeight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static StrutStyle buildStrutStyle_fromTextStyle(instance, args, {namedArgs}) {
		StrutStyle ctor(textStyle, {fontFamily, fontFamilyFallback, fontSize, height, leading, fontWeight, fontStyle, forceStrutHeight, debugLabel, package}) => StrutStyle.fromTextStyle(textStyle, fontFamily: fontFamily, fontFamilyFallback: List<String>.from(fontFamilyFallback), fontSize: fontSize, height: height, leading: leading, fontWeight: fontWeight, fontStyle: fontStyle, forceStrutHeight: forceStrutHeight, debugLabel: debugLabel, package: package);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DoubleTapGestureRecognizer buildDoubleTapGestureRecognizer(instance, args, {namedArgs}) {
		DoubleTapGestureRecognizer ctor({debugOwner, kind}) => DoubleTapGestureRecognizer(debugOwner: debugOwner, kind: kind);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MultiTapGestureRecognizer buildMultiTapGestureRecognizer(instance, args, {namedArgs}) {
		MultiTapGestureRecognizer ctor({longTapDelay = Duration.zero, debugOwner, kind}) => MultiTapGestureRecognizer(longTapDelay: longTapDelay, debugOwner: debugOwner, kind: kind);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BoxConstraints buildBoxConstraints(instance, args, {namedArgs}) {
		BoxConstraints ctor({minWidth = 0.0, maxWidth = double.infinity, minHeight = 0.0, maxHeight = double.infinity}) => BoxConstraints(minWidth: minWidth, maxWidth: maxWidth, minHeight: minHeight, maxHeight: maxHeight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BoxConstraints buildBoxConstraints_tight(instance, args, {namedArgs}) {
		BoxConstraints ctor(size) => BoxConstraints.tight(size);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BoxConstraints buildBoxConstraints_tightFor(instance, args, {namedArgs}) {
		BoxConstraints ctor({width, height}) => BoxConstraints.tightFor(width: width, height: height);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BoxConstraints buildBoxConstraints_tightForFinite(instance, args, {namedArgs}) {
		BoxConstraints ctor({width = double.infinity, height = double.infinity}) => BoxConstraints.tightForFinite(width: width, height: height);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BoxConstraints buildBoxConstraints_loose(instance, args, {namedArgs}) {
		BoxConstraints ctor(size) => BoxConstraints.loose(size);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BoxConstraints buildBoxConstraints_expand(instance, args, {namedArgs}) {
		BoxConstraints ctor({width, height}) => BoxConstraints.expand(width: width, height: height);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTabView buildCupertinoTabView(instance, args, {namedArgs}) {
		CupertinoTabView ctor({key, builder, navigatorKey, defaultTitle, routes, onGenerateRoute, onUnknownRoute, navigatorObservers = const <NavigatorObserver>[], restorationScopeId}) => CupertinoTabView(key: key, builder: builder, navigatorKey: navigatorKey, defaultTitle: defaultTitle, routes: routes, onGenerateRoute: onGenerateRoute, onUnknownRoute: onUnknownRoute, navigatorObservers: List<NavigatorObserver>.from(navigatorObservers), restorationScopeId: restorationScopeId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTextField buildCupertinoTextField(instance, args, {namedArgs}) {
		CupertinoTextField ctor({key, controller, focusNode, padding = const EdgeInsets.all(6.0), placeholder, placeholderStyle = const TextStyle(fontWeight: FontWeight.w400, color: CupertinoColors.placeholderText), prefix, prefixMode = OverlayVisibilityMode.always, suffix, suffixMode = OverlayVisibilityMode.always, clearButtonMode = OverlayVisibilityMode.never, keyboardType, textInputAction, textCapitalization = TextCapitalization.none, style, strutStyle, textAlign = TextAlign.start, textAlignVertical, readOnly = false, toolbarOptions, showCursor, autofocus = false, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, maxLines = 1, minLines, expands = false, maxLength, maxLengthEnforcement, onChanged, onEditingComplete, onSubmitted, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorRadius = const Radius.circular(2.0), cursorColor, selectionHeightStyle = BoxHeightStyle.tight, selectionWidthStyle = BoxWidthStyle.tight, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, scrollController, scrollPhysics, autofillHints, restorationId}) => CupertinoTextField(key: key, controller: controller, focusNode: focusNode, padding: padding, placeholder: placeholder, placeholderStyle: placeholderStyle, prefix: prefix, prefixMode: prefixMode, suffix: suffix, suffixMode: suffixMode, clearButtonMode: clearButtonMode, keyboardType: keyboardType, textInputAction: textInputAction, textCapitalization: textCapitalization, style: style, strutStyle: strutStyle, textAlign: textAlign, textAlignVertical: textAlignVertical, readOnly: readOnly, toolbarOptions: toolbarOptions, showCursor: showCursor, autofocus: autofocus, obscuringCharacter: obscuringCharacter, obscureText: obscureText, autocorrect: autocorrect, smartDashesType: smartDashesType, smartQuotesType: smartQuotesType, enableSuggestions: enableSuggestions, maxLines: maxLines, minLines: minLines, expands: expands, maxLength: maxLength, maxLengthEnforcement: maxLengthEnforcement, onChanged: onChanged, onEditingComplete: onEditingComplete, onSubmitted: onSubmitted, inputFormatters: List<TextInputFormatter>.from(inputFormatters), enabled: enabled, cursorWidth: cursorWidth, cursorHeight: cursorHeight, cursorRadius: cursorRadius, cursorColor: cursorColor, selectionHeightStyle: selectionHeightStyle, selectionWidthStyle: selectionWidthStyle, keyboardAppearance: keyboardAppearance, scrollPadding: scrollPadding, dragStartBehavior: dragStartBehavior, enableInteractiveSelection: enableInteractiveSelection, selectionControls: selectionControls, onTap: onTap, scrollController: scrollController, scrollPhysics: scrollPhysics, autofillHints: autofillHints, restorationId: restorationId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTextField buildCupertinoTextField_borderless(instance, args, {namedArgs}) {
		CupertinoTextField ctor({key, controller, focusNode, decoration, padding = const EdgeInsets.all(6.0), placeholder, prefix, prefixMode = OverlayVisibilityMode.always, suffix, suffixMode = OverlayVisibilityMode.always, clearButtonMode = OverlayVisibilityMode.never, keyboardType, textInputAction, textCapitalization = TextCapitalization.none, style, strutStyle, textAlign = TextAlign.start, textAlignVertical, readOnly = false, toolbarOptions, showCursor, autofocus = false, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, maxLines = 1, minLines, expands = false, maxLength, maxLengthEnforcement, onChanged, onEditingComplete, onSubmitted, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorRadius = const Radius.circular(2.0), cursorColor, selectionHeightStyle = BoxHeightStyle.tight, selectionWidthStyle = BoxWidthStyle.tight, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, scrollController, scrollPhysics, autofillHints, restorationId}) => CupertinoTextField.borderless(key: key, controller: controller, focusNode: focusNode, decoration: decoration, padding: padding, placeholder: placeholder, prefix: prefix, prefixMode: prefixMode, suffix: suffix, suffixMode: suffixMode, clearButtonMode: clearButtonMode, keyboardType: keyboardType, textInputAction: textInputAction, textCapitalization: textCapitalization, style: style, strutStyle: strutStyle, textAlign: textAlign, textAlignVertical: textAlignVertical, readOnly: readOnly, toolbarOptions: toolbarOptions, showCursor: showCursor, autofocus: autofocus, obscuringCharacter: obscuringCharacter, obscureText: obscureText, autocorrect: autocorrect, smartDashesType: smartDashesType, smartQuotesType: smartQuotesType, enableSuggestions: enableSuggestions, maxLines: maxLines, minLines: minLines, expands: expands, maxLength: maxLength, maxLengthEnforcement: maxLengthEnforcement, onChanged: onChanged, onEditingComplete: onEditingComplete, onSubmitted: onSubmitted, inputFormatters: List<TextInputFormatter>.from(inputFormatters), enabled: enabled, cursorWidth: cursorWidth, cursorHeight: cursorHeight, cursorRadius: cursorRadius, cursorColor: cursorColor, selectionHeightStyle: selectionHeightStyle, selectionWidthStyle: selectionWidthStyle, keyboardAppearance: keyboardAppearance, scrollPadding: scrollPadding, dragStartBehavior: dragStartBehavior, enableInteractiveSelection: enableInteractiveSelection, selectionControls: selectionControls, onTap: onTap, scrollController: scrollController, scrollPhysics: scrollPhysics, autofillHints: autofillHints, restorationId: restorationId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoFormRow buildCupertinoFormRow(instance, args, {namedArgs}) {
		CupertinoFormRow ctor({key, child, prefix, padding, helper, error}) => CupertinoFormRow(key: key, child: child, prefix: prefix, padding: padding, helper: helper, error: error);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTextSelectionToolbar buildCupertinoTextSelectionToolbar(instance, args, {namedArgs}) {
		CupertinoTextSelectionToolbar ctor({key, anchorAbove, anchorBelow, children}) => CupertinoTextSelectionToolbar(key: key, anchorAbove: anchorAbove, anchorBelow: anchorBelow, children: List<Widget>.from(children));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTextSelectionToolbarButton buildCupertinoTextSelectionToolbarButton(instance, args, {namedArgs}) {
		CupertinoTextSelectionToolbarButton ctor({key, onPressed, child}) => CupertinoTextSelectionToolbarButton(key: key, onPressed: onPressed, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTextSelectionToolbarButton buildCupertinoTextSelectionToolbarButton_text(instance, args, {namedArgs}) {
		CupertinoTextSelectionToolbarButton ctor({key, onPressed, text}) => CupertinoTextSelectionToolbarButton.text(key: key, onPressed: onPressed, text: text);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoSegmentedControl buildCupertinoSegmentedControl(instance, args, {namedArgs}) {
		CupertinoSegmentedControl ctor({key, children, onValueChanged, groupValue, unselectedColor, selectedColor, borderColor, pressedColor, padding}) => CupertinoSegmentedControl(key: key, children: children, onValueChanged: onValueChanged, groupValue: groupValue, unselectedColor: unselectedColor, selectedColor: selectedColor, borderColor: borderColor, pressedColor: pressedColor, padding: padding);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoActionSheet buildCupertinoActionSheet(instance, args, {namedArgs}) {
		CupertinoActionSheet ctor({key, title, message, actions, messageScrollController, actionScrollController, cancelButton}) => CupertinoActionSheet(key: key, title: title, message: message, actions: List<Widget>.from(actions), messageScrollController: messageScrollController, actionScrollController: actionScrollController, cancelButton: cancelButton);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoActionSheetAction buildCupertinoActionSheetAction(instance, args, {namedArgs}) {
		CupertinoActionSheetAction ctor({key, onPressed, isDefaultAction = false, isDestructiveAction = false, child}) => CupertinoActionSheetAction(key: key, onPressed: onPressed, isDefaultAction: isDefaultAction, isDestructiveAction: isDestructiveAction, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoSlidingSegmentedControl buildCupertinoSlidingSegmentedControl(instance, args, {namedArgs}) {
		CupertinoSlidingSegmentedControl ctor({key, children, onValueChanged, groupValue, backgroundColor = CupertinoColors.tertiarySystemFill}) => CupertinoSlidingSegmentedControl(key: key, children: children, onValueChanged: onValueChanged, groupValue: groupValue, backgroundColor: backgroundColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoSearchTextField buildCupertinoSearchTextField(instance, args, {namedArgs}) {
		CupertinoSearchTextField ctor({key, controller, onChanged, onSubmitted, style, placeholder, placeholderStyle, decoration, backgroundColor, borderRadius, padding = const EdgeInsetsDirectional.fromSTEB(3.8, 8, 5, 8), itemColor = CupertinoColors.secondaryLabel, itemSize = 20.0, prefixInsets = const EdgeInsetsDirectional.fromSTEB(6, 0, 0, 4), suffixInsets = const EdgeInsetsDirectional.fromSTEB(0, 0, 5, 2), suffixIcon = const Icon(CupertinoIcons.xmark_circle_fill), suffixMode = OverlayVisibilityMode.editing, onSuffixTap, restorationId, focusNode}) => CupertinoSearchTextField(key: key, controller: controller, onChanged: onChanged, onSubmitted: onSubmitted, style: style, placeholder: placeholder, placeholderStyle: placeholderStyle, decoration: decoration, backgroundColor: backgroundColor, borderRadius: borderRadius, padding: padding, itemColor: itemColor, itemSize: itemSize, prefixInsets: prefixInsets, suffixInsets: suffixInsets, suffixIcon: suffixIcon, suffixMode: suffixMode, onSuffixTap: onSuffixTap, restorationId: restorationId, focusNode: focusNode);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoButton buildCupertinoButton(instance, args, {namedArgs}) {
		CupertinoButton ctor({key, child, padding, color, disabledColor = CupertinoColors.quaternarySystemFill, minSize = kMinInteractiveDimensionCupertino, pressedOpacity = 0.4, borderRadius = const BorderRadius.all(Radius.circular(8.0)), alignment = Alignment.center, onPressed}) => CupertinoButton(key: key, child: child, padding: padding, color: color, disabledColor: disabledColor, minSize: minSize, pressedOpacity: pressedOpacity, borderRadius: borderRadius, alignment: alignment, onPressed: onPressed);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoButton buildCupertinoButton_filled(instance, args, {namedArgs}) {
		CupertinoButton ctor({key, child, padding, disabledColor = CupertinoColors.quaternarySystemFill, minSize = kMinInteractiveDimensionCupertino, pressedOpacity = 0.4, borderRadius = const BorderRadius.all(Radius.circular(8.0)), alignment = Alignment.center, onPressed}) => CupertinoButton.filled(key: key, child: child, padding: padding, disabledColor: disabledColor, minSize: minSize, pressedOpacity: pressedOpacity, borderRadius: borderRadius, alignment: alignment, onPressed: onPressed);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTabScaffold buildCupertinoTabScaffold(instance, args, {namedArgs}) {
		CupertinoTabScaffold ctor({key, tabBar, tabBuilder, controller, backgroundColor, resizeToAvoidBottomInset = true, restorationId}) => CupertinoTabScaffold(key: key, tabBar: tabBar, tabBuilder: tabBuilder, controller: controller, backgroundColor: backgroundColor, resizeToAvoidBottomInset: resizeToAvoidBottomInset, restorationId: restorationId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoAlertDialog buildCupertinoAlertDialog(instance, args, {namedArgs}) {
		CupertinoAlertDialog ctor({key, title, content, actions = const <Widget>[], scrollController, actionScrollController, insetAnimationDuration = const Duration(milliseconds: 100), insetAnimationCurve = Curves.decelerate}) => CupertinoAlertDialog(key: key, title: title, content: content, actions: List<Widget>.from(actions), scrollController: scrollController, actionScrollController: actionScrollController, insetAnimationDuration: insetAnimationDuration, insetAnimationCurve: insetAnimationCurve);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoPopupSurface buildCupertinoPopupSurface(instance, args, {namedArgs}) {
		CupertinoPopupSurface ctor({key, isSurfacePainted = true, child}) => CupertinoPopupSurface(key: key, isSurfacePainted: isSurfacePainted, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoDialogAction buildCupertinoDialogAction(instance, args, {namedArgs}) {
		CupertinoDialogAction ctor({key, onPressed, isDefaultAction = false, isDestructiveAction = false, textStyle, child}) => CupertinoDialogAction(key: key, onPressed: onPressed, isDefaultAction: isDefaultAction, isDestructiveAction: isDestructiveAction, textStyle: textStyle, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTabBar buildCupertinoTabBar(instance, args, {namedArgs}) {
		CupertinoTabBar ctor({key, items, onTap, currentIndex = 0, backgroundColor, activeColor, iconSize = 30.0}) => CupertinoTabBar(key: key, items: List<BottomNavigationBarItem>.from(items), onTap: onTap, currentIndex: currentIndex, backgroundColor: backgroundColor, activeColor: activeColor, iconSize: iconSize);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoDatePicker buildCupertinoDatePicker(instance, args, {namedArgs}) {
		CupertinoDatePicker ctor({key, mode = CupertinoDatePickerMode.dateAndTime, onDateTimeChanged, initialDateTime, minimumDate, maximumDate, minimumYear = 1, maximumYear, minuteInterval = 1, use24hFormat = false, backgroundColor}) => CupertinoDatePicker(key: key, mode: mode, onDateTimeChanged: onDateTimeChanged, initialDateTime: initialDateTime, minimumDate: minimumDate, maximumDate: maximumDate, minimumYear: minimumYear, maximumYear: maximumYear, minuteInterval: minuteInterval, use24hFormat: use24hFormat, backgroundColor: backgroundColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTimerPicker buildCupertinoTimerPicker(instance, args, {namedArgs}) {
		CupertinoTimerPicker ctor({key, mode = CupertinoTimerPickerMode.hms, initialTimerDuration = Duration.zero, minuteInterval = 1, secondInterval = 1, alignment = Alignment.center, backgroundColor, onTimerDurationChanged}) => CupertinoTimerPicker(key: key, mode: mode, initialTimerDuration: initialTimerDuration, minuteInterval: minuteInterval, secondInterval: secondInterval, alignment: alignment, backgroundColor: backgroundColor, onTimerDurationChanged: onTimerDurationChanged);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoSliverRefreshControl buildCupertinoSliverRefreshControl(instance, args, {namedArgs}) {
		CupertinoSliverRefreshControl ctor({key, onRefresh}) => CupertinoSliverRefreshControl(key: key, onRefresh: onRefresh);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoPicker buildCupertinoPicker(instance, args, {namedArgs}) {
		CupertinoPicker ctor({key, backgroundColor, offAxisFraction = 0.0, useMagnifier = false, magnification = 1.0, scrollController, itemExtent, onSelectedItemChanged, children, selectionOverlay = const CupertinoPickerDefaultSelectionOverlay(), looping = false}) => CupertinoPicker(key: key, backgroundColor: backgroundColor, offAxisFraction: offAxisFraction, useMagnifier: useMagnifier, magnification: magnification, scrollController: scrollController, itemExtent: itemExtent, onSelectedItemChanged: onSelectedItemChanged, children: List<Widget>.from(children), selectionOverlay: selectionOverlay, looping: looping);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoPicker buildCupertinoPicker_builder(instance, args, {namedArgs}) {
		CupertinoPicker ctor({key, backgroundColor, offAxisFraction = 0.0, useMagnifier = false, magnification = 1.0, scrollController, itemExtent, onSelectedItemChanged, itemBuilder, childCount, selectionOverlay = const CupertinoPickerDefaultSelectionOverlay()}) => CupertinoPicker.builder(key: key, backgroundColor: backgroundColor, offAxisFraction: offAxisFraction, useMagnifier: useMagnifier, magnification: magnification, scrollController: scrollController, itemExtent: itemExtent, onSelectedItemChanged: onSelectedItemChanged, itemBuilder: itemBuilder, childCount: childCount, selectionOverlay: selectionOverlay);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoPickerDefaultSelectionOverlay buildCupertinoPickerDefaultSelectionOverlay(instance, args, {namedArgs}) {
		CupertinoPickerDefaultSelectionOverlay ctor({key, background = CupertinoColors.tertiarySystemFill, capLeftEdge = true, capRightEdge = true}) => CupertinoPickerDefaultSelectionOverlay(key: key, background: background, capLeftEdge: capLeftEdge, capRightEdge: capRightEdge);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoContextMenu buildCupertinoContextMenu(instance, args, {namedArgs}) {
		CupertinoContextMenu ctor({key, actions, child, previewBuilder}) => CupertinoContextMenu(key: key, actions: List<Widget>.from(actions), child: child, previewBuilder: previewBuilder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoPageTransition buildCupertinoPageTransition(instance, args, {namedArgs}) {
		CupertinoPageTransition ctor({key, primaryRouteAnimation, secondaryRouteAnimation, child, linearTransition}) => CupertinoPageTransition(key: key, primaryRouteAnimation: primaryRouteAnimation, secondaryRouteAnimation: secondaryRouteAnimation, child: child, linearTransition: linearTransition);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoFullscreenDialogTransition buildCupertinoFullscreenDialogTransition(instance, args, {namedArgs}) {
		CupertinoFullscreenDialogTransition ctor({key, primaryRouteAnimation, secondaryRouteAnimation, child, linearTransition}) => CupertinoFullscreenDialogTransition(key: key, primaryRouteAnimation: primaryRouteAnimation, secondaryRouteAnimation: secondaryRouteAnimation, child: child, linearTransition: linearTransition);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoActivityIndicator buildCupertinoActivityIndicator(instance, args, {namedArgs}) {
		CupertinoActivityIndicator ctor({key, animating = true}) => CupertinoActivityIndicator(key: key, animating: animating);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoActivityIndicator buildCupertinoActivityIndicator_partiallyRevealed(instance, args, {namedArgs}) {
		CupertinoActivityIndicator ctor({key, progress = 1.0}) => CupertinoActivityIndicator.partiallyRevealed(key: key, progress: progress);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoSlider buildCupertinoSlider(instance, args, {namedArgs}) {
		CupertinoSlider ctor({key, value, onChanged, onChangeStart, onChangeEnd, min = 0.0, max = 1.0, divisions, activeColor, thumbColor = CupertinoColors.white}) => CupertinoSlider(key: key, value: value, onChanged: onChanged, onChangeStart: onChangeStart, onChangeEnd: onChangeEnd, min: min, max: max, divisions: divisions, activeColor: activeColor, thumbColor: thumbColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoPageScaffold buildCupertinoPageScaffold(instance, args, {namedArgs}) {
		CupertinoPageScaffold ctor({key, navigationBar, backgroundColor, resizeToAvoidBottomInset = true, child}) => CupertinoPageScaffold(key: key, navigationBar: navigationBar, backgroundColor: backgroundColor, resizeToAvoidBottomInset: resizeToAvoidBottomInset, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoFormSection buildCupertinoFormSection(instance, args, {namedArgs}) {
		CupertinoFormSection ctor({key, children, header, footer, margin = EdgeInsets.zero, backgroundColor = CupertinoColors.systemGroupedBackground, decoration, clipBehavior = Clip.none}) => CupertinoFormSection(key: key, children: List<Widget>.from(children), header: header, footer: footer, margin: margin, backgroundColor: backgroundColor, decoration: decoration, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoFormSection buildCupertinoFormSection_insetGrouped(instance, args, {namedArgs}) {
		CupertinoFormSection ctor({key, children, header, footer, backgroundColor = CupertinoColors.systemGroupedBackground, decoration, clipBehavior = Clip.none}) => CupertinoFormSection.insetGrouped(key: key, children: List<Widget>.from(children), header: header, footer: footer, backgroundColor: backgroundColor, decoration: decoration, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTextFormFieldRow buildCupertinoTextFormFieldRow(instance, args, {namedArgs}) {
		CupertinoTextFormFieldRow ctor({key, prefix, padding, controller, initialValue, focusNode, decoration, keyboardType, textCapitalization = TextCapitalization.none, textInputAction, style, strutStyle, textAlign = TextAlign.start, textAlignVertical, autofocus = false, readOnly = false, toolbarOptions, showCursor, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, maxLines = 1, minLines, expands = false, maxLength, onChanged, onTap, onEditingComplete, onFieldSubmitted, onSaved, validator, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorColor, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), enableInteractiveSelection = true, selectionControls, scrollPhysics, autofillHints, autovalidateMode = AutovalidateMode.disabled, placeholder, placeholderStyle = const TextStyle(fontWeight: FontWeight.w400, color: CupertinoColors.placeholderText)}) => CupertinoTextFormFieldRow(key: key, prefix: prefix, padding: padding, controller: controller, initialValue: initialValue, focusNode: focusNode, decoration: decoration, keyboardType: keyboardType, textCapitalization: textCapitalization, textInputAction: textInputAction, style: style, strutStyle: strutStyle, textAlign: textAlign, textAlignVertical: textAlignVertical, autofocus: autofocus, readOnly: readOnly, toolbarOptions: toolbarOptions, showCursor: showCursor, obscuringCharacter: obscuringCharacter, obscureText: obscureText, autocorrect: autocorrect, smartDashesType: smartDashesType, smartQuotesType: smartQuotesType, enableSuggestions: enableSuggestions, maxLines: maxLines, minLines: minLines, expands: expands, maxLength: maxLength, onChanged: onChanged, onTap: onTap, onEditingComplete: onEditingComplete, onFieldSubmitted: onFieldSubmitted, onSaved: onSaved, validator: validator, inputFormatters: List<TextInputFormatter>.from(inputFormatters), enabled: enabled, cursorWidth: cursorWidth, cursorHeight: cursorHeight, cursorColor: cursorColor, keyboardAppearance: keyboardAppearance, scrollPadding: scrollPadding, enableInteractiveSelection: enableInteractiveSelection, selectionControls: selectionControls, scrollPhysics: scrollPhysics, autofillHints: autofillHints, autovalidateMode: autovalidateMode, placeholder: placeholder, placeholderStyle: placeholderStyle);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoContextMenuAction buildCupertinoContextMenuAction(instance, args, {namedArgs}) {
		CupertinoContextMenuAction ctor({key, child, isDefaultAction = false, isDestructiveAction = false, onPressed, trailingIcon}) => CupertinoContextMenuAction(key: key, child: child, isDefaultAction: isDefaultAction, isDestructiveAction: isDestructiveAction, onPressed: onPressed, trailingIcon: trailingIcon);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoSwitch buildCupertinoSwitch(instance, args, {namedArgs}) {
		CupertinoSwitch ctor({key, value, onChanged, activeColor, trackColor, dragStartBehavior = DragStartBehavior.start}) => CupertinoSwitch(key: key, value: value, onChanged: onChanged, activeColor: activeColor, trackColor: trackColor, dragStartBehavior: dragStartBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoScrollbar buildCupertinoScrollbar(instance, args, {namedArgs}) {
		CupertinoScrollbar ctor({key, child, controller, isAlwaysShown = false, thickness = CupertinoScrollbar.defaultThickness, thicknessWhileDragging = CupertinoScrollbar.defaultThicknessWhileDragging, radius = CupertinoScrollbar.defaultRadius, radiusWhileDragging = CupertinoScrollbar.defaultRadiusWhileDragging, notificationPredicate}) => CupertinoScrollbar(key: key, child: child, controller: controller, isAlwaysShown: isAlwaysShown, thickness: thickness, thicknessWhileDragging: thicknessWhileDragging, radius: radius, radiusWhileDragging: radiusWhileDragging, notificationPredicate: notificationPredicate);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoApp buildCupertinoApp(instance, args, {namedArgs}) {
		CupertinoApp ctor({key, navigatorKey, home, theme, routes = const <String, WidgetBuilder>{}, initialRoute, onGenerateRoute, onGenerateInitialRoutes, onUnknownRoute, navigatorObservers = const <NavigatorObserver>[], builder, title = '', onGenerateTitle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowCheckedModeBanner = true, shortcuts, actions, restorationScopeId}) => CupertinoApp(key: key, navigatorKey: navigatorKey, home: home, theme: theme, routes: routes, initialRoute: initialRoute, onGenerateRoute: onGenerateRoute, onGenerateInitialRoutes: onGenerateInitialRoutes, onUnknownRoute: onUnknownRoute, navigatorObservers: List<NavigatorObserver>.from(navigatorObservers), builder: builder, title: title, onGenerateTitle: onGenerateTitle, color: color, locale: locale, localizationsDelegates: localizationsDelegates, localeListResolutionCallback: localeListResolutionCallback, localeResolutionCallback: localeResolutionCallback, supportedLocales: supportedLocales, showPerformanceOverlay: showPerformanceOverlay, checkerboardRasterCacheImages: checkerboardRasterCacheImages, checkerboardOffscreenLayers: checkerboardOffscreenLayers, showSemanticsDebugger: showSemanticsDebugger, debugShowCheckedModeBanner: debugShowCheckedModeBanner, shortcuts: shortcuts, actions: actions, restorationScopeId: restorationScopeId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoApp buildCupertinoApp_router(instance, args, {namedArgs}) {
		CupertinoApp ctor({key, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher, theme, builder, title = '', onGenerateTitle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowCheckedModeBanner = true, shortcuts, actions, restorationScopeId}) => CupertinoApp.router(key: key, routeInformationProvider: routeInformationProvider, routeInformationParser: routeInformationParser, routerDelegate: routerDelegate, backButtonDispatcher: backButtonDispatcher, theme: theme, builder: builder, title: title, onGenerateTitle: onGenerateTitle, color: color, locale: locale, localizationsDelegates: localizationsDelegates, localeListResolutionCallback: localeListResolutionCallback, localeResolutionCallback: localeResolutionCallback, supportedLocales: supportedLocales, showPerformanceOverlay: showPerformanceOverlay, checkerboardRasterCacheImages: checkerboardRasterCacheImages, checkerboardOffscreenLayers: checkerboardOffscreenLayers, showSemanticsDebugger: showSemanticsDebugger, debugShowCheckedModeBanner: debugShowCheckedModeBanner, shortcuts: shortcuts, actions: actions, restorationScopeId: restorationScopeId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoNavigationBar buildCupertinoNavigationBar(instance, args, {namedArgs}) {
		CupertinoNavigationBar ctor({key, leading, automaticallyImplyLeading = true, automaticallyImplyMiddle = true, previousPageTitle, middle, trailing, backgroundColor, brightness, padding, transitionBetweenRoutes = true}) => CupertinoNavigationBar(key: key, leading: leading, automaticallyImplyLeading: automaticallyImplyLeading, automaticallyImplyMiddle: automaticallyImplyMiddle, previousPageTitle: previousPageTitle, middle: middle, trailing: trailing, backgroundColor: backgroundColor, brightness: brightness, padding: padding, transitionBetweenRoutes: transitionBetweenRoutes);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoSliverNavigationBar buildCupertinoSliverNavigationBar(instance, args, {namedArgs}) {
		CupertinoSliverNavigationBar ctor({key, largeTitle, leading, automaticallyImplyLeading = true, automaticallyImplyTitle = true, previousPageTitle, middle, trailing, backgroundColor, brightness, padding, transitionBetweenRoutes = true, stretch = false}) => CupertinoSliverNavigationBar(key: key, largeTitle: largeTitle, leading: leading, automaticallyImplyLeading: automaticallyImplyLeading, automaticallyImplyTitle: automaticallyImplyTitle, previousPageTitle: previousPageTitle, middle: middle, trailing: trailing, backgroundColor: backgroundColor, brightness: brightness, padding: padding, transitionBetweenRoutes: transitionBetweenRoutes, stretch: stretch);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoNavigationBarBackButton buildCupertinoNavigationBarBackButton(instance, args, {namedArgs}) {
		CupertinoNavigationBarBackButton ctor({key, color, previousPageTitle, onPressed}) => CupertinoNavigationBarBackButton(key: key, color: color, previousPageTitle: previousPageTitle, onPressed: onPressed);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CupertinoTheme buildCupertinoTheme(instance, args, {namedArgs}) {
		CupertinoTheme ctor({key, data, child}) => CupertinoTheme(key: key, data: data, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DayPicker buildDayPicker(instance, args, {namedArgs}) {
		DayPicker ctor({key, selectedDate, currentDate, onChanged, firstDate, lastDate, displayedMonth, selectableDayPredicate, dragStartBehavior = DragStartBehavior.start}) => DayPicker(key: key, selectedDate: selectedDate, currentDate: currentDate, onChanged: onChanged, firstDate: firstDate, lastDate: lastDate, displayedMonth: displayedMonth, selectableDayPredicate: selectableDayPredicate, dragStartBehavior: dragStartBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MonthPicker buildMonthPicker(instance, args, {namedArgs}) {
		MonthPicker ctor({key, selectedDate, onChanged, firstDate, lastDate, selectableDayPredicate, dragStartBehavior = DragStartBehavior.start}) => MonthPicker(key: key, selectedDate: selectedDate, onChanged: onChanged, firstDate: firstDate, lastDate: lastDate, selectableDayPredicate: selectableDayPredicate, dragStartBehavior: dragStartBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DrawerHeader buildDrawerHeader(instance, args, {namedArgs}) {
		DrawerHeader ctor({key, decoration, margin = const EdgeInsets.only(bottom: 8.0), padding = const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0), duration = const Duration(milliseconds: 250), curve = Curves.fastOutSlowIn, child}) => DrawerHeader(key: key, decoration: decoration, margin: margin, padding: padding, duration: duration, curve: curve, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MaterialButton buildMaterialButton(instance, args, {namedArgs}) {
		MaterialButton ctor({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, padding, visualDensity, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, animationDuration, minWidth, height, enableFeedback = true, child}) => MaterialButton(key: key, onPressed: onPressed, onLongPress: onLongPress, onHighlightChanged: onHighlightChanged, mouseCursor: mouseCursor, textTheme: textTheme, textColor: textColor, disabledTextColor: disabledTextColor, color: color, disabledColor: disabledColor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, colorBrightness: colorBrightness, elevation: elevation, focusElevation: focusElevation, hoverElevation: hoverElevation, highlightElevation: highlightElevation, disabledElevation: disabledElevation, padding: padding, visualDensity: visualDensity, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, materialTapTargetSize: materialTapTargetSize, animationDuration: animationDuration, minWidth: minWidth, height: height, enableFeedback: enableFeedback, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static GridTile buildGridTile(instance, args, {namedArgs}) {
		GridTile ctor({key, header, footer, child}) => GridTile(key: key, header: header, footer: footer, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Material buildMaterial(instance, args, {namedArgs}) {
		Material ctor({key, type = MaterialType.canvas, elevation = 0.0, color, shadowColor, textStyle, borderRadius, shape, borderOnForeground = true, clipBehavior = Clip.none, animationDuration = kThemeChangeDuration, child}) => Material(key: key, type: type, elevation: elevation, color: color, shadowColor: shadowColor, textStyle: textStyle, borderRadius: borderRadius, shape: shape, borderOnForeground: borderOnForeground, clipBehavior: clipBehavior, animationDuration: animationDuration, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ScaffoldMessenger buildScaffoldMessenger(instance, args, {namedArgs}) {
		ScaffoldMessenger ctor({key, child}) => ScaffoldMessenger(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Scaffold buildScaffold(instance, args, {namedArgs}) {
		Scaffold ctor({key, appBar, body, floatingActionButton, floatingActionButtonLocation, floatingActionButtonAnimator, persistentFooterButtons, drawer, onDrawerChanged, endDrawer, onEndDrawerChanged, bottomNavigationBar, bottomSheet, backgroundColor, resizeToAvoidBottomInset, primary = true, drawerDragStartBehavior = DragStartBehavior.start, extendBody = false, extendBodyBehindAppBar = false, drawerScrimColor, drawerEdgeDragWidth, drawerEnableOpenDragGesture = true, endDrawerEnableOpenDragGesture = true, restorationId}) => Scaffold(key: key, appBar: appBar, body: body, floatingActionButton: floatingActionButton, floatingActionButtonLocation: floatingActionButtonLocation, floatingActionButtonAnimator: floatingActionButtonAnimator, persistentFooterButtons: List<Widget>.from(persistentFooterButtons), drawer: drawer, onDrawerChanged: onDrawerChanged, endDrawer: endDrawer, onEndDrawerChanged: onEndDrawerChanged, bottomNavigationBar: bottomNavigationBar, bottomSheet: bottomSheet, backgroundColor: backgroundColor, resizeToAvoidBottomInset: resizeToAvoidBottomInset, primary: primary, drawerDragStartBehavior: drawerDragStartBehavior, extendBody: extendBody, extendBodyBehindAppBar: extendBodyBehindAppBar, drawerScrimColor: drawerScrimColor, drawerEdgeDragWidth: drawerEdgeDragWidth, drawerEnableOpenDragGesture: drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture, restorationId: restorationId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ToggleButtonsThemeData buildToggleButtonsThemeData(instance, args, {namedArgs}) {
		ToggleButtonsThemeData ctor({textStyle, constraints, color, selectedColor, disabledColor, fillColor, focusColor, highlightColor, hoverColor, splashColor, borderColor, selectedBorderColor, disabledBorderColor, borderRadius, borderWidth}) => ToggleButtonsThemeData(textStyle: textStyle, constraints: constraints, color: color, selectedColor: selectedColor, disabledColor: disabledColor, fillColor: fillColor, focusColor: focusColor, highlightColor: highlightColor, hoverColor: hoverColor, splashColor: splashColor, borderColor: borderColor, selectedBorderColor: selectedBorderColor, disabledBorderColor: disabledBorderColor, borderRadius: borderRadius, borderWidth: borderWidth);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BackButtonIcon buildBackButtonIcon(instance, args, {namedArgs}) {
		BackButtonIcon ctor({key}) => BackButtonIcon(key: key);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BackButton buildBackButton(instance, args, {namedArgs}) {
		BackButton ctor({key, color, onPressed}) => BackButton(key: key, color: color, onPressed: onPressed);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CloseButton buildCloseButton(instance, args, {namedArgs}) {
		CloseButton ctor({key, color, onPressed}) => CloseButton(key: key, color: color, onPressed: onPressed);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TextSelectionToolbarTextButton buildTextSelectionToolbarTextButton(instance, args, {namedArgs}) {
		TextSelectionToolbarTextButton ctor({key, child, padding, onPressed}) => TextSelectionToolbarTextButton(key: key, child: child, padding: padding, onPressed: onPressed);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TextField buildTextField(instance, args, {namedArgs}) {
		TextField ctor({key, controller, focusNode, decoration = const InputDecoration(), keyboardType, textInputAction, textCapitalization = TextCapitalization.none, style, strutStyle, textAlign = TextAlign.start, textAlignVertical, textDirection, readOnly = false, toolbarOptions, showCursor, autofocus = false, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, maxLines = 1, minLines, expands = false, maxLength, maxLengthEnforcement, onChanged, onEditingComplete, onSubmitted, onAppPrivateCommand, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorColor, selectionHeightStyle = BoxHeightStyle.tight, selectionWidthStyle = BoxWidthStyle.tight, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, mouseCursor, buildCounter, scrollController, scrollPhysics, autofillHints, restorationId}) => TextField(key: key, controller: controller, focusNode: focusNode, decoration: decoration, keyboardType: keyboardType, textInputAction: textInputAction, textCapitalization: textCapitalization, style: style, strutStyle: strutStyle, textAlign: textAlign, textAlignVertical: textAlignVertical, textDirection: textDirection, readOnly: readOnly, toolbarOptions: toolbarOptions, showCursor: showCursor, autofocus: autofocus, obscuringCharacter: obscuringCharacter, obscureText: obscureText, autocorrect: autocorrect, smartDashesType: smartDashesType, smartQuotesType: smartQuotesType, enableSuggestions: enableSuggestions, maxLines: maxLines, minLines: minLines, expands: expands, maxLength: maxLength, maxLengthEnforcement: maxLengthEnforcement, onChanged: onChanged, onEditingComplete: onEditingComplete, onSubmitted: onSubmitted, onAppPrivateCommand: onAppPrivateCommand, inputFormatters: List<TextInputFormatter>.from(inputFormatters), enabled: enabled, cursorWidth: cursorWidth, cursorHeight: cursorHeight, cursorRadius: cursorRadius, cursorColor: cursorColor, selectionHeightStyle: selectionHeightStyle, selectionWidthStyle: selectionWidthStyle, keyboardAppearance: keyboardAppearance, scrollPadding: scrollPadding, dragStartBehavior: dragStartBehavior, enableInteractiveSelection: enableInteractiveSelection, selectionControls: selectionControls, onTap: onTap, mouseCursor: mouseCursor, buildCounter: buildCounter, scrollController: scrollController, scrollPhysics: scrollPhysics, autofillHints: autofillHints, restorationId: restorationId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AboutListTile buildAboutListTile(instance, args, {namedArgs}) {
		AboutListTile ctor({key, icon, child, applicationName, applicationVersion, applicationIcon, applicationLegalese, aboutBoxChildren, dense}) => AboutListTile(key: key, icon: icon, child: child, applicationName: applicationName, applicationVersion: applicationVersion, applicationIcon: applicationIcon, applicationLegalese: applicationLegalese, aboutBoxChildren: List<Widget>.from(aboutBoxChildren), dense: dense);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AboutDialog buildAboutDialog(instance, args, {namedArgs}) {
		AboutDialog ctor({key, applicationName, applicationVersion, applicationIcon, applicationLegalese, children}) => AboutDialog(key: key, applicationName: applicationName, applicationVersion: applicationVersion, applicationIcon: applicationIcon, applicationLegalese: applicationLegalese, children: List<Widget>.from(children));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static LicensePage buildLicensePage(instance, args, {namedArgs}) {
		LicensePage ctor({key, applicationName, applicationVersion, applicationIcon, applicationLegalese}) => LicensePage(key: key, applicationName: applicationName, applicationVersion: applicationVersion, applicationIcon: applicationIcon, applicationLegalese: applicationLegalese);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TextSelectionToolbar buildTextSelectionToolbar(instance, args, {namedArgs}) {
		TextSelectionToolbar ctor({key, anchorAbove, anchorBelow, children}) => TextSelectionToolbar(key: key, anchorAbove: anchorAbove, anchorBelow: anchorBelow, children: List<Widget>.from(children));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RadioListTile buildRadioListTile(instance, args, {namedArgs}) {
		RadioListTile ctor({key, value, groupValue, onChanged, toggleable = false, activeColor, title, subtitle, isThreeLine = false, dense, secondary, selected = false, controlAffinity = ListTileControlAffinity.platform, autofocus = false, contentPadding, shape, tileColor, selectedTileColor}) => RadioListTile(key: key, value: value, groupValue: groupValue, onChanged: onChanged, toggleable: toggleable, activeColor: activeColor, title: title, subtitle: subtitle, isThreeLine: isThreeLine, dense: dense, secondary: secondary, selected: selected, controlAffinity: controlAffinity, autofocus: autofocus, contentPadding: contentPadding, shape: shape, tileColor: tileColor, selectedTileColor: selectedTileColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RefreshIndicator buildRefreshIndicator(instance, args, {namedArgs}) {
		RefreshIndicator ctor({key, child, displacement = 40.0, onRefresh, color, backgroundColor, notificationPredicate = defaultScrollNotificationPredicate, semanticsLabel, semanticsValue, strokeWidth = 2.0, triggerMode = RefreshIndicatorTriggerMode.onEdge}) => RefreshIndicator(key: key, child: child, displacement: displacement, onRefresh: onRefresh, color: color, backgroundColor: backgroundColor, notificationPredicate: notificationPredicate, semanticsLabel: semanticsLabel, semanticsValue: semanticsValue, strokeWidth: strokeWidth, triggerMode: triggerMode);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static InputDatePickerFormField buildInputDatePickerFormField(instance, args, {namedArgs}) {
		InputDatePickerFormField ctor({key, initialDate, firstDate, lastDate, onDateSubmitted, onDateSaved, selectableDayPredicate, errorFormatText, errorInvalidText, fieldHintText, fieldLabelText, autofocus = false}) => InputDatePickerFormField(key: key, initialDate: initialDate, firstDate: firstDate, lastDate: lastDate, onDateSubmitted: onDateSubmitted, onDateSaved: onDateSaved, selectableDayPredicate: selectableDayPredicate, errorFormatText: errorFormatText, errorInvalidText: errorInvalidText, fieldHintText: fieldHintText, fieldLabelText: fieldLabelText, autofocus: autofocus);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static GridTileBar buildGridTileBar(instance, args, {namedArgs}) {
		GridTileBar ctor({key, backgroundColor, leading, title, subtitle, trailing}) => GridTileBar(key: key, backgroundColor: backgroundColor, leading: leading, title: title, subtitle: subtitle, trailing: trailing);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SelectableText buildSelectableText(instance, args, {namedArgs}) {
		SelectableText ctor(data, {key, focusNode, style, strutStyle, textAlign, textDirection, textScaleFactor, showCursor = false, autofocus = false, toolbarOptions, minLines, maxLines, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorColor, dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, scrollPhysics, textHeightBehavior, textWidthBasis, onSelectionChanged}) => SelectableText(data, key: key, focusNode: focusNode, style: style, strutStyle: strutStyle, textAlign: textAlign, textDirection: textDirection, textScaleFactor: textScaleFactor, showCursor: showCursor, autofocus: autofocus, toolbarOptions: toolbarOptions, minLines: minLines, maxLines: maxLines, cursorWidth: cursorWidth, cursorHeight: cursorHeight, cursorRadius: cursorRadius, cursorColor: cursorColor, dragStartBehavior: dragStartBehavior, enableInteractiveSelection: enableInteractiveSelection, selectionControls: selectionControls, onTap: onTap, scrollPhysics: scrollPhysics, textHeightBehavior: textHeightBehavior, textWidthBasis: textWidthBasis, onSelectionChanged: onSelectionChanged);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SelectableText buildSelectableText_rich(instance, args, {namedArgs}) {
		SelectableText ctor(textSpan, {key, focusNode, style, strutStyle, textAlign, textDirection, textScaleFactor, showCursor = false, autofocus = false, toolbarOptions, minLines, maxLines, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorColor, dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, selectionControls, onTap, scrollPhysics, textHeightBehavior, textWidthBasis, onSelectionChanged}) => SelectableText.rich(textSpan, key: key, focusNode: focusNode, style: style, strutStyle: strutStyle, textAlign: textAlign, textDirection: textDirection, textScaleFactor: textScaleFactor, showCursor: showCursor, autofocus: autofocus, toolbarOptions: toolbarOptions, minLines: minLines, maxLines: maxLines, cursorWidth: cursorWidth, cursorHeight: cursorHeight, cursorRadius: cursorRadius, cursorColor: cursorColor, dragStartBehavior: dragStartBehavior, enableInteractiveSelection: enableInteractiveSelection, selectionControls: selectionControls, onTap: onTap, scrollPhysics: scrollPhysics, textHeightBehavior: textHeightBehavior, textWidthBasis: textWidthBasis, onSelectionChanged: onSelectionChanged);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CircleAvatar buildCircleAvatar(instance, args, {namedArgs}) {
		CircleAvatar ctor({key, child, backgroundColor, backgroundImage, foregroundImage, onBackgroundImageError, onForegroundImageError, foregroundColor, radius, minRadius, maxRadius}) => CircleAvatar(key: key, child: child, backgroundColor: backgroundColor, backgroundImage: backgroundImage, foregroundImage: foregroundImage, onBackgroundImageError: onBackgroundImageError, onForegroundImageError: onForegroundImageError, foregroundColor: foregroundColor, radius: radius, minRadius: minRadius, maxRadius: maxRadius);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Ink buildInk(instance, args, {namedArgs}) {
		Ink ctor({key, padding, color, decoration, width, height, child}) => Ink(key: key, padding: padding, color: color, decoration: decoration, width: width, height: height, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Ink buildInk_image(instance, args, {namedArgs}) {
		Ink ctor({key, padding, image, onImageError, colorFilter, fit, alignment = Alignment.center, centerSlice, repeat = ImageRepeat.noRepeat, matchTextDirection = false, width, height, child}) => Ink.image(key: key, padding: padding, image: image, onImageError: onImageError, colorFilter: colorFilter, fit: fit, alignment: alignment, centerSlice: centerSlice, repeat: repeat, matchTextDirection: matchTextDirection, width: width, height: height, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ButtonBar buildButtonBar(instance, args, {namedArgs}) {
		ButtonBar ctor({key, alignment, mainAxisSize, buttonTextTheme, buttonMinWidth, buttonHeight, buttonPadding, buttonAlignedDropdown, layoutBehavior, overflowDirection, overflowButtonSpacing, children = const <Widget>[]}) => ButtonBar(key: key, alignment: alignment, mainAxisSize: mainAxisSize, buttonTextTheme: buttonTextTheme, buttonMinWidth: buttonMinWidth, buttonHeight: buttonHeight, buttonPadding: buttonPadding, buttonAlignedDropdown: buttonAlignedDropdown, layoutBehavior: layoutBehavior, overflowDirection: overflowDirection, overflowButtonSpacing: overflowButtonSpacing, children: List<Widget>.from(children));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MaterialColor buildMaterialColor(instance, args, {namedArgs}) {
		MaterialColor ctor(primary, swatch) => MaterialColor(primary, swatch);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SnackBarAction buildSnackBarAction(instance, args, {namedArgs}) {
		SnackBarAction ctor({key, textColor, disabledTextColor, label, onPressed}) => SnackBarAction(key: key, textColor: textColor, disabledTextColor: disabledTextColor, label: label, onPressed: onPressed);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SnackBar buildSnackBar(instance, args, {namedArgs}) {
		SnackBar ctor({key, content, backgroundColor, elevation, margin, padding, width, shape, behavior, action, animation, onVisible}) => SnackBar(key: key, content: content, backgroundColor: backgroundColor, elevation: elevation, margin: margin, padding: padding, width: width, shape: shape, behavior: behavior, action: action, animation: animation, onVisible: onVisible);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static InputDecorator buildInputDecorator(instance, args, {namedArgs}) {
		InputDecorator ctor({key, decoration, baseStyle, textAlign, textAlignVertical, isFocused = false, isHovering = false, expands = false, isEmpty = false, child}) => InputDecorator(key: key, decoration: decoration, baseStyle: baseStyle, textAlign: textAlign, textAlignVertical: textAlignVertical, isFocused: isFocused, isHovering: isHovering, expands: expands, isEmpty: isEmpty, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ReorderableListView buildReorderableListView(instance, args, {namedArgs}) {
		ReorderableListView ctor({key, children, onReorder, proxyDecorator, buildDefaultDragHandles = true, padding, header, scrollDirection = Axis.vertical, reverse = false, scrollController, primary, physics, shrinkWrap = false, anchor = 0.0, cacheExtent, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ReorderableListView(key: key, children: List<Widget>.from(children), onReorder: onReorder, proxyDecorator: proxyDecorator, buildDefaultDragHandles: buildDefaultDragHandles, padding: padding, header: header, scrollDirection: scrollDirection, reverse: reverse, scrollController: scrollController, primary: primary, physics: physics, shrinkWrap: shrinkWrap, anchor: anchor, cacheExtent: cacheExtent, dragStartBehavior: dragStartBehavior, keyboardDismissBehavior: keyboardDismissBehavior, restorationId: restorationId, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ReorderableListView buildReorderableListView_builder(instance, args, {namedArgs}) {
		ReorderableListView ctor({key, itemBuilder, itemCount, onReorder, proxyDecorator, buildDefaultDragHandles = true, padding, header, scrollDirection = Axis.vertical, reverse = false, scrollController, primary, physics, shrinkWrap = false, anchor = 0.0, cacheExtent, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ReorderableListView.builder(key: key, itemBuilder: itemBuilder, itemCount: itemCount, onReorder: onReorder, proxyDecorator: proxyDecorator, buildDefaultDragHandles: buildDefaultDragHandles, padding: padding, header: header, scrollDirection: scrollDirection, reverse: reverse, scrollController: scrollController, primary: primary, physics: physics, shrinkWrap: shrinkWrap, anchor: anchor, cacheExtent: cacheExtent, dragStartBehavior: dragStartBehavior, keyboardDismissBehavior: keyboardDismissBehavior, restorationId: restorationId, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Card buildCard(instance, args, {namedArgs}) {
		Card ctor({key, color, shadowColor, elevation, shape, borderOnForeground = true, margin, clipBehavior, child, semanticContainer = true}) => Card(key: key, color: color, shadowColor: shadowColor, elevation: elevation, shape: shape, borderOnForeground: borderOnForeground, margin: margin, clipBehavior: clipBehavior, child: child, semanticContainer: semanticContainer);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RawMaterialButton buildRawMaterialButton(instance, args, {namedArgs}) {
		RawMaterialButton ctor({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textStyle, fillColor, focusColor, hoverColor, highlightColor, splashColor, elevation = 2.0, focusElevation = 4.0, hoverElevation = 4.0, highlightElevation = 8.0, disabledElevation = 0.0, padding = EdgeInsets.zero, visualDensity = VisualDensity.standard, constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0), shape = const RoundedRectangleBorder(), animationDuration = kThemeChangeDuration, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, child, enableFeedback = true}) => RawMaterialButton(key: key, onPressed: onPressed, onLongPress: onLongPress, onHighlightChanged: onHighlightChanged, mouseCursor: mouseCursor, textStyle: textStyle, fillColor: fillColor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, elevation: elevation, focusElevation: focusElevation, hoverElevation: hoverElevation, highlightElevation: highlightElevation, disabledElevation: disabledElevation, padding: padding, visualDensity: visualDensity, constraints: constraints, shape: shape, animationDuration: animationDuration, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, materialTapTargetSize: materialTapTargetSize, child: child, enableFeedback: enableFeedback);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DataTable buildDataTable(instance, args, {namedArgs}) {
		DataTable ctor({key, columns, sortColumnIndex, sortAscending = true, onSelectAll, decoration, dataRowColor, dataRowHeight, dataTextStyle, headingRowColor, headingRowHeight, headingTextStyle, horizontalMargin, columnSpacing, showCheckboxColumn = true, showBottomBorder = false, dividerThickness, rows}) => DataTable(key: key, columns: List<DataColumn>.from(columns), sortColumnIndex: sortColumnIndex, sortAscending: sortAscending, onSelectAll: onSelectAll, decoration: decoration, dataRowColor: dataRowColor, dataRowHeight: dataRowHeight, dataTextStyle: dataTextStyle, headingRowColor: headingRowColor, headingRowHeight: headingRowHeight, headingTextStyle: headingTextStyle, horizontalMargin: horizontalMargin, columnSpacing: columnSpacing, showCheckboxColumn: showCheckboxColumn, showBottomBorder: showBottomBorder, dividerThickness: dividerThickness, rows: List<DataRow>.from(rows));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TableRowInkWell buildTableRowInkWell(instance, args, {namedArgs}) {
		TableRowInkWell ctor({key, child, onTap, onDoubleTap, onLongPress, onHighlightChanged, overlayColor}) => TableRowInkWell(key: key, child: child, onTap: onTap, onDoubleTap: onDoubleTap, onLongPress: onLongPress, onHighlightChanged: onHighlightChanged, overlayColor: overlayColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DefaultTabController buildDefaultTabController(instance, args, {namedArgs}) {
		DefaultTabController ctor({key, length, initialIndex = 0, child}) => DefaultTabController(key: key, length: length, initialIndex: initialIndex, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static NavigationRail buildNavigationRail(instance, args, {namedArgs}) {
		NavigationRail ctor({backgroundColor, extended = false, leading, trailing, destinations, selectedIndex, onDestinationSelected, elevation, groupAlignment, labelType, unselectedLabelTextStyle, selectedLabelTextStyle, unselectedIconTheme, selectedIconTheme, minWidth, minExtendedWidth}) => NavigationRail(backgroundColor: backgroundColor, extended: extended, leading: leading, trailing: trailing, destinations: List<NavigationRailDestination>.from(destinations), selectedIndex: selectedIndex, onDestinationSelected: onDestinationSelected, elevation: elevation, groupAlignment: groupAlignment, labelType: labelType, unselectedLabelTextStyle: unselectedLabelTextStyle, selectedLabelTextStyle: selectedLabelTextStyle, unselectedIconTheme: unselectedIconTheme, selectedIconTheme: selectedIconTheme, minWidth: minWidth, minExtendedWidth: minExtendedWidth);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RaisedButton buildRaisedButton(instance, args, {namedArgs}) {
		RaisedButton ctor({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, padding, visualDensity, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, animationDuration, child}) => RaisedButton(key: key, onPressed: onPressed, onLongPress: onLongPress, onHighlightChanged: onHighlightChanged, mouseCursor: mouseCursor, textTheme: textTheme, textColor: textColor, disabledTextColor: disabledTextColor, color: color, disabledColor: disabledColor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, colorBrightness: colorBrightness, elevation: elevation, focusElevation: focusElevation, hoverElevation: hoverElevation, highlightElevation: highlightElevation, disabledElevation: disabledElevation, padding: padding, visualDensity: visualDensity, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, materialTapTargetSize: materialTapTargetSize, animationDuration: animationDuration, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RaisedButton buildRaisedButton_icon(instance, args, {namedArgs}) {
		RaisedButton ctor({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, elevation, highlightElevation, disabledElevation, shape, clipBehavior, focusNode, autofocus, padding, materialTapTargetSize, animationDuration, icon, label}) => RaisedButton.icon(key: key, onPressed: onPressed, onLongPress: onLongPress, onHighlightChanged: onHighlightChanged, mouseCursor: mouseCursor, textTheme: textTheme, textColor: textColor, disabledTextColor: disabledTextColor, color: color, disabledColor: disabledColor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, colorBrightness: colorBrightness, elevation: elevation, highlightElevation: highlightElevation, disabledElevation: disabledElevation, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, padding: padding, materialTapTargetSize: materialTapTargetSize, animationDuration: animationDuration, icon: icon, label: label);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Dialog buildDialog(instance, args, {namedArgs}) {
		Dialog ctor({key, backgroundColor, elevation, insetAnimationDuration = const Duration(milliseconds: 100), insetAnimationCurve = Curves.decelerate, clipBehavior = Clip.none, shape, child}) => Dialog(key: key, backgroundColor: backgroundColor, elevation: elevation, insetAnimationDuration: insetAnimationDuration, insetAnimationCurve: insetAnimationCurve, clipBehavior: clipBehavior, shape: shape, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AlertDialog buildAlertDialog(instance, args, {namedArgs}) {
		AlertDialog ctor({key, title, titlePadding, titleTextStyle, content, contentPadding = const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0), contentTextStyle, actions, actionsPadding = EdgeInsets.zero, actionsOverflowDirection, actionsOverflowButtonSpacing, buttonPadding, backgroundColor, elevation, semanticLabel, clipBehavior = Clip.none, shape, scrollable = false}) => AlertDialog(key: key, title: title, titlePadding: titlePadding, titleTextStyle: titleTextStyle, content: content, contentPadding: contentPadding, contentTextStyle: contentTextStyle, actions: List<Widget>.from(actions), actionsPadding: actionsPadding, actionsOverflowDirection: actionsOverflowDirection, actionsOverflowButtonSpacing: actionsOverflowButtonSpacing, buttonPadding: buttonPadding, backgroundColor: backgroundColor, elevation: elevation, semanticLabel: semanticLabel, clipBehavior: clipBehavior, shape: shape, scrollable: scrollable);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SimpleDialogOption buildSimpleDialogOption(instance, args, {namedArgs}) {
		SimpleDialogOption ctor({key, onPressed, padding, child}) => SimpleDialogOption(key: key, onPressed: onPressed, padding: padding, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SimpleDialog buildSimpleDialog(instance, args, {namedArgs}) {
		SimpleDialog ctor({key, title, titlePadding = const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0), titleTextStyle, children, contentPadding = const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0), backgroundColor, elevation, semanticLabel, clipBehavior = Clip.none, shape}) => SimpleDialog(key: key, title: title, titlePadding: titlePadding, titleTextStyle: titleTextStyle, children: List<Widget>.from(children), contentPadding: contentPadding, backgroundColor: backgroundColor, elevation: elevation, semanticLabel: semanticLabel, clipBehavior: clipBehavior, shape: shape);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static InkResponse buildInkResponse(instance, args, {namedArgs}) {
		InkResponse ctor({key, child, onTap, onTapDown, onTapCancel, onDoubleTap, onLongPress, onHighlightChanged, onHover, mouseCursor, containedInkWell = false, highlightShape = BoxShape.circle, radius, borderRadius, customBorder, focusColor, hoverColor, highlightColor, overlayColor, splashColor, splashFactory, enableFeedback = true, excludeFromSemantics = false, focusNode, canRequestFocus = true, onFocusChange, autofocus = false}) => InkResponse(key: key, child: child, onTap: onTap, onTapDown: onTapDown, onTapCancel: onTapCancel, onDoubleTap: onDoubleTap, onLongPress: onLongPress, onHighlightChanged: onHighlightChanged, onHover: onHover, mouseCursor: mouseCursor, containedInkWell: containedInkWell, highlightShape: highlightShape, radius: radius, borderRadius: borderRadius, customBorder: customBorder, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, overlayColor: overlayColor, splashColor: splashColor, splashFactory: splashFactory, enableFeedback: enableFeedback, excludeFromSemantics: excludeFromSemantics, focusNode: focusNode, canRequestFocus: canRequestFocus, onFocusChange: onFocusChange, autofocus: autofocus);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static InkWell buildInkWell(instance, args, {namedArgs}) {
		InkWell ctor({key, child, onTap, onDoubleTap, onLongPress, onTapDown, onTapCancel, onHighlightChanged, onHover, mouseCursor, focusColor, hoverColor, highlightColor, overlayColor, splashColor, splashFactory, radius, borderRadius, customBorder, enableFeedback = true, excludeFromSemantics = false, focusNode, canRequestFocus = true, onFocusChange, autofocus = false}) => InkWell(key: key, child: child, onTap: onTap, onDoubleTap: onDoubleTap, onLongPress: onLongPress, onTapDown: onTapDown, onTapCancel: onTapCancel, onHighlightChanged: onHighlightChanged, onHover: onHover, mouseCursor: mouseCursor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, overlayColor: overlayColor, splashColor: splashColor, splashFactory: splashFactory, radius: radius, borderRadius: borderRadius, customBorder: customBorder, enableFeedback: enableFeedback, excludeFromSemantics: excludeFromSemantics, focusNode: focusNode, canRequestFocus: canRequestFocus, onFocusChange: onFocusChange, autofocus: autofocus);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Checkbox buildCheckbox(instance, args, {namedArgs}) {
		Checkbox ctor({key, value, tristate = false, onChanged, mouseCursor, activeColor, fillColor, checkColor, focusColor, hoverColor, overlayColor, splashRadius, materialTapTargetSize, visualDensity, focusNode, autofocus = false}) => Checkbox(key: key, value: value, tristate: tristate, onChanged: onChanged, mouseCursor: mouseCursor, activeColor: activeColor, fillColor: fillColor, checkColor: checkColor, focusColor: focusColor, hoverColor: hoverColor, overlayColor: overlayColor, splashRadius: splashRadius, materialTapTargetSize: materialTapTargetSize, visualDensity: visualDensity, focusNode: focusNode, autofocus: autofocus);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Radio buildRadio(instance, args, {namedArgs}) {
		Radio ctor({key, value, groupValue, onChanged, mouseCursor, toggleable = false, activeColor, fillColor, focusColor, hoverColor, overlayColor, splashRadius, materialTapTargetSize, visualDensity, focusNode, autofocus = false}) => Radio(key: key, value: value, groupValue: groupValue, onChanged: onChanged, mouseCursor: mouseCursor, toggleable: toggleable, activeColor: activeColor, fillColor: fillColor, focusColor: focusColor, hoverColor: hoverColor, overlayColor: overlayColor, splashRadius: splashRadius, materialTapTargetSize: materialTapTargetSize, visualDensity: visualDensity, focusNode: focusNode, autofocus: autofocus);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Stepper buildStepper(instance, args, {namedArgs}) {
		Stepper ctor({key, steps, physics, type = StepperType.vertical, currentStep = 0, onStepTapped, onStepContinue, onStepCancel, controlsBuilder}) => Stepper(key: key, steps: List<Step>.from(steps), physics: physics, type: type, currentStep: currentStep, onStepTapped: onStepTapped, onStepContinue: onStepContinue, onStepCancel: onStepCancel, controlsBuilder: controlsBuilder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CheckboxListTile buildCheckboxListTile(instance, args, {namedArgs}) {
		CheckboxListTile ctor({key, value, onChanged, activeColor, checkColor, tileColor, title, subtitle, isThreeLine = false, dense, secondary, selected = false, controlAffinity = ListTileControlAffinity.platform, autofocus = false, contentPadding, tristate = false, shape, selectedTileColor}) => CheckboxListTile(key: key, value: value, onChanged: onChanged, activeColor: activeColor, checkColor: checkColor, tileColor: tileColor, title: title, subtitle: subtitle, isThreeLine: isThreeLine, dense: dense, secondary: secondary, selected: selected, controlAffinity: controlAffinity, autofocus: autofocus, contentPadding: contentPadding, tristate: tristate, shape: shape, selectedTileColor: selectedTileColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Tab buildTab(instance, args, {namedArgs}) {
		Tab ctor({key, text, icon, iconMargin = const EdgeInsets.only(bottom: 10.0), child}) => Tab(key: key, text: text, icon: icon, iconMargin: iconMargin, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TabBar buildTabBar(instance, args, {namedArgs}) {
		TabBar ctor({key, tabs, controller, isScrollable = false, indicatorColor, automaticIndicatorColorAdjustment = true, indicatorWeight = 2.0, indicatorPadding = EdgeInsets.zero, indicator, indicatorSize, labelColor, labelStyle, labelPadding, unselectedLabelColor, unselectedLabelStyle, dragStartBehavior = DragStartBehavior.start, overlayColor, mouseCursor, enableFeedback, onTap, physics}) => TabBar(key: key, tabs: List<Widget>.from(tabs), controller: controller, isScrollable: isScrollable, indicatorColor: indicatorColor, automaticIndicatorColorAdjustment: automaticIndicatorColorAdjustment, indicatorWeight: indicatorWeight, indicatorPadding: indicatorPadding, indicator: indicator, indicatorSize: indicatorSize, labelColor: labelColor, labelStyle: labelStyle, labelPadding: labelPadding, unselectedLabelColor: unselectedLabelColor, unselectedLabelStyle: unselectedLabelStyle, dragStartBehavior: dragStartBehavior, overlayColor: overlayColor, mouseCursor: mouseCursor, enableFeedback: enableFeedback, onTap: onTap, physics: physics);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TabBarView buildTabBarView(instance, args, {namedArgs}) {
		TabBarView ctor({key, children, controller, physics, dragStartBehavior = DragStartBehavior.start}) => TabBarView(key: key, children: List<Widget>.from(children), controller: controller, physics: physics, dragStartBehavior: dragStartBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TabPageSelectorIndicator buildTabPageSelectorIndicator(instance, args, {namedArgs}) {
		TabPageSelectorIndicator ctor({key, backgroundColor, borderColor, size}) => TabPageSelectorIndicator(key: key, backgroundColor: backgroundColor, borderColor: borderColor, size: size);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TabPageSelector buildTabPageSelector(instance, args, {namedArgs}) {
		TabPageSelector ctor({key, controller, indicatorSize = 12.0, color, selectedColor}) => TabPageSelector(key: key, controller: controller, indicatorSize: indicatorSize, color: color, selectedColor: selectedColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FloatingActionButton buildFloatingActionButton(instance, args, {namedArgs}) {
		FloatingActionButton ctor({key, child, tooltip, foregroundColor, backgroundColor, focusColor, hoverColor, splashColor, elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, onPressed, mouseCursor, mini = false, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, isExtended = false}) => FloatingActionButton(key: key, child: child, tooltip: tooltip, foregroundColor: foregroundColor, backgroundColor: backgroundColor, focusColor: focusColor, hoverColor: hoverColor, splashColor: splashColor, elevation: elevation, focusElevation: focusElevation, hoverElevation: hoverElevation, highlightElevation: highlightElevation, disabledElevation: disabledElevation, onPressed: onPressed, mouseCursor: mouseCursor, mini: mini, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, materialTapTargetSize: materialTapTargetSize, isExtended: isExtended);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FloatingActionButton buildFloatingActionButton_extended(instance, args, {namedArgs}) {
		FloatingActionButton ctor({key, tooltip, foregroundColor, backgroundColor, focusColor, hoverColor, elevation, focusElevation, hoverElevation, splashColor, highlightElevation, disabledElevation, onPressed, mouseCursor = SystemMouseCursors.click, shape, isExtended = true, materialTapTargetSize, clipBehavior = Clip.none, focusNode, autofocus = false, icon, label}) => FloatingActionButton.extended(key: key, tooltip: tooltip, foregroundColor: foregroundColor, backgroundColor: backgroundColor, focusColor: focusColor, hoverColor: hoverColor, elevation: elevation, focusElevation: focusElevation, hoverElevation: hoverElevation, splashColor: splashColor, highlightElevation: highlightElevation, disabledElevation: disabledElevation, onPressed: onPressed, mouseCursor: mouseCursor, shape: shape, isExtended: isExtended, materialTapTargetSize: materialTapTargetSize, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, icon: icon, label: label);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RangeSlider buildRangeSlider(instance, args, {namedArgs}) {
		RangeSlider ctor({key, values, onChanged, onChangeStart, onChangeEnd, min = 0.0, max = 1.0, divisions, labels, activeColor, inactiveColor, semanticFormatterCallback}) => RangeSlider(key: key, values: values, onChanged: onChanged, onChangeStart: onChangeStart, onChangeEnd: onChangeEnd, min: min, max: max, divisions: divisions, labels: labels, activeColor: activeColor, inactiveColor: inactiveColor, semanticFormatterCallback: semanticFormatterCallback);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PopupMenuButton buildPopupMenuButton(instance, args, {namedArgs}) {
		PopupMenuButton ctor({key, itemBuilder, initialValue, onSelected, onCanceled, tooltip, elevation, padding = const EdgeInsets.all(8.0), child, icon, iconSize, offset = Offset.zero, enabled = true, shape, color, enableFeedback}) => PopupMenuButton(key: key, itemBuilder: itemBuilder, initialValue: initialValue, onSelected: onSelected, onCanceled: onCanceled, tooltip: tooltip, elevation: elevation, padding: padding, child: child, icon: icon, iconSize: iconSize, offset: offset, enabled: enabled, shape: shape, color: color, enableFeedback: enableFeedback);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ExpandIcon buildExpandIcon(instance, args, {namedArgs}) {
		ExpandIcon ctor({key, isExpanded = false, size = 24.0, onPressed, padding = const EdgeInsets.all(8.0), color, disabledColor, expandedColor}) => ExpandIcon(key: key, isExpanded: isExpanded, size: size, onPressed: onPressed, padding: padding, color: color, disabledColor: disabledColor, expandedColor: expandedColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AppBar buildAppBar(instance, args, {namedArgs}) {
		AppBar ctor({key, leading, automaticallyImplyLeading = true, title, actions, flexibleSpace, bottom, elevation, shadowColor, shape, backgroundColor, foregroundColor, brightness, iconTheme, actionsIconTheme, textTheme, primary = true, centerTitle, excludeHeaderSemantics = false, titleSpacing, toolbarOpacity = 1.0, bottomOpacity = 1.0, toolbarHeight, leadingWidth, backwardsCompatibility, toolbarTextStyle, titleTextStyle, systemOverlayStyle}) => AppBar(key: key, leading: leading, automaticallyImplyLeading: automaticallyImplyLeading, title: title, actions: List<Widget>.from(actions), flexibleSpace: flexibleSpace, bottom: bottom, elevation: elevation, shadowColor: shadowColor, shape: shape, backgroundColor: backgroundColor, foregroundColor: foregroundColor, brightness: brightness, iconTheme: iconTheme, actionsIconTheme: actionsIconTheme, textTheme: textTheme, primary: primary, centerTitle: centerTitle, excludeHeaderSemantics: excludeHeaderSemantics, titleSpacing: titleSpacing, toolbarOpacity: toolbarOpacity, bottomOpacity: bottomOpacity, toolbarHeight: toolbarHeight, leadingWidth: leadingWidth, backwardsCompatibility: backwardsCompatibility, toolbarTextStyle: toolbarTextStyle, titleTextStyle: titleTextStyle, systemOverlayStyle: systemOverlayStyle);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverAppBar buildSliverAppBar(instance, args, {namedArgs}) {
		SliverAppBar ctor({key, leading, automaticallyImplyLeading = true, title, actions, flexibleSpace, bottom, elevation, shadowColor, forceElevated = false, backgroundColor, foregroundColor, brightness, iconTheme, actionsIconTheme, textTheme, primary = true, centerTitle, excludeHeaderSemantics = false, titleSpacing, collapsedHeight, expandedHeight, floating = false, pinned = false, snap = false, stretch = false, stretchTriggerOffset = 100.0, onStretchTrigger, shape, toolbarHeight = kToolbarHeight, leadingWidth, backwardsCompatibility = true, toolbarTextStyle, titleTextStyle, systemOverlayStyle}) => SliverAppBar(key: key, leading: leading, automaticallyImplyLeading: automaticallyImplyLeading, title: title, actions: List<Widget>.from(actions), flexibleSpace: flexibleSpace, bottom: bottom, elevation: elevation, shadowColor: shadowColor, forceElevated: forceElevated, backgroundColor: backgroundColor, foregroundColor: foregroundColor, brightness: brightness, iconTheme: iconTheme, actionsIconTheme: actionsIconTheme, textTheme: textTheme, primary: primary, centerTitle: centerTitle, excludeHeaderSemantics: excludeHeaderSemantics, titleSpacing: titleSpacing, collapsedHeight: collapsedHeight, expandedHeight: expandedHeight, floating: floating, pinned: pinned, snap: snap, stretch: stretch, stretchTriggerOffset: stretchTriggerOffset, onStretchTrigger: onStretchTrigger, shape: shape, toolbarHeight: toolbarHeight, leadingWidth: leadingWidth, backwardsCompatibility: backwardsCompatibility, toolbarTextStyle: toolbarTextStyle, titleTextStyle: titleTextStyle, systemOverlayStyle: systemOverlayStyle);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BottomAppBar buildBottomAppBar(instance, args, {namedArgs}) {
		BottomAppBar ctor({key, color, elevation, shape, clipBehavior = Clip.none, notchMargin = 4.0, child}) => BottomAppBar(key: key, color: color, elevation: elevation, shape: shape, clipBehavior: clipBehavior, notchMargin: notchMargin, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static UserAccountsDrawerHeader buildUserAccountsDrawerHeader(instance, args, {namedArgs}) {
		UserAccountsDrawerHeader ctor({key, decoration, margin = const EdgeInsets.only(bottom: 8.0), currentAccountPicture, otherAccountsPictures, accountName, accountEmail, onDetailsPressed, arrowColor = Colors.white}) => UserAccountsDrawerHeader(key: key, decoration: decoration, margin: margin, currentAccountPicture: currentAccountPicture, otherAccountsPictures: List<Widget>.from(otherAccountsPictures), accountName: accountName, accountEmail: accountEmail, onDetailsPressed: onDetailsPressed, arrowColor: arrowColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MaterialBanner buildMaterialBanner(instance, args, {namedArgs}) {
		MaterialBanner ctor({key, content, contentTextStyle, actions, leading, backgroundColor, padding, leadingPadding, forceActionsBelow = false, overflowAlignment = OverflowBarAlignment.end}) => MaterialBanner(key: key, content: content, contentTextStyle: contentTextStyle, actions: List<Widget>.from(actions), leading: leading, backgroundColor: backgroundColor, padding: padding, leadingPadding: leadingPadding, forceActionsBelow: forceActionsBelow, overflowAlignment: overflowAlignment);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CalendarDatePicker buildCalendarDatePicker(instance, args, {namedArgs}) {
		CalendarDatePicker ctor({key, initialDate, firstDate, lastDate, currentDate, onDateChanged, onDisplayedMonthChanged, initialCalendarMode = DatePickerMode.day, selectableDayPredicate}) => CalendarDatePicker(key: key, initialDate: initialDate, firstDate: firstDate, lastDate: lastDate, currentDate: currentDate, onDateChanged: onDateChanged, onDisplayedMonthChanged: onDisplayedMonthChanged, initialCalendarMode: initialCalendarMode, selectableDayPredicate: selectableDayPredicate);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static YearPicker buildYearPicker(instance, args, {namedArgs}) {
		YearPicker ctor({key, currentDate, firstDate, lastDate, initialDate, selectedDate, onChanged, dragStartBehavior = DragStartBehavior.start}) => YearPicker(key: key, currentDate: currentDate, firstDate: firstDate, lastDate: lastDate, initialDate: initialDate, selectedDate: selectedDate, onChanged: onChanged, dragStartBehavior: dragStartBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Chip buildChip(instance, args, {namedArgs}) {
		Chip ctor({key, avatar, label, labelStyle, labelPadding, deleteIcon, onDeleted, deleteIconColor, useDeleteButtonTooltip = true, deleteButtonTooltipMessage, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor}) => Chip(key: key, avatar: avatar, label: label, labelStyle: labelStyle, labelPadding: labelPadding, deleteIcon: deleteIcon, onDeleted: onDeleted, deleteIconColor: deleteIconColor, useDeleteButtonTooltip: useDeleteButtonTooltip, deleteButtonTooltipMessage: deleteButtonTooltipMessage, side: side, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, backgroundColor: backgroundColor, padding: padding, visualDensity: visualDensity, materialTapTargetSize: materialTapTargetSize, elevation: elevation, shadowColor: shadowColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static InputChip buildInputChip(instance, args, {namedArgs}) {
		InputChip ctor({key, avatar, label, labelStyle, labelPadding, selected = false, isEnabled = true, onSelected, deleteIcon, onDeleted, deleteIconColor, useDeleteButtonTooltip = true, deleteButtonTooltipMessage, onPressed, pressElevation, disabledColor, selectedColor, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, showCheckmark, checkmarkColor, avatarBorder = const CircleBorder()}) => InputChip(key: key, avatar: avatar, label: label, labelStyle: labelStyle, labelPadding: labelPadding, selected: selected, isEnabled: isEnabled, onSelected: onSelected, deleteIcon: deleteIcon, onDeleted: onDeleted, deleteIconColor: deleteIconColor, useDeleteButtonTooltip: useDeleteButtonTooltip, deleteButtonTooltipMessage: deleteButtonTooltipMessage, onPressed: onPressed, pressElevation: pressElevation, disabledColor: disabledColor, selectedColor: selectedColor, tooltip: tooltip, side: side, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, backgroundColor: backgroundColor, padding: padding, visualDensity: visualDensity, materialTapTargetSize: materialTapTargetSize, elevation: elevation, shadowColor: shadowColor, selectedShadowColor: selectedShadowColor, showCheckmark: showCheckmark, checkmarkColor: checkmarkColor, avatarBorder: avatarBorder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ChoiceChip buildChoiceChip(instance, args, {namedArgs}) {
		ChoiceChip ctor({key, avatar, label, labelStyle, labelPadding, onSelected, pressElevation, selected, selectedColor, disabledColor, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, avatarBorder = const CircleBorder()}) => ChoiceChip(key: key, avatar: avatar, label: label, labelStyle: labelStyle, labelPadding: labelPadding, onSelected: onSelected, pressElevation: pressElevation, selected: selected, selectedColor: selectedColor, disabledColor: disabledColor, tooltip: tooltip, side: side, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, backgroundColor: backgroundColor, padding: padding, visualDensity: visualDensity, materialTapTargetSize: materialTapTargetSize, elevation: elevation, shadowColor: shadowColor, selectedShadowColor: selectedShadowColor, avatarBorder: avatarBorder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FilterChip buildFilterChip(instance, args, {namedArgs}) {
		FilterChip ctor({key, avatar, label, labelStyle, labelPadding, selected = false, onSelected, pressElevation, disabledColor, selectedColor, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, showCheckmark, checkmarkColor, avatarBorder = const CircleBorder()}) => FilterChip(key: key, avatar: avatar, label: label, labelStyle: labelStyle, labelPadding: labelPadding, selected: selected, onSelected: onSelected, pressElevation: pressElevation, disabledColor: disabledColor, selectedColor: selectedColor, tooltip: tooltip, side: side, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, backgroundColor: backgroundColor, padding: padding, visualDensity: visualDensity, materialTapTargetSize: materialTapTargetSize, elevation: elevation, shadowColor: shadowColor, selectedShadowColor: selectedShadowColor, showCheckmark: showCheckmark, checkmarkColor: checkmarkColor, avatarBorder: avatarBorder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ActionChip buildActionChip(instance, args, {namedArgs}) {
		ActionChip ctor({key, avatar, label, labelStyle, labelPadding, onPressed, pressElevation, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor}) => ActionChip(key: key, avatar: avatar, label: label, labelStyle: labelStyle, labelPadding: labelPadding, onPressed: onPressed, pressElevation: pressElevation, tooltip: tooltip, side: side, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, backgroundColor: backgroundColor, padding: padding, visualDensity: visualDensity, materialTapTargetSize: materialTapTargetSize, elevation: elevation, shadowColor: shadowColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RawChip buildRawChip(instance, args, {namedArgs}) {
		RawChip ctor({key, avatar, label, labelStyle, padding, visualDensity, labelPadding, deleteIcon, onDeleted, deleteIconColor, useDeleteButtonTooltip = true, deleteButtonTooltipMessage, onPressed, onSelected, pressElevation, tapEnabled = true, selected = false, isEnabled = true, disabledColor, selectedColor, tooltip, side, shape, clipBehavior = Clip.none, focusNode, autofocus = false, backgroundColor, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, showCheckmark = true, checkmarkColor, avatarBorder = const CircleBorder()}) => RawChip(key: key, avatar: avatar, label: label, labelStyle: labelStyle, padding: padding, visualDensity: visualDensity, labelPadding: labelPadding, deleteIcon: deleteIcon, onDeleted: onDeleted, deleteIconColor: deleteIconColor, useDeleteButtonTooltip: useDeleteButtonTooltip, deleteButtonTooltipMessage: deleteButtonTooltipMessage, onPressed: onPressed, onSelected: onSelected, pressElevation: pressElevation, tapEnabled: tapEnabled, selected: selected, isEnabled: isEnabled, disabledColor: disabledColor, selectedColor: selectedColor, tooltip: tooltip, side: side, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, backgroundColor: backgroundColor, materialTapTargetSize: materialTapTargetSize, elevation: elevation, shadowColor: shadowColor, selectedShadowColor: selectedShadowColor, showCheckmark: showCheckmark, checkmarkColor: checkmarkColor, avatarBorder: avatarBorder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PaginatedDataTable buildPaginatedDataTable(instance, args, {namedArgs}) {
		PaginatedDataTable ctor({key, header, actions, columns, sortColumnIndex, sortAscending = true, onSelectAll, dataRowHeight = kMinInteractiveDimension, headingRowHeight = 56.0, horizontalMargin = 24.0, columnSpacing = 56.0, showCheckboxColumn = true, initialFirstRowIndex = 0, onPageChanged, rowsPerPage = PaginatedDataTable.defaultRowsPerPage, availableRowsPerPage = const <int>[PaginatedDataTable.defaultRowsPerPage, PaginatedDataTable.defaultRowsPerPage * 2, PaginatedDataTable.defaultRowsPerPage * 5, PaginatedDataTable.defaultRowsPerPage * 10], onRowsPerPageChanged, dragStartBehavior = DragStartBehavior.start, source}) => PaginatedDataTable(key: key, header: header, actions: List<Widget>.from(actions), columns: List<DataColumn>.from(columns), sortColumnIndex: sortColumnIndex, sortAscending: sortAscending, onSelectAll: onSelectAll, dataRowHeight: dataRowHeight, headingRowHeight: headingRowHeight, horizontalMargin: horizontalMargin, columnSpacing: columnSpacing, showCheckboxColumn: showCheckboxColumn, initialFirstRowIndex: initialFirstRowIndex, onPageChanged: onPageChanged, rowsPerPage: rowsPerPage, availableRowsPerPage: List<int>.from(availableRowsPerPage), onRowsPerPageChanged: onRowsPerPageChanged, dragStartBehavior: dragStartBehavior, source: source);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FlutterLogo buildFlutterLogo(instance, args, {namedArgs}) {
		FlutterLogo ctor({key, size, textColor = const Color(0xFF757575), style = FlutterLogoStyle.markOnly, duration = const Duration(milliseconds: 750), curve = Curves.fastOutSlowIn}) => FlutterLogo(key: key, size: size, textColor: textColor, style: style, duration: duration, curve: curve);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Tooltip buildTooltip(instance, args, {namedArgs}) {
		Tooltip ctor({key, message, height, padding, margin, verticalOffset, preferBelow, excludeFromSemantics, decoration, textStyle, waitDuration, showDuration, child}) => Tooltip(key: key, message: message, height: height, padding: padding, margin: margin, verticalOffset: verticalOffset, preferBelow: preferBelow, excludeFromSemantics: excludeFromSemantics, decoration: decoration, textStyle: textStyle, waitDuration: waitDuration, showDuration: showDuration, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SwitchListTile buildSwitchListTile(instance, args, {namedArgs}) {
		SwitchListTile ctor({key, value, onChanged, tileColor, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, inactiveThumbImage, title, subtitle, isThreeLine = false, dense, contentPadding, secondary, selected = false, autofocus = false, controlAffinity = ListTileControlAffinity.platform, shape, selectedTileColor}) => SwitchListTile(key: key, value: value, onChanged: onChanged, tileColor: tileColor, activeColor: activeColor, activeTrackColor: activeTrackColor, inactiveThumbColor: inactiveThumbColor, inactiveTrackColor: inactiveTrackColor, activeThumbImage: activeThumbImage, inactiveThumbImage: inactiveThumbImage, title: title, subtitle: subtitle, isThreeLine: isThreeLine, dense: dense, contentPadding: contentPadding, secondary: secondary, selected: selected, autofocus: autofocus, controlAffinity: controlAffinity, shape: shape, selectedTileColor: selectedTileColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SwitchListTile buildSwitchListTile_adaptive(instance, args, {namedArgs}) {
		SwitchListTile ctor({key, value, onChanged, tileColor, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, inactiveThumbImage, title, subtitle, isThreeLine = false, dense, contentPadding, secondary, selected = false, autofocus = false, controlAffinity = ListTileControlAffinity.platform, shape, selectedTileColor}) => SwitchListTile.adaptive(key: key, value: value, onChanged: onChanged, tileColor: tileColor, activeColor: activeColor, activeTrackColor: activeTrackColor, inactiveThumbColor: inactiveThumbColor, inactiveTrackColor: inactiveTrackColor, activeThumbImage: activeThumbImage, inactiveThumbImage: inactiveThumbImage, title: title, subtitle: subtitle, isThreeLine: isThreeLine, dense: dense, contentPadding: contentPadding, secondary: secondary, selected: selected, autofocus: autofocus, controlAffinity: controlAffinity, shape: shape, selectedTileColor: selectedTileColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DropdownButton buildDropdownButton(instance, args, {namedArgs}) {
		DropdownButton ctor({key, items, selectedItemBuilder, value, hint, disabledHint, onChanged, onTap, elevation = 8, style, underline, icon, iconDisabledColor, iconEnabledColor, iconSize = 24.0, isDense = false, isExpanded = false, itemHeight = kMinInteractiveDimension, focusColor, focusNode, autofocus = false, dropdownColor}) => DropdownButton(key: key, items: List<DropdownMenuItem>.from(items), selectedItemBuilder: selectedItemBuilder, value: value, hint: hint, disabledHint: disabledHint, onChanged: onChanged, onTap: onTap, elevation: elevation, style: style, underline: underline, icon: icon, iconDisabledColor: iconDisabledColor, iconEnabledColor: iconEnabledColor, iconSize: iconSize, isDense: isDense, isExpanded: isExpanded, itemHeight: itemHeight, focusColor: focusColor, focusNode: focusNode, autofocus: autofocus, dropdownColor: dropdownColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DropdownButtonFormField buildDropdownButtonFormField(instance, args, {namedArgs}) {
		DropdownButtonFormField ctor({key, items, selectedItemBuilder, value, hint, disabledHint, onChanged, onTap, elevation = 8, style, icon, iconDisabledColor, iconEnabledColor, iconSize = 24.0, isDense = true, isExpanded = false, itemHeight, focusColor, focusNode, autofocus = false, dropdownColor, decoration, onSaved, validator, autovalidateMode}) => DropdownButtonFormField(key: key, items: List<DropdownMenuItem>.from(items), selectedItemBuilder: selectedItemBuilder, value: value, hint: hint, disabledHint: disabledHint, onChanged: onChanged, onTap: onTap, elevation: elevation, style: style, icon: icon, iconDisabledColor: iconDisabledColor, iconEnabledColor: iconEnabledColor, iconSize: iconSize, isDense: isDense, isExpanded: isExpanded, itemHeight: itemHeight, focusColor: focusColor, focusNode: focusNode, autofocus: autofocus, dropdownColor: dropdownColor, decoration: decoration, onSaved: onSaved, validator: validator, autovalidateMode: autovalidateMode);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TextFormField buildTextFormField(instance, args, {namedArgs}) {
		TextFormField ctor({key, controller, initialValue, focusNode, decoration = const InputDecoration(), keyboardType, textCapitalization = TextCapitalization.none, textInputAction, style, strutStyle, textDirection, textAlign = TextAlign.start, textAlignVertical, autofocus = false, readOnly = false, toolbarOptions, showCursor, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, maxLengthEnforcement, maxLines = 1, minLines, expands = false, maxLength, onChanged, onTap, onEditingComplete, onFieldSubmitted, onSaved, validator, inputFormatters, enabled, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorColor, keyboardAppearance, scrollPadding = const EdgeInsets.all(20.0), enableInteractiveSelection = true, selectionControls, buildCounter, scrollPhysics, autofillHints, autovalidateMode}) => TextFormField(key: key, controller: controller, initialValue: initialValue, focusNode: focusNode, decoration: decoration, keyboardType: keyboardType, textCapitalization: textCapitalization, textInputAction: textInputAction, style: style, strutStyle: strutStyle, textDirection: textDirection, textAlign: textAlign, textAlignVertical: textAlignVertical, autofocus: autofocus, readOnly: readOnly, toolbarOptions: toolbarOptions, showCursor: showCursor, obscuringCharacter: obscuringCharacter, obscureText: obscureText, autocorrect: autocorrect, smartDashesType: smartDashesType, smartQuotesType: smartQuotesType, enableSuggestions: enableSuggestions, maxLengthEnforcement: maxLengthEnforcement, maxLines: maxLines, minLines: minLines, expands: expands, maxLength: maxLength, onChanged: onChanged, onTap: onTap, onEditingComplete: onEditingComplete, onFieldSubmitted: onFieldSubmitted, onSaved: onSaved, validator: validator, inputFormatters: List<TextInputFormatter>.from(inputFormatters), enabled: enabled, cursorWidth: cursorWidth, cursorHeight: cursorHeight, cursorRadius: cursorRadius, cursorColor: cursorColor, keyboardAppearance: keyboardAppearance, scrollPadding: scrollPadding, enableInteractiveSelection: enableInteractiveSelection, selectionControls: selectionControls, buildCounter: buildCounter, scrollPhysics: scrollPhysics, autofillHints: autofillHints, autovalidateMode: autovalidateMode);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Slider buildSlider(instance, args, {namedArgs}) {
		Slider ctor({key, value, onChanged, onChangeStart, onChangeEnd, min = 0.0, max = 1.0, divisions, label, activeColor, inactiveColor, mouseCursor, semanticFormatterCallback, focusNode, autofocus = false}) => Slider(key: key, value: value, onChanged: onChanged, onChangeStart: onChangeStart, onChangeEnd: onChangeEnd, min: min, max: max, divisions: divisions, label: label, activeColor: activeColor, inactiveColor: inactiveColor, mouseCursor: mouseCursor, semanticFormatterCallback: semanticFormatterCallback, focusNode: focusNode, autofocus: autofocus);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Slider buildSlider_adaptive(instance, args, {namedArgs}) {
		Slider ctor({key, value, onChanged, onChangeStart, onChangeEnd, min = 0.0, max = 1.0, divisions, label, mouseCursor, activeColor, inactiveColor, semanticFormatterCallback, focusNode, autofocus = false}) => Slider.adaptive(key: key, value: value, onChanged: onChanged, onChangeStart: onChangeStart, onChangeEnd: onChangeEnd, min: min, max: max, divisions: divisions, label: label, mouseCursor: mouseCursor, activeColor: activeColor, inactiveColor: inactiveColor, semanticFormatterCallback: semanticFormatterCallback, focusNode: focusNode, autofocus: autofocus);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static UnderlineTabIndicator buildUnderlineTabIndicator(instance, args, {namedArgs}) {
		UnderlineTabIndicator ctor({borderSide = const BorderSide(width: 2.0, color: Colors.white), insets = EdgeInsets.zero}) => UnderlineTabIndicator(borderSide: borderSide, insets: insets);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ButtonThemeData buildButtonThemeData(instance, args, {namedArgs}) {
		ButtonThemeData ctor({textTheme = ButtonTextTheme.normal, minWidth = 88.0, height = 36.0, padding, shape, layoutBehavior = ButtonBarLayoutBehavior.padded, alignedDropdown = false, buttonColor, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorScheme, materialTapTargetSize}) => ButtonThemeData(textTheme: textTheme, minWidth: minWidth, height: height, padding: padding, shape: shape, layoutBehavior: layoutBehavior, alignedDropdown: alignedDropdown, buttonColor: buttonColor, disabledColor: disabledColor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, colorScheme: colorScheme, materialTapTargetSize: materialTapTargetSize);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ListTile buildListTile(instance, args, {namedArgs}) {
		ListTile ctor({key, leading, title, subtitle, trailing, isThreeLine = false, dense, visualDensity, shape, contentPadding, enabled = true, onTap, onLongPress, mouseCursor, selected = false, focusColor, hoverColor, focusNode, autofocus = false, tileColor, selectedTileColor, enableFeedback, horizontalTitleGap, minVerticalPadding, minLeadingWidth}) => ListTile(key: key, leading: leading, title: title, subtitle: subtitle, trailing: trailing, isThreeLine: isThreeLine, dense: dense, visualDensity: visualDensity, shape: shape, contentPadding: contentPadding, enabled: enabled, onTap: onTap, onLongPress: onLongPress, mouseCursor: mouseCursor, selected: selected, focusColor: focusColor, hoverColor: hoverColor, focusNode: focusNode, autofocus: autofocus, tileColor: tileColor, selectedTileColor: selectedTileColor, enableFeedback: enableFeedback, horizontalTitleGap: horizontalTitleGap, minVerticalPadding: minVerticalPadding, minLeadingWidth: minLeadingWidth);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ExpansionTile buildExpansionTile(instance, args, {namedArgs}) {
		ExpansionTile ctor({key, leading, title, subtitle, backgroundColor, onExpansionChanged, children = const <Widget>[], trailing, initiallyExpanded = false, maintainState = false, tilePadding, expandedCrossAxisAlignment, expandedAlignment, childrenPadding, collapsedBackgroundColor}) => ExpansionTile(key: key, leading: leading, title: title, subtitle: subtitle, backgroundColor: backgroundColor, onExpansionChanged: onExpansionChanged, children: List<Widget>.from(children), trailing: trailing, initiallyExpanded: initiallyExpanded, maintainState: maintainState, tilePadding: tilePadding, expandedCrossAxisAlignment: expandedCrossAxisAlignment, expandedAlignment: expandedAlignment, childrenPadding: childrenPadding, collapsedBackgroundColor: collapsedBackgroundColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BottomSheet buildBottomSheet(instance, args, {namedArgs}) {
		BottomSheet ctor({key, animationController, enableDrag = true, onDragStart, onDragEnd, backgroundColor, elevation, shape, clipBehavior, onClosing, builder}) => BottomSheet(key: key, animationController: animationController, enableDrag: enableDrag, onDragStart: onDragStart, onDragEnd: onDragEnd, backgroundColor: backgroundColor, elevation: elevation, shape: shape, clipBehavior: clipBehavior, onClosing: onClosing, builder: builder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Divider buildDivider(instance, args, {namedArgs}) {
		Divider ctor({key, height, thickness, indent, endIndent, color}) => Divider(key: key, height: height, thickness: thickness, indent: indent, endIndent: endIndent, color: color);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static VerticalDivider buildVerticalDivider(instance, args, {namedArgs}) {
		VerticalDivider ctor({key, width, thickness, indent, endIndent, color}) => VerticalDivider(key: key, width: width, thickness: thickness, indent: indent, endIndent: endIndent, color: color);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MaterialSlice buildMaterialSlice(instance, args, {namedArgs}) {
		MaterialSlice ctor({key, child, color}) => MaterialSlice(key: key, child: child, color: color);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MaterialGap buildMaterialGap(instance, args, {namedArgs}) {
		MaterialGap ctor({key, size = 16.0}) => MaterialGap(key: key, size: size);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MergeableMaterial buildMergeableMaterial(instance, args, {namedArgs}) {
		MergeableMaterial ctor({key, mainAxis = Axis.vertical, elevation = 2, hasDividers = false, children = const <MergeableMaterialItem>[], dividerColor}) => MergeableMaterial(key: key, mainAxis: mainAxis, elevation: elevation, hasDividers: hasDividers, children: List<MergeableMaterialItem>.from(children), dividerColor: dividerColor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Drawer buildDrawer(instance, args, {namedArgs}) {
		Drawer ctor({key, elevation = 16.0, child, semanticLabel}) => Drawer(key: key, elevation: elevation, child: child, semanticLabel: semanticLabel);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DrawerController buildDrawerController(instance, args, {namedArgs}) {
		DrawerController ctor({key, child, alignment, isDrawerOpen = false, drawerCallback, dragStartBehavior = DragStartBehavior.start, scrimColor, edgeDragWidth, enableOpenDragGesture = true}) => DrawerController(key: key, child: child, alignment: alignment, isDrawerOpen: isDrawerOpen, drawerCallback: drawerCallback, dragStartBehavior: dragStartBehavior, scrimColor: scrimColor, edgeDragWidth: edgeDragWidth, enableOpenDragGesture: enableOpenDragGesture);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AnimatedIcon buildAnimatedIcon(instance, args, {namedArgs}) {
		AnimatedIcon ctor({key, icon, progress, color, size, semanticLabel, textDirection}) => AnimatedIcon(key: key, icon: icon, progress: progress, color: color, size: size, semanticLabel: semanticLabel, textDirection: textDirection);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ThemeData buildThemeData(instance, args, {namedArgs}) {
		ThemeData ctor({brightness, visualDensity, primarySwatch, primaryColor, primaryColorBrightness, primaryColorLight, primaryColorDark, accentColor, accentColorBrightness, canvasColor, shadowColor, scaffoldBackgroundColor, bottomAppBarColor, cardColor, dividerColor, focusColor, hoverColor, highlightColor, splashColor, splashFactory, selectedRowColor, unselectedWidgetColor, disabledColor, buttonColor, buttonTheme, toggleButtonsTheme, secondaryHeaderColor, backgroundColor, dialogBackgroundColor, indicatorColor, hintColor, errorColor, toggleableActiveColor, fontFamily, textTheme, primaryTextTheme, accentTextTheme, inputDecorationTheme, iconTheme, primaryIconTheme, accentIconTheme, sliderTheme, tabBarTheme, tooltipTheme, cardTheme, chipTheme, platform, materialTapTargetSize, applyElevationOverlayColor, pageTransitionsTheme, appBarTheme, scrollbarTheme, bottomAppBarTheme, colorScheme, dialogTheme, floatingActionButtonTheme, navigationRailTheme, typography, cupertinoOverrideTheme, snackBarTheme, bottomSheetTheme, popupMenuTheme, bannerTheme, dividerTheme, buttonBarTheme, bottomNavigationBarTheme, timePickerTheme, textButtonTheme, elevatedButtonTheme, outlinedButtonTheme, textSelectionTheme, dataTableTheme, checkboxTheme, radioTheme, switchTheme, fixTextFieldOutlineLabel}) => ThemeData(brightness: brightness, visualDensity: visualDensity, primarySwatch: primarySwatch, primaryColor: primaryColor, primaryColorBrightness: primaryColorBrightness, primaryColorLight: primaryColorLight, primaryColorDark: primaryColorDark, accentColor: accentColor, accentColorBrightness: accentColorBrightness, canvasColor: canvasColor, shadowColor: shadowColor, scaffoldBackgroundColor: scaffoldBackgroundColor, bottomAppBarColor: bottomAppBarColor, cardColor: cardColor, dividerColor: dividerColor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, splashFactory: splashFactory, selectedRowColor: selectedRowColor, unselectedWidgetColor: unselectedWidgetColor, disabledColor: disabledColor, buttonColor: buttonColor, buttonTheme: buttonTheme, toggleButtonsTheme: toggleButtonsTheme, secondaryHeaderColor: secondaryHeaderColor, backgroundColor: backgroundColor, dialogBackgroundColor: dialogBackgroundColor, indicatorColor: indicatorColor, hintColor: hintColor, errorColor: errorColor, toggleableActiveColor: toggleableActiveColor, fontFamily: fontFamily, textTheme: textTheme, primaryTextTheme: primaryTextTheme, accentTextTheme: accentTextTheme, inputDecorationTheme: inputDecorationTheme, iconTheme: iconTheme, primaryIconTheme: primaryIconTheme, accentIconTheme: accentIconTheme, sliderTheme: sliderTheme, tabBarTheme: tabBarTheme, tooltipTheme: tooltipTheme, cardTheme: cardTheme, chipTheme: chipTheme, platform: platform, materialTapTargetSize: materialTapTargetSize, applyElevationOverlayColor: applyElevationOverlayColor, pageTransitionsTheme: pageTransitionsTheme, appBarTheme: appBarTheme, scrollbarTheme: scrollbarTheme, bottomAppBarTheme: bottomAppBarTheme, colorScheme: colorScheme, dialogTheme: dialogTheme, floatingActionButtonTheme: floatingActionButtonTheme, navigationRailTheme: navigationRailTheme, typography: typography, cupertinoOverrideTheme: cupertinoOverrideTheme, snackBarTheme: snackBarTheme, bottomSheetTheme: bottomSheetTheme, popupMenuTheme: popupMenuTheme, bannerTheme: bannerTheme, dividerTheme: dividerTheme, buttonBarTheme: buttonBarTheme, bottomNavigationBarTheme: bottomNavigationBarTheme, timePickerTheme: timePickerTheme, textButtonTheme: textButtonTheme, elevatedButtonTheme: elevatedButtonTheme, outlinedButtonTheme: outlinedButtonTheme, textSelectionTheme: textSelectionTheme, dataTableTheme: dataTableTheme, checkboxTheme: checkboxTheme, radioTheme: radioTheme, switchTheme: switchTheme, fixTextFieldOutlineLabel: fixTextFieldOutlineLabel);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ThemeData buildThemeData_raw(instance, args, {namedArgs}) {
		ThemeData ctor({visualDensity, primaryColor, primaryColorBrightness, primaryColorLight, primaryColorDark, canvasColor, shadowColor, accentColor, accentColorBrightness, scaffoldBackgroundColor, bottomAppBarColor, cardColor, dividerColor, focusColor, hoverColor, highlightColor, splashColor, splashFactory, selectedRowColor, unselectedWidgetColor, disabledColor, buttonTheme, buttonColor, toggleButtonsTheme, secondaryHeaderColor, textSelectionColor, cursorColor, textSelectionHandleColor, backgroundColor, dialogBackgroundColor, indicatorColor, hintColor, errorColor, toggleableActiveColor, textTheme, primaryTextTheme, accentTextTheme, inputDecorationTheme, iconTheme, primaryIconTheme, accentIconTheme, sliderTheme, tabBarTheme, tooltipTheme, cardTheme, chipTheme, platform, materialTapTargetSize, applyElevationOverlayColor, pageTransitionsTheme, appBarTheme, scrollbarTheme, bottomAppBarTheme, colorScheme, dialogTheme, floatingActionButtonTheme, navigationRailTheme, typography, cupertinoOverrideTheme, snackBarTheme, bottomSheetTheme, popupMenuTheme, bannerTheme, dividerTheme, buttonBarTheme, bottomNavigationBarTheme, timePickerTheme, textButtonTheme, elevatedButtonTheme, outlinedButtonTheme, textSelectionTheme, dataTableTheme, checkboxTheme, radioTheme, switchTheme, fixTextFieldOutlineLabel, useTextSelectionTheme}) => ThemeData.raw(visualDensity: visualDensity, primaryColor: primaryColor, primaryColorBrightness: primaryColorBrightness, primaryColorLight: primaryColorLight, primaryColorDark: primaryColorDark, canvasColor: canvasColor, shadowColor: shadowColor, accentColor: accentColor, accentColorBrightness: accentColorBrightness, scaffoldBackgroundColor: scaffoldBackgroundColor, bottomAppBarColor: bottomAppBarColor, cardColor: cardColor, dividerColor: dividerColor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, splashFactory: splashFactory, selectedRowColor: selectedRowColor, unselectedWidgetColor: unselectedWidgetColor, disabledColor: disabledColor, buttonTheme: buttonTheme, buttonColor: buttonColor, toggleButtonsTheme: toggleButtonsTheme, secondaryHeaderColor: secondaryHeaderColor, textSelectionColor: textSelectionColor, cursorColor: cursorColor, textSelectionHandleColor: textSelectionHandleColor, backgroundColor: backgroundColor, dialogBackgroundColor: dialogBackgroundColor, indicatorColor: indicatorColor, hintColor: hintColor, errorColor: errorColor, toggleableActiveColor: toggleableActiveColor, textTheme: textTheme, primaryTextTheme: primaryTextTheme, accentTextTheme: accentTextTheme, inputDecorationTheme: inputDecorationTheme, iconTheme: iconTheme, primaryIconTheme: primaryIconTheme, accentIconTheme: accentIconTheme, sliderTheme: sliderTheme, tabBarTheme: tabBarTheme, tooltipTheme: tooltipTheme, cardTheme: cardTheme, chipTheme: chipTheme, platform: platform, materialTapTargetSize: materialTapTargetSize, applyElevationOverlayColor: applyElevationOverlayColor, pageTransitionsTheme: pageTransitionsTheme, appBarTheme: appBarTheme, scrollbarTheme: scrollbarTheme, bottomAppBarTheme: bottomAppBarTheme, colorScheme: colorScheme, dialogTheme: dialogTheme, floatingActionButtonTheme: floatingActionButtonTheme, navigationRailTheme: navigationRailTheme, typography: typography, cupertinoOverrideTheme: cupertinoOverrideTheme, snackBarTheme: snackBarTheme, bottomSheetTheme: bottomSheetTheme, popupMenuTheme: popupMenuTheme, bannerTheme: bannerTheme, dividerTheme: dividerTheme, buttonBarTheme: buttonBarTheme, bottomNavigationBarTheme: bottomNavigationBarTheme, timePickerTheme: timePickerTheme, textButtonTheme: textButtonTheme, elevatedButtonTheme: elevatedButtonTheme, outlinedButtonTheme: outlinedButtonTheme, textSelectionTheme: textSelectionTheme, dataTableTheme: dataTableTheme, checkboxTheme: checkboxTheme, radioTheme: radioTheme, switchTheme: switchTheme, fixTextFieldOutlineLabel: fixTextFieldOutlineLabel, useTextSelectionTheme: useTextSelectionTheme);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ThemeData buildThemeData_from(instance, args, {namedArgs}) {
		ThemeData ctor({colorScheme, textTheme}) => ThemeData.from(colorScheme: colorScheme, textTheme: textTheme);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ThemeData buildThemeData_light(instance, args, {namedArgs}) {
		ThemeData ctor() => ThemeData.light();
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ThemeData buildThemeData_dark(instance, args, {namedArgs}) {
		ThemeData ctor() => ThemeData.dark();
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ThemeData buildThemeData_fallback(instance, args, {namedArgs}) {
		ThemeData ctor() => ThemeData.fallback();
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static VisualDensity buildVisualDensity(instance, args, {namedArgs}) {
		VisualDensity ctor({horizontal = 0.0, vertical = 0.0}) => VisualDensity(horizontal: horizontal, vertical: vertical);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FlexibleSpaceBar buildFlexibleSpaceBar(instance, args, {namedArgs}) {
		FlexibleSpaceBar ctor({key, title, background, centerTitle, titlePadding, collapseMode = CollapseMode.parallax, stretchModes = const <StretchMode>[StretchMode.zoomBackground]}) => FlexibleSpaceBar(key: key, title: title, background: background, centerTitle: centerTitle, titlePadding: titlePadding, collapseMode: collapseMode, stretchModes: List<StretchMode>.from(stretchModes));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Switch buildSwitch(instance, args, {namedArgs}) {
		Switch ctor({key, value, onChanged, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, onActiveThumbImageError, inactiveThumbImage, onInactiveThumbImageError, thumbColor, trackColor, materialTapTargetSize, dragStartBehavior = DragStartBehavior.start, mouseCursor, focusColor, hoverColor, overlayColor, splashRadius, focusNode, autofocus = false}) => Switch(key: key, value: value, onChanged: onChanged, activeColor: activeColor, activeTrackColor: activeTrackColor, inactiveThumbColor: inactiveThumbColor, inactiveTrackColor: inactiveTrackColor, activeThumbImage: activeThumbImage, onActiveThumbImageError: onActiveThumbImageError, inactiveThumbImage: inactiveThumbImage, onInactiveThumbImageError: onInactiveThumbImageError, thumbColor: thumbColor, trackColor: trackColor, materialTapTargetSize: materialTapTargetSize, dragStartBehavior: dragStartBehavior, mouseCursor: mouseCursor, focusColor: focusColor, hoverColor: hoverColor, overlayColor: overlayColor, splashRadius: splashRadius, focusNode: focusNode, autofocus: autofocus);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Switch buildSwitch_adaptive(instance, args, {namedArgs}) {
		Switch ctor({key, value, onChanged, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, onActiveThumbImageError, inactiveThumbImage, onInactiveThumbImageError, materialTapTargetSize, thumbColor, trackColor, dragStartBehavior = DragStartBehavior.start, mouseCursor, focusColor, hoverColor, overlayColor, splashRadius, focusNode, autofocus = false}) => Switch.adaptive(key: key, value: value, onChanged: onChanged, activeColor: activeColor, activeTrackColor: activeTrackColor, inactiveThumbColor: inactiveThumbColor, inactiveTrackColor: inactiveTrackColor, activeThumbImage: activeThumbImage, onActiveThumbImageError: onActiveThumbImageError, inactiveThumbImage: inactiveThumbImage, onInactiveThumbImageError: onInactiveThumbImageError, materialTapTargetSize: materialTapTargetSize, thumbColor: thumbColor, trackColor: trackColor, dragStartBehavior: dragStartBehavior, mouseCursor: mouseCursor, focusColor: focusColor, hoverColor: hoverColor, overlayColor: overlayColor, splashRadius: splashRadius, focusNode: focusNode, autofocus: autofocus);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Scrollbar buildScrollbar(instance, args, {namedArgs}) {
		Scrollbar ctor({key, child, controller, isAlwaysShown, showTrackOnHover, hoverThickness, thickness, radius, notificationPredicate}) => Scrollbar(key: key, child: child, controller: controller, isAlwaysShown: isAlwaysShown, showTrackOnHover: showTrackOnHover, hoverThickness: hoverThickness, thickness: thickness, radius: radius, notificationPredicate: notificationPredicate);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BottomNavigationBar buildBottomNavigationBar(instance, args, {namedArgs}) {
		BottomNavigationBar ctor({key, items, onTap, currentIndex = 0, elevation, type, fixedColor, backgroundColor, iconSize = 24.0, selectedItemColor, unselectedItemColor, selectedIconTheme, unselectedIconTheme, selectedFontSize = 14.0, unselectedFontSize = 12.0, selectedLabelStyle, unselectedLabelStyle, showSelectedLabels, showUnselectedLabels, mouseCursor}) => BottomNavigationBar(key: key, items: List<BottomNavigationBarItem>.from(items), onTap: onTap, currentIndex: currentIndex, elevation: elevation, type: type, fixedColor: fixedColor, backgroundColor: backgroundColor, iconSize: iconSize, selectedItemColor: selectedItemColor, unselectedItemColor: unselectedItemColor, selectedIconTheme: selectedIconTheme, unselectedIconTheme: unselectedIconTheme, selectedFontSize: selectedFontSize, unselectedFontSize: unselectedFontSize, selectedLabelStyle: selectedLabelStyle, unselectedLabelStyle: unselectedLabelStyle, showSelectedLabels: showSelectedLabels, showUnselectedLabels: showUnselectedLabels, mouseCursor: mouseCursor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MaterialApp buildMaterialApp(instance, args, {namedArgs}) {
		MaterialApp ctor({key, navigatorKey, scaffoldMessengerKey, home, routes = const <String, WidgetBuilder>{}, initialRoute, onGenerateRoute, onGenerateInitialRoutes, onUnknownRoute, navigatorObservers = const <NavigatorObserver>[], builder, title = '', onGenerateTitle, color, theme, darkTheme, highContrastTheme, highContrastDarkTheme, themeMode = ThemeMode.system, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], debugShowMaterialGrid = false, showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowCheckedModeBanner = true, shortcuts, actions, restorationScopeId}) => MaterialApp(key: key, navigatorKey: navigatorKey, scaffoldMessengerKey: scaffoldMessengerKey, home: home, routes: routes, initialRoute: initialRoute, onGenerateRoute: onGenerateRoute, onGenerateInitialRoutes: onGenerateInitialRoutes, onUnknownRoute: onUnknownRoute, navigatorObservers: List<NavigatorObserver>.from(navigatorObservers), builder: builder, title: title, onGenerateTitle: onGenerateTitle, color: color, theme: theme, darkTheme: darkTheme, highContrastTheme: highContrastTheme, highContrastDarkTheme: highContrastDarkTheme, themeMode: themeMode, locale: locale, localizationsDelegates: localizationsDelegates, localeListResolutionCallback: localeListResolutionCallback, localeResolutionCallback: localeResolutionCallback, supportedLocales: supportedLocales, debugShowMaterialGrid: debugShowMaterialGrid, showPerformanceOverlay: showPerformanceOverlay, checkerboardRasterCacheImages: checkerboardRasterCacheImages, checkerboardOffscreenLayers: checkerboardOffscreenLayers, showSemanticsDebugger: showSemanticsDebugger, debugShowCheckedModeBanner: debugShowCheckedModeBanner, shortcuts: shortcuts, actions: actions, restorationScopeId: restorationScopeId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MaterialApp buildMaterialApp_router(instance, args, {namedArgs}) {
		MaterialApp ctor({key, scaffoldMessengerKey, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher, builder, title = '', onGenerateTitle, color, theme, darkTheme, highContrastTheme, highContrastDarkTheme, themeMode = ThemeMode.system, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], debugShowMaterialGrid = false, showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowCheckedModeBanner = true, shortcuts, actions, restorationScopeId}) => MaterialApp.router(key: key, scaffoldMessengerKey: scaffoldMessengerKey, routeInformationProvider: routeInformationProvider, routeInformationParser: routeInformationParser, routerDelegate: routerDelegate, backButtonDispatcher: backButtonDispatcher, builder: builder, title: title, onGenerateTitle: onGenerateTitle, color: color, theme: theme, darkTheme: darkTheme, highContrastTheme: highContrastTheme, highContrastDarkTheme: highContrastDarkTheme, themeMode: themeMode, locale: locale, localizationsDelegates: localizationsDelegates, localeListResolutionCallback: localeListResolutionCallback, localeResolutionCallback: localeResolutionCallback, supportedLocales: supportedLocales, debugShowMaterialGrid: debugShowMaterialGrid, showPerformanceOverlay: showPerformanceOverlay, checkerboardRasterCacheImages: checkerboardRasterCacheImages, checkerboardOffscreenLayers: checkerboardOffscreenLayers, showSemanticsDebugger: showSemanticsDebugger, debugShowCheckedModeBanner: debugShowCheckedModeBanner, shortcuts: shortcuts, actions: actions, restorationScopeId: restorationScopeId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Autocomplete buildAutocomplete(instance, args, {namedArgs}) {
		Autocomplete ctor({key, optionsBuilder, displayStringForOption = RawAutocomplete.defaultStringForOption, onSelected, optionsViewBuilder}) => Autocomplete(key: key, optionsBuilder: optionsBuilder, displayStringForOption: displayStringForOption, onSelected: onSelected, optionsViewBuilder: optionsViewBuilder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ExpansionPanelList buildExpansionPanelList(instance, args, {namedArgs}) {
		ExpansionPanelList ctor({key, children = const <ExpansionPanel>[], expansionCallback, animationDuration = kThemeAnimationDuration, dividerColor, elevation = 2}) => ExpansionPanelList(key: key, children: List<ExpansionPanel>.from(children), expansionCallback: expansionCallback, animationDuration: animationDuration, dividerColor: dividerColor, elevation: elevation);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ExpansionPanelList buildExpansionPanelList_radio(instance, args, {namedArgs}) {
		ExpansionPanelList ctor({key, children = const <ExpansionPanelRadio>[], expansionCallback, animationDuration = kThemeAnimationDuration, initialOpenPanelValue, dividerColor, elevation = 2}) => ExpansionPanelList.radio(key: key, children: List<ExpansionPanel>.from(children), expansionCallback: expansionCallback, animationDuration: animationDuration, initialOpenPanelValue: initialOpenPanelValue, dividerColor: dividerColor, elevation: elevation);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Theme buildTheme(instance, args, {namedArgs}) {
		Theme ctor({key, data, child}) => Theme(key: key, data: data, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static IconButton buildIconButton(instance, args, {namedArgs}) {
		IconButton ctor({key, iconSize = 24.0, visualDensity, padding = const EdgeInsets.all(8.0), alignment = Alignment.center, splashRadius, icon, color, focusColor, hoverColor, highlightColor, splashColor, disabledColor, onPressed, mouseCursor = SystemMouseCursors.click, focusNode, autofocus = false, tooltip, enableFeedback = true, constraints}) => IconButton(key: key, iconSize: iconSize, visualDensity: visualDensity, padding: padding, alignment: alignment, splashRadius: splashRadius, icon: icon, color: color, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, disabledColor: disabledColor, onPressed: onPressed, mouseCursor: mouseCursor, focusNode: focusNode, autofocus: autofocus, tooltip: tooltip, enableFeedback: enableFeedback, constraints: constraints);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static OutlineButton buildOutlineButton(instance, args, {namedArgs}) {
		OutlineButton ctor({key, onPressed, onLongPress, mouseCursor, textTheme, textColor, disabledTextColor, color, focusColor, hoverColor, highlightColor, splashColor, highlightElevation, borderSide, disabledBorderColor, highlightedBorderColor, padding, visualDensity, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, child}) => OutlineButton(key: key, onPressed: onPressed, onLongPress: onLongPress, mouseCursor: mouseCursor, textTheme: textTheme, textColor: textColor, disabledTextColor: disabledTextColor, color: color, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, highlightElevation: highlightElevation, borderSide: borderSide, disabledBorderColor: disabledBorderColor, highlightedBorderColor: highlightedBorderColor, padding: padding, visualDensity: visualDensity, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, materialTapTargetSize: materialTapTargetSize, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static OutlineButton buildOutlineButton_icon(instance, args, {namedArgs}) {
		OutlineButton ctor({key, onPressed, onLongPress, mouseCursor, textTheme, textColor, disabledTextColor, color, focusColor, hoverColor, highlightColor, splashColor, highlightElevation, highlightedBorderColor, disabledBorderColor, borderSide, padding, visualDensity, shape, clipBehavior, focusNode, autofocus, materialTapTargetSize, icon, label}) => OutlineButton.icon(key: key, onPressed: onPressed, onLongPress: onLongPress, mouseCursor: mouseCursor, textTheme: textTheme, textColor: textColor, disabledTextColor: disabledTextColor, color: color, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, highlightElevation: highlightElevation, highlightedBorderColor: highlightedBorderColor, disabledBorderColor: disabledBorderColor, borderSide: borderSide, padding: padding, visualDensity: visualDensity, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, materialTapTargetSize: materialTapTargetSize, icon: icon, label: label);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ToggleButtons buildToggleButtons(instance, args, {namedArgs}) {
		ToggleButtons ctor({key, children, isSelected, onPressed, mouseCursor, textStyle, constraints, color, selectedColor, disabledColor, fillColor, focusColor, highlightColor, hoverColor, splashColor, focusNodes, renderBorder = true, borderColor, selectedBorderColor, disabledBorderColor, borderRadius, borderWidth, direction = Axis.horizontal, verticalDirection = VerticalDirection.down}) => ToggleButtons(key: key, children: List<Widget>.from(children), isSelected: List<bool>.from(isSelected), onPressed: onPressed, mouseCursor: mouseCursor, textStyle: textStyle, constraints: constraints, color: color, selectedColor: selectedColor, disabledColor: disabledColor, fillColor: fillColor, focusColor: focusColor, highlightColor: highlightColor, hoverColor: hoverColor, splashColor: splashColor, focusNodes: List<FocusNode>.from(focusNodes), renderBorder: renderBorder, borderColor: borderColor, selectedBorderColor: selectedBorderColor, disabledBorderColor: disabledBorderColor, borderRadius: borderRadius, borderWidth: borderWidth, direction: direction, verticalDirection: verticalDirection);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FlatButton buildFlatButton(instance, args, {namedArgs}) {
		FlatButton ctor({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, padding, visualDensity, shape, clipBehavior = Clip.none, focusNode, autofocus = false, materialTapTargetSize, child, height, minWidth}) => FlatButton(key: key, onPressed: onPressed, onLongPress: onLongPress, onHighlightChanged: onHighlightChanged, mouseCursor: mouseCursor, textTheme: textTheme, textColor: textColor, disabledTextColor: disabledTextColor, color: color, disabledColor: disabledColor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, colorBrightness: colorBrightness, padding: padding, visualDensity: visualDensity, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, materialTapTargetSize: materialTapTargetSize, child: child, height: height, minWidth: minWidth);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FlatButton buildFlatButton_icon(instance, args, {namedArgs}) {
		FlatButton ctor({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, padding, shape, clipBehavior, focusNode, autofocus, materialTapTargetSize, icon, label, minWidth, height}) => FlatButton.icon(key: key, onPressed: onPressed, onLongPress: onLongPress, onHighlightChanged: onHighlightChanged, mouseCursor: mouseCursor, textTheme: textTheme, textColor: textColor, disabledTextColor: disabledTextColor, color: color, disabledColor: disabledColor, focusColor: focusColor, hoverColor: hoverColor, highlightColor: highlightColor, splashColor: splashColor, colorBrightness: colorBrightness, padding: padding, shape: shape, clipBehavior: clipBehavior, focusNode: focusNode, autofocus: autofocus, materialTapTargetSize: materialTapTargetSize, icon: icon, label: label, minWidth: minWidth, height: height);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static NetworkAssetBundle buildNetworkAssetBundle(instance, args, {namedArgs}) {
		NetworkAssetBundle ctor(baseUrl) => NetworkAssetBundle(baseUrl);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FilteringTextInputFormatter buildFilteringTextInputFormatter(instance, args, {namedArgs}) {
		FilteringTextInputFormatter ctor(filterPattern, {allow, replacementString = ''}) => FilteringTextInputFormatter(filterPattern, allow: allow, replacementString: replacementString);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FilteringTextInputFormatter buildFilteringTextInputFormatter_allow(instance, args, {namedArgs}) {
		FilteringTextInputFormatter ctor(filterPattern, {replacementString = ''}) => FilteringTextInputFormatter.allow(filterPattern, replacementString: replacementString);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FilteringTextInputFormatter buildFilteringTextInputFormatter_deny(instance, args, {namedArgs}) {
		FilteringTextInputFormatter ctor(filterPattern, {replacementString = ''}) => FilteringTextInputFormatter.deny(filterPattern, replacementString: replacementString);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BlacklistingTextInputFormatter buildBlacklistingTextInputFormatter(instance, args, {namedArgs}) {
		BlacklistingTextInputFormatter ctor(blacklistedPattern, {replacementString = ''}) => BlacklistingTextInputFormatter(blacklistedPattern, replacementString: replacementString);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static WhitelistingTextInputFormatter buildWhitelistingTextInputFormatter(instance, args, {namedArgs}) {
		WhitelistingTextInputFormatter ctor(whitelistedPattern) => WhitelistingTextInputFormatter(whitelistedPattern);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static LengthLimitingTextInputFormatter buildLengthLimitingTextInputFormatter(instance, args, {namedArgs}) {
		LengthLimitingTextInputFormatter ctor(maxLength, {maxLengthEnforcement}) => LengthLimitingTextInputFormatter(maxLength, maxLengthEnforcement: maxLengthEnforcement);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SingleChildScrollView buildSingleChildScrollView(instance, args, {namedArgs}) {
		SingleChildScrollView ctor({key, scrollDirection = Axis.vertical, reverse = false, padding, primary, physics, controller, child, dragStartBehavior = DragStartBehavior.start, clipBehavior = Clip.hardEdge, restorationId}) => SingleChildScrollView(key: key, scrollDirection: scrollDirection, reverse: reverse, padding: padding, primary: primary, physics: physics, controller: controller, child: child, dragStartBehavior: dragStartBehavior, clipBehavior: clipBehavior, restorationId: restorationId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AnimatedCrossFade buildAnimatedCrossFade(instance, args, {namedArgs}) {
		AnimatedCrossFade ctor({key, firstChild, secondChild, firstCurve = Curves.linear, secondCurve = Curves.linear, sizeCurve = Curves.linear, alignment = Alignment.topCenter, crossFadeState, duration, reverseDuration}) => AnimatedCrossFade(key: key, firstChild: firstChild, secondChild: secondChild, firstCurve: firstCurve, secondCurve: secondCurve, sizeCurve: sizeCurve, alignment: alignment, crossFadeState: crossFadeState, duration: duration, reverseDuration: reverseDuration);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static GridPaper buildGridPaper(instance, args, {namedArgs}) {
		GridPaper ctor({key, color = const Color(0x7FC3E8F3), interval = 100.0, divisions = 2, subdivisions = 5, child}) => GridPaper(key: key, color: color, interval: interval, divisions: divisions, subdivisions: subdivisions, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FadeTransition buildFadeTransition(instance, args, {namedArgs}) {
		FadeTransition ctor({key, opacity, alwaysIncludeSemantics = false, child}) => FadeTransition(key: key, opacity: opacity, alwaysIncludeSemantics: alwaysIncludeSemantics, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverFadeTransition buildSliverFadeTransition(instance, args, {namedArgs}) {
		SliverFadeTransition ctor({key, opacity, alwaysIncludeSemantics = false, sliver}) => SliverFadeTransition(key: key, opacity: opacity, alwaysIncludeSemantics: alwaysIncludeSemantics, sliver: sliver);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverPersistentHeader buildSliverPersistentHeader(instance, args, {namedArgs}) {
		SliverPersistentHeader ctor({key, delegate, pinned = false, floating = false}) => SliverPersistentHeader(key: key, delegate: delegate, pinned: pinned, floating: floating);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PageStorageKey buildPageStorageKey(instance, args, {namedArgs}) {
		PageStorageKey ctor(value) => PageStorageKey(value);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PageStorage buildPageStorage(instance, args, {namedArgs}) {
		PageStorage ctor({key, bucket, child}) => PageStorage(key: key, bucket: bucket, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Router buildRouter(instance, args, {namedArgs}) {
		Router ctor({key, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher}) => Router(key: key, routeInformationProvider: routeInformationProvider, routeInformationParser: routeInformationParser, routerDelegate: routerDelegate, backButtonDispatcher: backButtonDispatcher);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RootBackButtonDispatcher buildRootBackButtonDispatcher(instance, args, {namedArgs}) {
		RootBackButtonDispatcher ctor() => RootBackButtonDispatcher();
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ChildBackButtonDispatcher buildChildBackButtonDispatcher(instance, args, {namedArgs}) {
		ChildBackButtonDispatcher ctor(parent) => ChildBackButtonDispatcher(parent);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PlatformRouteInformationProvider buildPlatformRouteInformationProvider(instance, args, {namedArgs}) {
		PlatformRouteInformationProvider ctor({initialRouteInformation}) => PlatformRouteInformationProvider(initialRouteInformation: initialRouteInformation);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Opacity buildOpacity(instance, args, {namedArgs}) {
		Opacity ctor({key, opacity, alwaysIncludeSemantics = false, child}) => Opacity(key: key, opacity: opacity, alwaysIncludeSemantics: alwaysIncludeSemantics, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ShaderMask buildShaderMask(instance, args, {namedArgs}) {
		ShaderMask ctor({key, shaderCallback, blendMode = BlendMode.modulate, child}) => ShaderMask(key: key, shaderCallback: shaderCallback, blendMode: blendMode, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BackdropFilter buildBackdropFilter(instance, args, {namedArgs}) {
		BackdropFilter ctor({key, filter, child}) => BackdropFilter(key: key, filter: filter, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CustomPaint buildCustomPaint(instance, args, {namedArgs}) {
		CustomPaint ctor({key, painter, foregroundPainter, size = Size.zero, isComplex = false, willChange = false, child}) => CustomPaint(key: key, painter: painter, foregroundPainter: foregroundPainter, size: size, isComplex: isComplex, willChange: willChange, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ClipRect buildClipRect(instance, args, {namedArgs}) {
		ClipRect ctor({key, clipper, clipBehavior = Clip.hardEdge, child}) => ClipRect(key: key, clipper: clipper, clipBehavior: clipBehavior, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ClipRRect buildClipRRect(instance, args, {namedArgs}) {
		ClipRRect ctor({key, borderRadius = BorderRadius.zero, clipper, clipBehavior = Clip.antiAlias, child}) => ClipRRect(key: key, borderRadius: borderRadius, clipper: clipper, clipBehavior: clipBehavior, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ClipOval buildClipOval(instance, args, {namedArgs}) {
		ClipOval ctor({key, clipper, clipBehavior = Clip.antiAlias, child}) => ClipOval(key: key, clipper: clipper, clipBehavior: clipBehavior, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ClipPath buildClipPath(instance, args, {namedArgs}) {
		ClipPath ctor({key, clipper, clipBehavior = Clip.antiAlias, child}) => ClipPath(key: key, clipper: clipper, clipBehavior: clipBehavior, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PhysicalModel buildPhysicalModel(instance, args, {namedArgs}) {
		PhysicalModel ctor({key, shape = BoxShape.rectangle, clipBehavior = Clip.none, borderRadius, elevation = 0.0, color, shadowColor = const Color(0xFF000000), child}) => PhysicalModel(key: key, shape: shape, clipBehavior: clipBehavior, borderRadius: borderRadius, elevation: elevation, color: color, shadowColor: shadowColor, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PhysicalShape buildPhysicalShape(instance, args, {namedArgs}) {
		PhysicalShape ctor({key, clipper, clipBehavior = Clip.none, elevation = 0.0, color, shadowColor = const Color(0xFF000000), child}) => PhysicalShape(key: key, clipper: clipper, clipBehavior: clipBehavior, elevation: elevation, color: color, shadowColor: shadowColor, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Transform buildTransform(instance, args, {namedArgs}) {
		Transform ctor({key, transform, origin, alignment, transformHitTests = true, child}) => Transform(key: key, transform: transform, origin: origin, alignment: alignment, transformHitTests: transformHitTests, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Transform buildTransform_rotate(instance, args, {namedArgs}) {
		Transform ctor({key, angle, origin, alignment = Alignment.center, transformHitTests = true, child}) => Transform.rotate(key: key, angle: angle, origin: origin, alignment: alignment, transformHitTests: transformHitTests, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Transform buildTransform_translate(instance, args, {namedArgs}) {
		Transform ctor({key, offset, transformHitTests = true, child}) => Transform.translate(key: key, offset: offset, transformHitTests: transformHitTests, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Transform buildTransform_scale(instance, args, {namedArgs}) {
		Transform ctor({key, scale, origin, alignment = Alignment.center, transformHitTests = true, child}) => Transform.scale(key: key, scale: scale, origin: origin, alignment: alignment, transformHitTests: transformHitTests, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CompositedTransformTarget buildCompositedTransformTarget(instance, args, {namedArgs}) {
		CompositedTransformTarget ctor({key, link, child}) => CompositedTransformTarget(key: key, link: link, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CompositedTransformFollower buildCompositedTransformFollower(instance, args, {namedArgs}) {
		CompositedTransformFollower ctor({key, link, showWhenUnlinked = true, offset = Offset.zero, targetAnchor = Alignment.topLeft, followerAnchor = Alignment.topLeft, child}) => CompositedTransformFollower(key: key, link: link, showWhenUnlinked: showWhenUnlinked, offset: offset, targetAnchor: targetAnchor, followerAnchor: followerAnchor, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FittedBox buildFittedBox(instance, args, {namedArgs}) {
		FittedBox ctor({key, fit = BoxFit.contain, alignment = Alignment.center, clipBehavior = Clip.none, child}) => FittedBox(key: key, fit: fit, alignment: alignment, clipBehavior: clipBehavior, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FractionalTranslation buildFractionalTranslation(instance, args, {namedArgs}) {
		FractionalTranslation ctor({key, translation, transformHitTests = true, child}) => FractionalTranslation(key: key, translation: translation, transformHitTests: transformHitTests, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RotatedBox buildRotatedBox(instance, args, {namedArgs}) {
		RotatedBox ctor({key, quarterTurns, child}) => RotatedBox(key: key, quarterTurns: quarterTurns, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Padding buildPadding(instance, args, {namedArgs}) {
		Padding ctor({key, padding, child}) => Padding(key: key, padding: padding, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Align buildAlign(instance, args, {namedArgs}) {
		Align ctor({key, alignment = Alignment.center, widthFactor, heightFactor, child}) => Align(key: key, alignment: alignment, widthFactor: widthFactor, heightFactor: heightFactor, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Center buildCenter(instance, args, {namedArgs}) {
		Center ctor({key, widthFactor, heightFactor, child}) => Center(key: key, widthFactor: widthFactor, heightFactor: heightFactor, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CustomSingleChildLayout buildCustomSingleChildLayout(instance, args, {namedArgs}) {
		CustomSingleChildLayout ctor({key, delegate, child}) => CustomSingleChildLayout(key: key, delegate: delegate, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SizedBox buildSizedBox(instance, args, {namedArgs}) {
		SizedBox ctor({key, width, height, child}) => SizedBox(key: key, width: width, height: height, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SizedBox buildSizedBox_expand(instance, args, {namedArgs}) {
		SizedBox ctor({key, child}) => SizedBox.expand(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SizedBox buildSizedBox_shrink(instance, args, {namedArgs}) {
		SizedBox ctor({key, child}) => SizedBox.shrink(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SizedBox buildSizedBox_fromSize(instance, args, {namedArgs}) {
		SizedBox ctor({key, child, size}) => SizedBox.fromSize(key: key, child: child, size: size);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ConstrainedBox buildConstrainedBox(instance, args, {namedArgs}) {
		ConstrainedBox ctor({key, constraints, child}) => ConstrainedBox(key: key, constraints: constraints, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static UnconstrainedBox buildUnconstrainedBox(instance, args, {namedArgs}) {
		UnconstrainedBox ctor({key, child, textDirection, alignment = Alignment.center, constrainedAxis, clipBehavior = Clip.none}) => UnconstrainedBox(key: key, child: child, textDirection: textDirection, alignment: alignment, constrainedAxis: constrainedAxis, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FractionallySizedBox buildFractionallySizedBox(instance, args, {namedArgs}) {
		FractionallySizedBox ctor({key, alignment = Alignment.center, widthFactor, heightFactor, child}) => FractionallySizedBox(key: key, alignment: alignment, widthFactor: widthFactor, heightFactor: heightFactor, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static LimitedBox buildLimitedBox(instance, args, {namedArgs}) {
		LimitedBox ctor({key, maxWidth = double.infinity, maxHeight = double.infinity, child}) => LimitedBox(key: key, maxWidth: maxWidth, maxHeight: maxHeight, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static OverflowBox buildOverflowBox(instance, args, {namedArgs}) {
		OverflowBox ctor({key, alignment = Alignment.center, minWidth, maxWidth, minHeight, maxHeight, child}) => OverflowBox(key: key, alignment: alignment, minWidth: minWidth, maxWidth: maxWidth, minHeight: minHeight, maxHeight: maxHeight, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SizedOverflowBox buildSizedOverflowBox(instance, args, {namedArgs}) {
		SizedOverflowBox ctor({key, size, alignment = Alignment.center, child}) => SizedOverflowBox(key: key, size: size, alignment: alignment, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Offstage buildOffstage(instance, args, {namedArgs}) {
		Offstage ctor({key, offstage = true, child}) => Offstage(key: key, offstage: offstage, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AspectRatio buildAspectRatio(instance, args, {namedArgs}) {
		AspectRatio ctor({key, aspectRatio, child}) => AspectRatio(key: key, aspectRatio: aspectRatio, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static IntrinsicWidth buildIntrinsicWidth(instance, args, {namedArgs}) {
		IntrinsicWidth ctor({key, stepWidth, stepHeight, child}) => IntrinsicWidth(key: key, stepWidth: stepWidth, stepHeight: stepHeight, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static IntrinsicHeight buildIntrinsicHeight(instance, args, {namedArgs}) {
		IntrinsicHeight ctor({key, child}) => IntrinsicHeight(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Baseline buildBaseline(instance, args, {namedArgs}) {
		Baseline ctor({key, baseline, baselineType, child}) => Baseline(key: key, baseline: baseline, baselineType: baselineType, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverToBoxAdapter buildSliverToBoxAdapter(instance, args, {namedArgs}) {
		SliverToBoxAdapter ctor({key, child}) => SliverToBoxAdapter(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverPadding buildSliverPadding(instance, args, {namedArgs}) {
		SliverPadding ctor({key, padding, sliver}) => SliverPadding(key: key, padding: padding, sliver: sliver);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PositionedDirectional buildPositionedDirectional(instance, args, {namedArgs}) {
		PositionedDirectional ctor({key, start, top, end, bottom, width, height, child}) => PositionedDirectional(key: key, start: start, top: top, end: end, bottom: bottom, width: width, height: height, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Row buildRow(instance, args, {namedArgs}) {
		Row ctor({key, mainAxisAlignment = MainAxisAlignment.start, mainAxisSize = MainAxisSize.max, crossAxisAlignment = CrossAxisAlignment.center, textDirection, verticalDirection = VerticalDirection.down, textBaseline, children = const <Widget>[]}) => Row(key: key, mainAxisAlignment: mainAxisAlignment, mainAxisSize: mainAxisSize, crossAxisAlignment: crossAxisAlignment, textDirection: textDirection, verticalDirection: verticalDirection, textBaseline: textBaseline, children: List<Widget>.from(children));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Column buildColumn(instance, args, {namedArgs}) {
		Column ctor({key, mainAxisAlignment = MainAxisAlignment.start, mainAxisSize = MainAxisSize.max, crossAxisAlignment = CrossAxisAlignment.center, textDirection, verticalDirection = VerticalDirection.down, textBaseline, children = const <Widget>[]}) => Column(key: key, mainAxisAlignment: mainAxisAlignment, mainAxisSize: mainAxisSize, crossAxisAlignment: crossAxisAlignment, textDirection: textDirection, verticalDirection: verticalDirection, textBaseline: textBaseline, children: List<Widget>.from(children));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Listener buildListener(instance, args, {namedArgs}) {
		Listener ctor({key, onPointerDown, onPointerMove, onPointerUp, onPointerHover, onPointerCancel, onPointerSignal, behavior = HitTestBehavior.deferToChild, child}) => Listener(key: key, onPointerDown: onPointerDown, onPointerMove: onPointerMove, onPointerUp: onPointerUp, onPointerHover: onPointerHover, onPointerCancel: onPointerCancel, onPointerSignal: onPointerSignal, behavior: behavior, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MouseRegion buildMouseRegion(instance, args, {namedArgs}) {
		MouseRegion ctor({key, onEnter, onExit, onHover, cursor = MouseCursor.defer, opaque = true, child}) => MouseRegion(key: key, onEnter: onEnter, onExit: onExit, onHover: onHover, cursor: cursor, opaque: opaque, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RepaintBoundary buildRepaintBoundary(instance, args, {namedArgs}) {
		RepaintBoundary ctor({key, child}) => RepaintBoundary(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RepaintBoundary buildRepaintBoundary_wrap(instance, args, {namedArgs}) {
		RepaintBoundary ctor(child, childIndex) => RepaintBoundary.wrap(child, childIndex);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static IgnorePointer buildIgnorePointer(instance, args, {namedArgs}) {
		IgnorePointer ctor({key, ignoring = true, ignoringSemantics, child}) => IgnorePointer(key: key, ignoring: ignoring, ignoringSemantics: ignoringSemantics, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AbsorbPointer buildAbsorbPointer(instance, args, {namedArgs}) {
		AbsorbPointer ctor({key, absorbing = true, child, ignoringSemantics}) => AbsorbPointer(key: key, absorbing: absorbing, child: child, ignoringSemantics: ignoringSemantics);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MetaData buildMetaData(instance, args, {namedArgs}) {
		MetaData ctor({key, metaData, behavior = HitTestBehavior.deferToChild, child}) => MetaData(key: key, metaData: metaData, behavior: behavior, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Semantics buildSemantics(instance, args, {namedArgs}) {
		Semantics ctor({key, child, container = false, explicitChildNodes = false, excludeSemantics = false, enabled, checked, selected, toggled, button, slider, link, header, textField, readOnly, focusable, focused, inMutuallyExclusiveGroup, obscured, multiline, scopesRoute, namesRoute, hidden, image, liveRegion, maxValueLength, currentValueLength, label, value, increasedValue, decreasedValue, hint, onTapHint, onLongPressHint, textDirection, sortKey, tagForChildren, onTap, onLongPress, onScrollLeft, onScrollRight, onScrollUp, onScrollDown, onIncrease, onDecrease, onCopy, onCut, onPaste, onDismiss, onMoveCursorForwardByCharacter, onMoveCursorBackwardByCharacter, onSetSelection, onDidGainAccessibilityFocus, onDidLoseAccessibilityFocus, customSemanticsActions}) => Semantics(key: key, child: child, container: container, explicitChildNodes: explicitChildNodes, excludeSemantics: excludeSemantics, enabled: enabled, checked: checked, selected: selected, toggled: toggled, button: button, slider: slider, link: link, header: header, textField: textField, readOnly: readOnly, focusable: focusable, focused: focused, inMutuallyExclusiveGroup: inMutuallyExclusiveGroup, obscured: obscured, multiline: multiline, scopesRoute: scopesRoute, namesRoute: namesRoute, hidden: hidden, image: image, liveRegion: liveRegion, maxValueLength: maxValueLength, currentValueLength: currentValueLength, label: label, value: value, increasedValue: increasedValue, decreasedValue: decreasedValue, hint: hint, onTapHint: onTapHint, onLongPressHint: onLongPressHint, textDirection: textDirection, sortKey: sortKey, tagForChildren: tagForChildren, onTap: onTap, onLongPress: onLongPress, onScrollLeft: onScrollLeft, onScrollRight: onScrollRight, onScrollUp: onScrollUp, onScrollDown: onScrollDown, onIncrease: onIncrease, onDecrease: onDecrease, onCopy: onCopy, onCut: onCut, onPaste: onPaste, onDismiss: onDismiss, onMoveCursorForwardByCharacter: onMoveCursorForwardByCharacter, onMoveCursorBackwardByCharacter: onMoveCursorBackwardByCharacter, onSetSelection: onSetSelection, onDidGainAccessibilityFocus: onDidGainAccessibilityFocus, onDidLoseAccessibilityFocus: onDidLoseAccessibilityFocus, customSemanticsActions: customSemanticsActions);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Semantics buildSemantics_fromProperties(instance, args, {namedArgs}) {
		Semantics ctor({key, child, container = false, explicitChildNodes = false, excludeSemantics = false, properties}) => Semantics.fromProperties(key: key, child: child, container: container, explicitChildNodes: explicitChildNodes, excludeSemantics: excludeSemantics, properties: properties);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static MergeSemantics buildMergeSemantics(instance, args, {namedArgs}) {
		MergeSemantics ctor({key, child}) => MergeSemantics(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BlockSemantics buildBlockSemantics(instance, args, {namedArgs}) {
		BlockSemantics ctor({key, blocking = true, child}) => BlockSemantics(key: key, blocking: blocking, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ExcludeSemantics buildExcludeSemantics(instance, args, {namedArgs}) {
		ExcludeSemantics ctor({key, excluding = true, child}) => ExcludeSemantics(key: key, excluding: excluding, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static IndexedSemantics buildIndexedSemantics(instance, args, {namedArgs}) {
		IndexedSemantics ctor({key, index, child}) => IndexedSemantics(key: key, index: index, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static KeyedSubtree buildKeyedSubtree(instance, args, {namedArgs}) {
		KeyedSubtree ctor({key, child}) => KeyedSubtree(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static KeyedSubtree buildKeyedSubtree_wrap(instance, args, {namedArgs}) {
		KeyedSubtree ctor(child, childIndex) => KeyedSubtree.wrap(child, childIndex);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Builder buildBuilder(instance, args, {namedArgs}) {
		Builder ctor({key, builder}) => Builder(key: key, builder: builder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static StatefulBuilder buildStatefulBuilder(instance, args, {namedArgs}) {
		StatefulBuilder ctor({key, builder}) => StatefulBuilder(key: key, builder: builder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ColoredBox buildColoredBox(instance, args, {namedArgs}) {
		ColoredBox ctor({color, child, key}) => ColoredBox(color: color, child: child, key: key);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static GestureDetector buildGestureDetector(instance, args, {namedArgs}) {
		GestureDetector ctor({key, child, onTapDown, onTapUp, onTap, onTapCancel, onSecondaryTap, onSecondaryTapDown, onSecondaryTapUp, onSecondaryTapCancel, onTertiaryTapDown, onTertiaryTapUp, onTertiaryTapCancel, onDoubleTapDown, onDoubleTap, onDoubleTapCancel, onLongPress, onLongPressStart, onLongPressMoveUpdate, onLongPressUp, onLongPressEnd, onSecondaryLongPress, onSecondaryLongPressStart, onSecondaryLongPressMoveUpdate, onSecondaryLongPressUp, onSecondaryLongPressEnd, onVerticalDragDown, onVerticalDragStart, onVerticalDragUpdate, onVerticalDragEnd, onVerticalDragCancel, onHorizontalDragDown, onHorizontalDragStart, onHorizontalDragUpdate, onHorizontalDragEnd, onHorizontalDragCancel, onForcePressStart, onForcePressPeak, onForcePressUpdate, onForcePressEnd, onPanDown, onPanStart, onPanUpdate, onPanEnd, onPanCancel, onScaleStart, onScaleUpdate, onScaleEnd, behavior, excludeFromSemantics = false, dragStartBehavior = DragStartBehavior.start}) => GestureDetector(key: key, child: child, onTapDown: onTapDown, onTapUp: onTapUp, onTap: onTap, onTapCancel: onTapCancel, onSecondaryTap: onSecondaryTap, onSecondaryTapDown: onSecondaryTapDown, onSecondaryTapUp: onSecondaryTapUp, onSecondaryTapCancel: onSecondaryTapCancel, onTertiaryTapDown: onTertiaryTapDown, onTertiaryTapUp: onTertiaryTapUp, onTertiaryTapCancel: onTertiaryTapCancel, onDoubleTapDown: onDoubleTapDown, onDoubleTap: onDoubleTap, onDoubleTapCancel: onDoubleTapCancel, onLongPress: onLongPress, onLongPressStart: onLongPressStart, onLongPressMoveUpdate: onLongPressMoveUpdate, onLongPressUp: onLongPressUp, onLongPressEnd: onLongPressEnd, onSecondaryLongPress: onSecondaryLongPress, onSecondaryLongPressStart: onSecondaryLongPressStart, onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate, onSecondaryLongPressUp: onSecondaryLongPressUp, onSecondaryLongPressEnd: onSecondaryLongPressEnd, onVerticalDragDown: onVerticalDragDown, onVerticalDragStart: onVerticalDragStart, onVerticalDragUpdate: onVerticalDragUpdate, onVerticalDragEnd: onVerticalDragEnd, onVerticalDragCancel: onVerticalDragCancel, onHorizontalDragDown: onHorizontalDragDown, onHorizontalDragStart: onHorizontalDragStart, onHorizontalDragUpdate: onHorizontalDragUpdate, onHorizontalDragEnd: onHorizontalDragEnd, onHorizontalDragCancel: onHorizontalDragCancel, onForcePressStart: onForcePressStart, onForcePressPeak: onForcePressPeak, onForcePressUpdate: onForcePressUpdate, onForcePressEnd: onForcePressEnd, onPanDown: onPanDown, onPanStart: onPanStart, onPanUpdate: onPanUpdate, onPanEnd: onPanEnd, onPanCancel: onPanCancel, onScaleStart: onScaleStart, onScaleUpdate: onScaleUpdate, onScaleEnd: onScaleEnd, behavior: behavior, excludeFromSemantics: excludeFromSemantics, dragStartBehavior: dragStartBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RawGestureDetector buildRawGestureDetector(instance, args, {namedArgs}) {
		RawGestureDetector ctor({key, child, gestures = const <Type, GestureRecognizerFactory>{}, behavior, excludeFromSemantics = false, semantics}) => RawGestureDetector(key: key, child: child, gestures: gestures, behavior: behavior, excludeFromSemantics: excludeFromSemantics, semantics: semantics);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FutureBuilder buildFutureBuilder(instance, args, {namedArgs}) {
		FutureBuilder ctor({key, future, initialData, builder}) => FutureBuilder(key: key, future: future, initialData: initialData, builder: builder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Text buildText(instance, args, {namedArgs}) {
		Text ctor(data, {key, style, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior}) => Text(data, key: key, style: style, strutStyle: strutStyle, textAlign: textAlign, textDirection: textDirection, locale: locale, softWrap: softWrap, overflow: overflow, textScaleFactor: textScaleFactor, maxLines: maxLines, semanticsLabel: semanticsLabel, textWidthBasis: textWidthBasis, textHeightBehavior: textHeightBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Text buildText_rich(instance, args, {namedArgs}) {
		Text ctor(textSpan, {key, style, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior}) => Text.rich(textSpan, key: key, style: style, strutStyle: strutStyle, textAlign: textAlign, textDirection: textDirection, locale: locale, softWrap: softWrap, overflow: overflow, textScaleFactor: textScaleFactor, maxLines: maxLines, semanticsLabel: semanticsLabel, textWidthBasis: textWidthBasis, textHeightBehavior: textHeightBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ActionListener buildActionListener(instance, args, {namedArgs}) {
		ActionListener ctor({key, listener, action, child}) => ActionListener(key: key, listener: listener, action: action, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Actions buildActions(instance, args, {namedArgs}) {
		Actions ctor({key, dispatcher, actions, child}) => Actions(key: key, dispatcher: dispatcher, actions: actions, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FocusableActionDetector buildFocusableActionDetector(instance, args, {namedArgs}) {
		FocusableActionDetector ctor({key, enabled = true, focusNode, autofocus = false, shortcuts, actions, onShowFocusHighlight, onShowHoverHighlight, onFocusChange, mouseCursor = MouseCursor.defer, child}) => FocusableActionDetector(key: key, enabled: enabled, focusNode: focusNode, autofocus: autofocus, shortcuts: shortcuts, actions: actions, onShowFocusHighlight: onShowFocusHighlight, onShowHoverHighlight: onShowHoverHighlight, onFocusChange: onFocusChange, mouseCursor: mouseCursor, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Form buildForm(instance, args, {namedArgs}) {
		Form ctor({key, child, onWillPop, onChanged, autovalidateMode}) => Form(key: key, child: child, onWillPop: onWillPop, onChanged: onChanged, autovalidateMode: autovalidateMode);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FormField buildFormField(instance, args, {namedArgs}) {
		FormField ctor({key, builder, onSaved, validator, initialValue, enabled = true, autovalidateMode}) => FormField(key: key, builder: builder, onSaved: onSaved, validator: validator, initialValue: initialValue, enabled: enabled, autovalidateMode: autovalidateMode);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Image buildImage(instance, args, {namedArgs}) {
		Image ctor({key, image, frameBuilder, loadingBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, isAntiAlias = false, filterQuality = FilterQuality.low}) => Image(key: key, image: image, frameBuilder: frameBuilder, loadingBuilder: loadingBuilder, errorBuilder: errorBuilder, semanticLabel: semanticLabel, excludeFromSemantics: excludeFromSemantics, width: width, height: height, color: color, colorBlendMode: colorBlendMode, fit: fit, alignment: alignment, repeat: repeat, centerSlice: centerSlice, matchTextDirection: matchTextDirection, gaplessPlayback: gaplessPlayback, isAntiAlias: isAntiAlias, filterQuality: filterQuality);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Image buildImage_network(instance, args, {namedArgs}) {
		Image ctor(src, {key, scale = 1.0, frameBuilder, loadingBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, filterQuality = FilterQuality.low, isAntiAlias = false, headers, cacheWidth, cacheHeight}) => Image.network(src, key: key, scale: scale, frameBuilder: frameBuilder, loadingBuilder: loadingBuilder, errorBuilder: errorBuilder, semanticLabel: semanticLabel, excludeFromSemantics: excludeFromSemantics, width: width, height: height, color: color, colorBlendMode: colorBlendMode, fit: fit, alignment: alignment, repeat: repeat, centerSlice: centerSlice, matchTextDirection: matchTextDirection, gaplessPlayback: gaplessPlayback, filterQuality: filterQuality, isAntiAlias: isAntiAlias, headers: headers, cacheWidth: cacheWidth, cacheHeight: cacheHeight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Image buildImage_file(instance, args, {namedArgs}) {
		Image ctor(file, {key, scale = 1.0, frameBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, isAntiAlias = false, filterQuality = FilterQuality.low, cacheWidth, cacheHeight}) => Image.file(file, key: key, scale: scale, frameBuilder: frameBuilder, errorBuilder: errorBuilder, semanticLabel: semanticLabel, excludeFromSemantics: excludeFromSemantics, width: width, height: height, color: color, colorBlendMode: colorBlendMode, fit: fit, alignment: alignment, repeat: repeat, centerSlice: centerSlice, matchTextDirection: matchTextDirection, gaplessPlayback: gaplessPlayback, isAntiAlias: isAntiAlias, filterQuality: filterQuality, cacheWidth: cacheWidth, cacheHeight: cacheHeight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Image buildImage_asset(instance, args, {namedArgs}) {
		Image ctor(name, {key, bundle, frameBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, scale, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, isAntiAlias = false, package, filterQuality = FilterQuality.low, cacheWidth, cacheHeight}) => Image.asset(name, key: key, bundle: bundle, frameBuilder: frameBuilder, errorBuilder: errorBuilder, semanticLabel: semanticLabel, excludeFromSemantics: excludeFromSemantics, scale: scale, width: width, height: height, color: color, colorBlendMode: colorBlendMode, fit: fit, alignment: alignment, repeat: repeat, centerSlice: centerSlice, matchTextDirection: matchTextDirection, gaplessPlayback: gaplessPlayback, isAntiAlias: isAntiAlias, package: package, filterQuality: filterQuality, cacheWidth: cacheWidth, cacheHeight: cacheHeight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Image buildImage_memory(instance, args, {namedArgs}) {
		Image ctor(bytes, {key, scale = 1.0, frameBuilder, errorBuilder, semanticLabel, excludeFromSemantics = false, width, height, color, colorBlendMode, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, centerSlice, matchTextDirection = false, gaplessPlayback = false, isAntiAlias = false, filterQuality = FilterQuality.low, cacheWidth, cacheHeight}) => Image.memory(bytes, key: key, scale: scale, frameBuilder: frameBuilder, errorBuilder: errorBuilder, semanticLabel: semanticLabel, excludeFromSemantics: excludeFromSemantics, width: width, height: height, color: color, colorBlendMode: colorBlendMode, fit: fit, alignment: alignment, repeat: repeat, centerSlice: centerSlice, matchTextDirection: matchTextDirection, gaplessPlayback: gaplessPlayback, isAntiAlias: isAntiAlias, filterQuality: filterQuality, cacheWidth: cacheWidth, cacheHeight: cacheHeight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static NestedScrollView buildNestedScrollView(instance, args, {namedArgs}) {
		NestedScrollView ctor({key, controller, scrollDirection = Axis.vertical, reverse = false, physics, headerSliverBuilder, body, dragStartBehavior = DragStartBehavior.start, floatHeaderSlivers = false, clipBehavior = Clip.hardEdge, restorationId}) => NestedScrollView(key: key, controller: controller, scrollDirection: scrollDirection, reverse: reverse, physics: physics, headerSliverBuilder: headerSliverBuilder, body: body, dragStartBehavior: dragStartBehavior, floatHeaderSlivers: floatHeaderSlivers, clipBehavior: clipBehavior, restorationId: restorationId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverOverlapAbsorber buildSliverOverlapAbsorber(instance, args, {namedArgs}) {
		SliverOverlapAbsorber ctor({key, handle, sliver}) => SliverOverlapAbsorber(key: key, handle: handle, sliver: sliver);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverOverlapInjector buildSliverOverlapInjector(instance, args, {namedArgs}) {
		SliverOverlapInjector ctor({key, handle, sliver}) => SliverOverlapInjector(key: key, handle: handle, sliver: sliver);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static NavigationToolbar buildNavigationToolbar(instance, args, {namedArgs}) {
		NavigationToolbar ctor({key, leading, middle, trailing, centerMiddle = true, middleSpacing = NavigationToolbar.kMiddleSpacing}) => NavigationToolbar(key: key, leading: leading, middle: middle, trailing: trailing, centerMiddle: centerMiddle, middleSpacing: middleSpacing);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ReorderableList buildReorderableList(instance, args, {namedArgs}) {
		ReorderableList ctor({key, itemBuilder, itemCount, onReorder, proxyDecorator, padding, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, anchor = 0.0, cacheExtent, dragStartBehavior = DragStartBehavior.start, keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, restorationId, clipBehavior = Clip.hardEdge}) => ReorderableList(key: key, itemBuilder: itemBuilder, itemCount: itemCount, onReorder: onReorder, proxyDecorator: proxyDecorator, padding: padding, scrollDirection: scrollDirection, reverse: reverse, controller: controller, primary: primary, physics: physics, shrinkWrap: shrinkWrap, anchor: anchor, cacheExtent: cacheExtent, dragStartBehavior: dragStartBehavior, keyboardDismissBehavior: keyboardDismissBehavior, restorationId: restorationId, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverReorderableList buildSliverReorderableList(instance, args, {namedArgs}) {
		SliverReorderableList ctor({key, itemBuilder, itemCount, onReorder, proxyDecorator}) => SliverReorderableList(key: key, itemBuilder: itemBuilder, itemCount: itemCount, onReorder: onReorder, proxyDecorator: proxyDecorator);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ReorderableDragStartListener buildReorderableDragStartListener(instance, args, {namedArgs}) {
		ReorderableDragStartListener ctor({key, child, index}) => ReorderableDragStartListener(key: key, child: child, index: index);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ReorderableDelayedDragStartListener buildReorderableDelayedDragStartListener(instance, args, {namedArgs}) {
		ReorderableDelayedDragStartListener ctor({key, child, index}) => ReorderableDelayedDragStartListener(key: key, child: child, index: index);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Navigator buildNavigator(instance, args, {namedArgs}) {
		Navigator ctor({key, pages = const <Page<dynamic>>[], onPopPage, initialRoute, onGenerateRoute, onUnknownRoute, transitionDelegate = const DefaultTransitionDelegate<dynamic>(), reportsRouteUpdateToEngine = false, observers = const <NavigatorObserver>[], restorationScopeId}) => Navigator(key: key, pages: List<Page<dynamic>>.from(pages), onPopPage: onPopPage, initialRoute: initialRoute, onGenerateRoute: onGenerateRoute, onUnknownRoute: onUnknownRoute, transitionDelegate: transitionDelegate, reportsRouteUpdateToEngine: reportsRouteUpdateToEngine, observers: List<NavigatorObserver>.from(observers), restorationScopeId: restorationScopeId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PreferredSize buildPreferredSize(instance, args, {namedArgs}) {
		PreferredSize ctor({key, child, preferredSize}) => PreferredSize(key: key, child: child, preferredSize: preferredSize);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ValueListenableBuilder buildValueListenableBuilder(instance, args, {namedArgs}) {
		ValueListenableBuilder ctor({key, valueListenable, builder, child}) => ValueListenableBuilder(key: key, valueListenable: valueListenable, builder: builder, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DraggableScrollableSheet buildDraggableScrollableSheet(instance, args, {namedArgs}) {
		DraggableScrollableSheet ctor({key, initialChildSize = 0.5, minChildSize = 0.25, maxChildSize = 1.0, expand = true, builder}) => DraggableScrollableSheet(key: key, initialChildSize: initialChildSize, minChildSize: minChildSize, maxChildSize: maxChildSize, expand: expand, builder: builder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DraggableScrollableActuator buildDraggableScrollableActuator(instance, args, {namedArgs}) {
		DraggableScrollableActuator ctor({key, child}) => DraggableScrollableActuator(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DecoratedBox buildDecoratedBox(instance, args, {namedArgs}) {
		DecoratedBox ctor({key, decoration, position = DecorationPosition.background, child}) => DecoratedBox(key: key, decoration: decoration, position: position, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Container buildContainer(instance, args, {namedArgs}) {
		Container ctor({key, alignment, padding, color, decoration, foregroundDecoration, width, height, constraints, margin, transform, transformAlignment, child, clipBehavior = Clip.none}) => Container(key: key, alignment: alignment, padding: padding, color: color, decoration: decoration, foregroundDecoration: foregroundDecoration, width: width, height: height, constraints: constraints, margin: margin, transform: transform, transformAlignment: transformAlignment, child: child, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ScrollAwareImageProvider buildScrollAwareImageProvider(instance, args, {namedArgs}) {
		ScrollAwareImageProvider ctor({context, imageProvider}) => ScrollAwareImageProvider(context: context, imageProvider: imageProvider);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static EditableText buildEditableText(instance, args, {namedArgs}) {
		EditableText ctor({key, controller, focusNode, readOnly = false, obscuringCharacter = '•', obscureText = false, autocorrect = true, smartDashesType, smartQuotesType, enableSuggestions = true, style, strutStyle, cursorColor, backgroundCursorColor, textAlign = TextAlign.start, textDirection, locale, textScaleFactor, maxLines = 1, minLines, expands = false, forceLine = true, textHeightBehavior, textWidthBasis = TextWidthBasis.parent, autofocus = false, showCursor, showSelectionHandles = false, selectionColor, selectionControls, keyboardType, textInputAction, textCapitalization = TextCapitalization.none, onChanged, onEditingComplete, onSubmitted, onAppPrivateCommand, onSelectionChanged, onSelectionHandleTapped, inputFormatters, mouseCursor, rendererIgnoresPointer = false, cursorWidth = 2.0, cursorHeight, cursorRadius, cursorOpacityAnimates = false, cursorOffset, paintCursorAboveText = false, selectionHeightStyle = BoxHeightStyle.tight, selectionWidthStyle = BoxWidthStyle.tight, scrollPadding = const EdgeInsets.all(20.0), keyboardAppearance = Brightness.light, dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, scrollController, scrollPhysics, autocorrectionTextRectColor, toolbarOptions = const ToolbarOptions(copy: true, cut: true, paste: true, selectAll: true), autofillHints, clipBehavior = Clip.hardEdge, restorationId}) => EditableText(key: key, controller: controller, focusNode: focusNode, readOnly: readOnly, obscuringCharacter: obscuringCharacter, obscureText: obscureText, autocorrect: autocorrect, smartDashesType: smartDashesType, smartQuotesType: smartQuotesType, enableSuggestions: enableSuggestions, style: style, strutStyle: strutStyle, cursorColor: cursorColor, backgroundCursorColor: backgroundCursorColor, textAlign: textAlign, textDirection: textDirection, locale: locale, textScaleFactor: textScaleFactor, maxLines: maxLines, minLines: minLines, expands: expands, forceLine: forceLine, textHeightBehavior: textHeightBehavior, textWidthBasis: textWidthBasis, autofocus: autofocus, showCursor: showCursor, showSelectionHandles: showSelectionHandles, selectionColor: selectionColor, selectionControls: selectionControls, keyboardType: keyboardType, textInputAction: textInputAction, textCapitalization: textCapitalization, onChanged: onChanged, onEditingComplete: onEditingComplete, onSubmitted: onSubmitted, onAppPrivateCommand: onAppPrivateCommand, onSelectionChanged: onSelectionChanged, onSelectionHandleTapped: onSelectionHandleTapped, inputFormatters: List<TextInputFormatter>.from(inputFormatters), mouseCursor: mouseCursor, rendererIgnoresPointer: rendererIgnoresPointer, cursorWidth: cursorWidth, cursorHeight: cursorHeight, cursorRadius: cursorRadius, cursorOpacityAnimates: cursorOpacityAnimates, cursorOffset: cursorOffset, paintCursorAboveText: paintCursorAboveText, selectionHeightStyle: selectionHeightStyle, selectionWidthStyle: selectionWidthStyle, scrollPadding: scrollPadding, keyboardAppearance: keyboardAppearance, dragStartBehavior: dragStartBehavior, enableInteractiveSelection: enableInteractiveSelection, scrollController: scrollController, scrollPhysics: scrollPhysics, autocorrectionTextRectColor: autocorrectionTextRectColor, toolbarOptions: toolbarOptions, autofillHints: autofillHints, clipBehavior: clipBehavior, restorationId: restorationId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Placeholder buildPlaceholder(instance, args, {namedArgs}) {
		Placeholder ctor({key, color = const Color(0xFF455A64), strokeWidth = 2.0, fallbackWidth = 400.0, fallbackHeight = 400.0}) => Placeholder(key: key, color: color, strokeWidth: strokeWidth, fallbackWidth: fallbackWidth, fallbackHeight: fallbackHeight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Icon buildIcon(instance, args, {namedArgs}) {
		Icon ctor(icon, {key, size, color, semanticLabel, textDirection}) => Icon(icon, key: key, size: size, color: color, semanticLabel: semanticLabel, textDirection: textDirection);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ImageIcon buildImageIcon(instance, args, {namedArgs}) {
		ImageIcon ctor(image, {key, size, color, semanticLabel}) => ImageIcon(image, key: key, size: size, color: color, semanticLabel: semanticLabel);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Scrollable buildScrollable(instance, args, {namedArgs}) {
		Scrollable ctor({key, axisDirection = AxisDirection.down, controller, physics, viewportBuilder, incrementCalculator, excludeFromSemantics = false, semanticChildCount, dragStartBehavior = DragStartBehavior.start, restorationId}) => Scrollable(key: key, axisDirection: axisDirection, controller: controller, physics: physics, viewportBuilder: viewportBuilder, incrementCalculator: incrementCalculator, excludeFromSemantics: excludeFromSemantics, semanticChildCount: semanticChildCount, dragStartBehavior: dragStartBehavior, restorationId: restorationId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static OrientationBuilder buildOrientationBuilder(instance, args, {namedArgs}) {
		OrientationBuilder ctor({key, builder}) => OrientationBuilder(key: key, builder: builder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FocusNode buildFocusNode(instance, args, {namedArgs}) {
		FocusNode ctor({debugLabel, onKey, skipTraversal = false, canRequestFocus = true, descendantsAreFocusable = true}) => FocusNode(debugLabel: debugLabel, onKey: onKey, skipTraversal: skipTraversal, canRequestFocus: canRequestFocus, descendantsAreFocusable: descendantsAreFocusable);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static OrderedTraversalPolicy buildOrderedTraversalPolicy(instance, args, {namedArgs}) {
		OrderedTraversalPolicy ctor({secondary}) => OrderedTraversalPolicy(secondary: secondary);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FocusTraversalGroup buildFocusTraversalGroup(instance, args, {namedArgs}) {
		FocusTraversalGroup ctor({key, policy, descendantsAreFocusable = true, child}) => FocusTraversalGroup(key: key, policy: policy, descendantsAreFocusable: descendantsAreFocusable, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ColorFiltered buildColorFiltered(instance, args, {namedArgs}) {
		ColorFiltered ctor({colorFilter, child, key}) => ColorFiltered(colorFilter: colorFilter, child: child, key: key);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Title buildTitle(instance, args, {namedArgs}) {
		Title ctor({key, title = '', color, child}) => Title(key: key, title: title, color: color, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AnimatedSwitcher buildAnimatedSwitcher(instance, args, {namedArgs}) {
		AnimatedSwitcher ctor({key, child, duration, reverseDuration, switchInCurve = Curves.linear, switchOutCurve = Curves.linear, layoutBuilder = AnimatedSwitcher.defaultLayoutBuilder}) => AnimatedSwitcher(key: key, child: child, duration: duration, reverseDuration: reverseDuration, switchInCurve: switchInCurve, switchOutCurve: switchOutCurve, layoutBuilder: layoutBuilder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DualTransitionBuilder buildDualTransitionBuilder(instance, args, {namedArgs}) {
		DualTransitionBuilder ctor({key, animation, forwardBuilder, reverseBuilder, child}) => DualTransitionBuilder(key: key, animation: animation, forwardBuilder: forwardBuilder, reverseBuilder: reverseBuilder, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Visibility buildVisibility(instance, args, {namedArgs}) {
		Visibility ctor({key, child, replacement = const SizedBox.shrink(), visible = true, maintainState = false, maintainAnimation = false, maintainSize = false, maintainSemantics = false, maintainInteractivity = false}) => Visibility(key: key, child: child, replacement: replacement, visible: visible, maintainState: maintainState, maintainAnimation: maintainAnimation, maintainSize: maintainSize, maintainSemantics: maintainSemantics, maintainInteractivity: maintainInteractivity);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverVisibility buildSliverVisibility(instance, args, {namedArgs}) {
		SliverVisibility ctor({key, sliver, replacementSliver = const SliverToBoxAdapter(), visible = true, maintainState = false, maintainAnimation = false, maintainSize = false, maintainSemantics = false, maintainInteractivity = false}) => SliverVisibility(key: key, sliver: sliver, replacementSliver: replacementSliver, visible: visible, maintainState: maintainState, maintainAnimation: maintainAnimation, maintainSize: maintainSize, maintainSemantics: maintainSemantics, maintainInteractivity: maintainInteractivity);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AnnotatedRegion buildAnnotatedRegion(instance, args, {namedArgs}) {
		AnnotatedRegion ctor({key, child, value, sized = true}) => AnnotatedRegion(key: key, child: child, value: value, sized: sized);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static BannerPainter buildBannerPainter(instance, args, {namedArgs}) {
		BannerPainter ctor({message, textDirection, location, layoutDirection}) => BannerPainter(message: message, textDirection: textDirection, location: location, layoutDirection: layoutDirection);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Banner buildBanner(instance, args, {namedArgs}) {
		Banner ctor({key, child, message, textDirection, location, layoutDirection}) => Banner(key: key, child: child, message: message, textDirection: textDirection, location: location, layoutDirection: layoutDirection);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static CheckedModeBanner buildCheckedModeBanner(instance, args, {namedArgs}) {
		CheckedModeBanner ctor({key, child}) => CheckedModeBanner(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static NotificationListener buildNotificationListener(instance, args, {namedArgs}) {
		NotificationListener ctor({key, child, onNotification}) => NotificationListener(key: key, child: child, onNotification: onNotification);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PageView buildPageView(instance, args, {namedArgs}) {
		PageView ctor({key, scrollDirection = Axis.horizontal, reverse = false, controller, physics, pageSnapping = true, onPageChanged, children = const <Widget>[], dragStartBehavior = DragStartBehavior.start, allowImplicitScrolling = false, restorationId, clipBehavior = Clip.hardEdge}) => PageView(key: key, scrollDirection: scrollDirection, reverse: reverse, controller: controller, physics: physics, pageSnapping: pageSnapping, onPageChanged: onPageChanged, children: List<Widget>.from(children), dragStartBehavior: dragStartBehavior, allowImplicitScrolling: allowImplicitScrolling, restorationId: restorationId, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PageView buildPageView_builder(instance, args, {namedArgs}) {
		PageView ctor({key, scrollDirection = Axis.horizontal, reverse = false, controller, physics, pageSnapping = true, onPageChanged, itemBuilder, itemCount, dragStartBehavior = DragStartBehavior.start, allowImplicitScrolling = false, restorationId, clipBehavior = Clip.hardEdge}) => PageView.builder(key: key, scrollDirection: scrollDirection, reverse: reverse, controller: controller, physics: physics, pageSnapping: pageSnapping, onPageChanged: onPageChanged, itemBuilder: itemBuilder, itemCount: itemCount, dragStartBehavior: dragStartBehavior, allowImplicitScrolling: allowImplicitScrolling, restorationId: restorationId, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PageView buildPageView_custom(instance, args, {namedArgs}) {
		PageView ctor({key, scrollDirection = Axis.horizontal, reverse = false, controller, physics, pageSnapping = true, onPageChanged, childrenDelegate, dragStartBehavior = DragStartBehavior.start, allowImplicitScrolling = false, restorationId, clipBehavior = Clip.hardEdge}) => PageView.custom(key: key, scrollDirection: scrollDirection, reverse: reverse, controller: controller, physics: physics, pageSnapping: pageSnapping, onPageChanged: onPageChanged, childrenDelegate: childrenDelegate, dragStartBehavior: dragStartBehavior, allowImplicitScrolling: allowImplicitScrolling, restorationId: restorationId, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Shortcuts buildShortcuts(instance, args, {namedArgs}) {
		Shortcuts ctor({key, manager, shortcuts, child, debugLabel}) => Shortcuts(key: key, manager: manager, shortcuts: shortcuts, child: child, debugLabel: debugLabel);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ImageFiltered buildImageFiltered(instance, args, {namedArgs}) {
		ImageFiltered ctor({key, imageFilter, child}) => ImageFiltered(key: key, imageFilter: imageFilter, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Draggable buildDraggable(instance, args, {namedArgs}) {
		Draggable ctor({key, child, feedback, data, axis, childWhenDragging, feedbackOffset = Offset.zero, dragAnchor = DragAnchor.child, affinity, maxSimultaneousDrags, onDragStarted, onDragUpdate, onDraggableCanceled, onDragEnd, onDragCompleted, ignoringFeedbackSemantics = true, rootOverlay = false}) => Draggable(key: key, child: child, feedback: feedback, data: data, axis: axis, childWhenDragging: childWhenDragging, feedbackOffset: feedbackOffset, dragAnchor: dragAnchor, affinity: affinity, maxSimultaneousDrags: maxSimultaneousDrags, onDragStarted: onDragStarted, onDragUpdate: onDragUpdate, onDraggableCanceled: onDraggableCanceled, onDragEnd: onDragEnd, onDragCompleted: onDragCompleted, ignoringFeedbackSemantics: ignoringFeedbackSemantics, rootOverlay: rootOverlay);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static LongPressDraggable buildLongPressDraggable(instance, args, {namedArgs}) {
		LongPressDraggable ctor({key, child, feedback, data, axis, childWhenDragging, feedbackOffset = Offset.zero, dragAnchor = DragAnchor.child, maxSimultaneousDrags, onDragStarted, onDragUpdate, onDraggableCanceled, onDragEnd, onDragCompleted, hapticFeedbackOnStart = true, ignoringFeedbackSemantics = true}) => LongPressDraggable(key: key, child: child, feedback: feedback, data: data, axis: axis, childWhenDragging: childWhenDragging, feedbackOffset: feedbackOffset, dragAnchor: dragAnchor, maxSimultaneousDrags: maxSimultaneousDrags, onDragStarted: onDragStarted, onDragUpdate: onDragUpdate, onDraggableCanceled: onDraggableCanceled, onDragEnd: onDragEnd, onDragCompleted: onDragCompleted, hapticFeedbackOnStart: hapticFeedbackOnStart, ignoringFeedbackSemantics: ignoringFeedbackSemantics);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DragTarget buildDragTarget(instance, args, {namedArgs}) {
		DragTarget ctor({key, builder, onWillAccept, onAccept, onAcceptWithDetails, onLeave, onMove}) => DragTarget(key: key, builder: builder, onWillAccept: onWillAccept, onAccept: onAccept, onAcceptWithDetails: onAcceptWithDetails, onLeave: onLeave, onMove: onMove);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static GlowingOverscrollIndicator buildGlowingOverscrollIndicator(instance, args, {namedArgs}) {
		GlowingOverscrollIndicator ctor({key, showLeading = true, showTrailing = true, axisDirection, color, notificationPredicate = defaultScrollNotificationPredicate, child}) => GlowingOverscrollIndicator(key: key, showLeading: showLeading, showTrailing: showTrailing, axisDirection: axisDirection, color: color, notificationPredicate: notificationPredicate, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Hero buildHero(instance, args, {namedArgs}) {
		Hero ctor({key, tag, createRectTween, flightShuttleBuilder, placeholderBuilder, transitionOnUserGestures = false, child}) => Hero(key: key, tag: tag, createRectTween: createRectTween, flightShuttleBuilder: flightShuttleBuilder, placeholderBuilder: placeholderBuilder, transitionOnUserGestures: transitionOnUserGestures, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static HeroMode buildHeroMode(instance, args, {namedArgs}) {
		HeroMode ctor({key, child, enabled = true}) => HeroMode(key: key, child: child, enabled: enabled);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SizeChangedLayoutNotifier buildSizeChangedLayoutNotifier(instance, args, {namedArgs}) {
		SizeChangedLayoutNotifier ctor({key, child}) => SizeChangedLayoutNotifier(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static WidgetInspector buildWidgetInspector(instance, args, {namedArgs}) {
		WidgetInspector ctor({key, child, selectButtonBuilder}) => WidgetInspector(key: key, child: child, selectButtonBuilder: selectButtonBuilder);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AutomaticKeepAlive buildAutomaticKeepAlive(instance, args, {namedArgs}) {
		AutomaticKeepAlive ctor({key, child}) => AutomaticKeepAlive(key: key, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static UniqueKey buildUniqueKey(instance, args, {namedArgs}) {
		UniqueKey ctor() => UniqueKey();
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ObjectKey buildObjectKey(instance, args, {namedArgs}) {
		ObjectKey ctor(value) => ObjectKey(value);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static LabeledGlobalKey buildLabeledGlobalKey(instance, args, {namedArgs}) {
		LabeledGlobalKey ctor(_debugLabel) => LabeledGlobalKey(_debugLabel);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static GlobalObjectKey buildGlobalObjectKey(instance, args, {namedArgs}) {
		GlobalObjectKey ctor(value) => GlobalObjectKey(value);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SemanticsDebugger buildSemanticsDebugger(instance, args, {namedArgs}) {
		SemanticsDebugger ctor({key, child, labelStyle = const TextStyle(color: Color(0xFF000000), fontSize: 10.0, height: 0.8)}) => SemanticsDebugger(key: key, child: child, labelStyle: labelStyle);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TextSelectionGestureDetector buildTextSelectionGestureDetector(instance, args, {namedArgs}) {
		TextSelectionGestureDetector ctor({key, onTapDown, onForcePressStart, onForcePressEnd, onSecondaryTap, onSecondaryTapDown, onSingleTapUp, onSingleTapCancel, onSingleLongTapStart, onSingleLongTapMoveUpdate, onSingleLongTapEnd, onDoubleTapDown, onDragSelectionStart, onDragSelectionUpdate, onDragSelectionEnd, behavior, child}) => TextSelectionGestureDetector(key: key, onTapDown: onTapDown, onForcePressStart: onForcePressStart, onForcePressEnd: onForcePressEnd, onSecondaryTap: onSecondaryTap, onSecondaryTapDown: onSecondaryTapDown, onSingleTapUp: onSingleTapUp, onSingleTapCancel: onSingleTapCancel, onSingleLongTapStart: onSingleLongTapStart, onSingleLongTapMoveUpdate: onSingleLongTapMoveUpdate, onSingleLongTapEnd: onSingleLongTapEnd, onDoubleTapDown: onDoubleTapDown, onDragSelectionStart: onDragSelectionStart, onDragSelectionUpdate: onDragSelectionUpdate, onDragSelectionEnd: onDragSelectionEnd, behavior: behavior, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TickerMode buildTickerMode(instance, args, {namedArgs}) {
		TickerMode ctor({key, enabled, child}) => TickerMode(key: key, enabled: enabled, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RestorationScope buildRestorationScope(instance, args, {namedArgs}) {
		RestorationScope ctor({key, restorationId, child}) => RestorationScope(key: key, restorationId: restorationId, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RootRestorationScope buildRootRestorationScope(instance, args, {namedArgs}) {
		RootRestorationScope ctor({key, restorationId, child}) => RootRestorationScope(key: key, restorationId: restorationId, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AnimatedList buildAnimatedList(instance, args, {namedArgs}) {
		AnimatedList ctor({key, itemBuilder, initialItemCount = 0, scrollDirection = Axis.vertical, reverse = false, controller, primary, physics, shrinkWrap = false, padding}) => AnimatedList(key: key, itemBuilder: itemBuilder, initialItemCount: initialItemCount, scrollDirection: scrollDirection, reverse: reverse, controller: controller, primary: primary, physics: physics, shrinkWrap: shrinkWrap, padding: padding);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverAnimatedList buildSliverAnimatedList(instance, args, {namedArgs}) {
		SliverAnimatedList ctor({key, itemBuilder, initialItemCount = 0}) => SliverAnimatedList(key: key, itemBuilder: itemBuilder, initialItemCount: initialItemCount);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static IconData buildIconData(instance, args, {namedArgs}) {
		IconData ctor(codePoint, {fontFamily, fontPackage, matchTextDirection = false}) => IconData(codePoint, fontFamily: fontFamily, fontPackage: fontPackage, matchTextDirection: matchTextDirection);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FadeInImage buildFadeInImage(instance, args, {namedArgs}) {
		FadeInImage ctor({key, placeholder, placeholderErrorBuilder, image, imageErrorBuilder, excludeFromSemantics = false, imageSemanticLabel, fadeOutDuration = const Duration(milliseconds: 300), fadeOutCurve = Curves.easeOut, fadeInDuration = const Duration(milliseconds: 700), fadeInCurve = Curves.easeIn, width, height, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, matchTextDirection = false}) => FadeInImage(key: key, placeholder: placeholder, placeholderErrorBuilder: placeholderErrorBuilder, image: image, imageErrorBuilder: imageErrorBuilder, excludeFromSemantics: excludeFromSemantics, imageSemanticLabel: imageSemanticLabel, fadeOutDuration: fadeOutDuration, fadeOutCurve: fadeOutCurve, fadeInDuration: fadeInDuration, fadeInCurve: fadeInCurve, width: width, height: height, fit: fit, alignment: alignment, repeat: repeat, matchTextDirection: matchTextDirection);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FadeInImage buildFadeInImage_memoryNetwork(instance, args, {namedArgs}) {
		FadeInImage ctor({key, placeholder, placeholderErrorBuilder, image, imageErrorBuilder, placeholderScale = 1.0, imageScale = 1.0, excludeFromSemantics = false, imageSemanticLabel, fadeOutDuration = const Duration(milliseconds: 300), fadeOutCurve = Curves.easeOut, fadeInDuration = const Duration(milliseconds: 700), fadeInCurve = Curves.easeIn, width, height, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, matchTextDirection = false, placeholderCacheWidth, placeholderCacheHeight, imageCacheWidth, imageCacheHeight}) => FadeInImage.memoryNetwork(key: key, placeholder: placeholder, placeholderErrorBuilder: placeholderErrorBuilder, image: image, imageErrorBuilder: imageErrorBuilder, placeholderScale: placeholderScale, imageScale: imageScale, excludeFromSemantics: excludeFromSemantics, imageSemanticLabel: imageSemanticLabel, fadeOutDuration: fadeOutDuration, fadeOutCurve: fadeOutCurve, fadeInDuration: fadeInDuration, fadeInCurve: fadeInCurve, width: width, height: height, fit: fit, alignment: alignment, repeat: repeat, matchTextDirection: matchTextDirection, placeholderCacheWidth: placeholderCacheWidth, placeholderCacheHeight: placeholderCacheHeight, imageCacheWidth: imageCacheWidth, imageCacheHeight: imageCacheHeight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FadeInImage buildFadeInImage_assetNetwork(instance, args, {namedArgs}) {
		FadeInImage ctor({key, placeholder, placeholderErrorBuilder, image, imageErrorBuilder, bundle, placeholderScale, imageScale = 1.0, excludeFromSemantics = false, imageSemanticLabel, fadeOutDuration = const Duration(milliseconds: 300), fadeOutCurve = Curves.easeOut, fadeInDuration = const Duration(milliseconds: 700), fadeInCurve = Curves.easeIn, width, height, fit, alignment = Alignment.center, repeat = ImageRepeat.noRepeat, matchTextDirection = false, placeholderCacheWidth, placeholderCacheHeight, imageCacheWidth, imageCacheHeight}) => FadeInImage.assetNetwork(key: key, placeholder: placeholder, placeholderErrorBuilder: placeholderErrorBuilder, image: image, imageErrorBuilder: imageErrorBuilder, bundle: bundle, placeholderScale: placeholderScale, imageScale: imageScale, excludeFromSemantics: excludeFromSemantics, imageSemanticLabel: imageSemanticLabel, fadeOutDuration: fadeOutDuration, fadeOutCurve: fadeOutCurve, fadeInDuration: fadeInDuration, fadeInCurve: fadeInCurve, width: width, height: height, fit: fit, alignment: alignment, repeat: repeat, matchTextDirection: matchTextDirection, placeholderCacheWidth: placeholderCacheWidth, placeholderCacheHeight: placeholderCacheHeight, imageCacheWidth: imageCacheWidth, imageCacheHeight: imageCacheHeight);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Focus buildFocus(instance, args, {namedArgs}) {
		Focus ctor({key, child, focusNode, autofocus = false, onFocusChange, onKey, debugLabel, canRequestFocus, descendantsAreFocusable = true, skipTraversal, includeSemantics = true}) => Focus(key: key, child: child, focusNode: focusNode, autofocus: autofocus, onFocusChange: onFocusChange, onKey: onKey, debugLabel: debugLabel, canRequestFocus: canRequestFocus, descendantsAreFocusable: descendantsAreFocusable, skipTraversal: skipTraversal, includeSemantics: includeSemantics);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static FocusScope buildFocusScope(instance, args, {namedArgs}) {
		FocusScope ctor({key, node, child, autofocus = false, onFocusChange, canRequestFocus, skipTraversal, onKey, debugLabel}) => FocusScope(key: key, node: node, child: child, autofocus: autofocus, onFocusChange: onFocusChange, canRequestFocus: canRequestFocus, skipTraversal: skipTraversal, onKey: onKey, debugLabel: debugLabel);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ExcludeFocus buildExcludeFocus(instance, args, {namedArgs}) {
		ExcludeFocus ctor({key, excluding = true, child}) => ExcludeFocus(key: key, excluding: excluding, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ModalBarrier buildModalBarrier(instance, args, {namedArgs}) {
		ModalBarrier ctor({key, color, dismissible = true, semanticsLabel, barrierSemanticsDismissible = true}) => ModalBarrier(key: key, color: color, dismissible: dismissible, semanticsLabel: semanticsLabel, barrierSemanticsDismissible: barrierSemanticsDismissible);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static InteractiveViewer buildInteractiveViewer(instance, args, {namedArgs}) {
		InteractiveViewer ctor({key, clipBehavior = Clip.hardEdge, alignPanAxis = false, boundaryMargin = EdgeInsets.zero, constrained = true, maxScale = 2.5, minScale = 0.8, onInteractionEnd, onInteractionStart, onInteractionUpdate, panEnabled = true, scaleEnabled = true, transformationController, child}) => InteractiveViewer(key: key, clipBehavior: clipBehavior, alignPanAxis: alignPanAxis, boundaryMargin: boundaryMargin, constrained: constrained, maxScale: maxScale, minScale: minScale, onInteractionEnd: onInteractionEnd, onInteractionStart: onInteractionStart, onInteractionUpdate: onInteractionUpdate, panEnabled: panEnabled, scaleEnabled: scaleEnabled, transformationController: transformationController, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AutofillGroup buildAutofillGroup(instance, args, {namedArgs}) {
		AutofillGroup ctor({key, child, onDisposeAction = AutofillContextAction.commit}) => AutofillGroup(key: key, child: child, onDisposeAction: onDisposeAction);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ListWheelScrollView buildListWheelScrollView(instance, args, {namedArgs}) {
		ListWheelScrollView ctor({key, controller, physics, diameterRatio = RenderListWheelViewport.defaultDiameterRatio, perspective = RenderListWheelViewport.defaultPerspective, offAxisFraction = 0.0, useMagnifier = false, magnification = 1.0, overAndUnderCenterOpacity = 1.0, itemExtent, squeeze = 1.0, onSelectedItemChanged, renderChildrenOutsideViewport = false, clipBehavior = Clip.hardEdge, restorationId, children}) => ListWheelScrollView(key: key, controller: controller, physics: physics, diameterRatio: diameterRatio, perspective: perspective, offAxisFraction: offAxisFraction, useMagnifier: useMagnifier, magnification: magnification, overAndUnderCenterOpacity: overAndUnderCenterOpacity, itemExtent: itemExtent, squeeze: squeeze, onSelectedItemChanged: onSelectedItemChanged, renderChildrenOutsideViewport: renderChildrenOutsideViewport, clipBehavior: clipBehavior, restorationId: restorationId, children: List<Widget>.from(children));
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static ListWheelScrollView buildListWheelScrollView_useDelegate(instance, args, {namedArgs}) {
		ListWheelScrollView ctor({key, controller, physics, diameterRatio = RenderListWheelViewport.defaultDiameterRatio, perspective = RenderListWheelViewport.defaultPerspective, offAxisFraction = 0.0, useMagnifier = false, magnification = 1.0, overAndUnderCenterOpacity = 1.0, itemExtent, squeeze = 1.0, onSelectedItemChanged, renderChildrenOutsideViewport = false, clipBehavior = Clip.hardEdge, restorationId, childDelegate}) => ListWheelScrollView.useDelegate(key: key, controller: controller, physics: physics, diameterRatio: diameterRatio, perspective: perspective, offAxisFraction: offAxisFraction, useMagnifier: useMagnifier, magnification: magnification, overAndUnderCenterOpacity: overAndUnderCenterOpacity, itemExtent: itemExtent, squeeze: squeeze, onSelectedItemChanged: onSelectedItemChanged, renderChildrenOutsideViewport: renderChildrenOutsideViewport, clipBehavior: clipBehavior, restorationId: restorationId, childDelegate: childDelegate);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverChildBuilderDelegate buildSliverChildBuilderDelegate(instance, args, {namedArgs}) {
		SliverChildBuilderDelegate ctor(builder, {findChildIndexCallback, childCount, addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, semanticIndexOffset = 0}) => SliverChildBuilderDelegate(builder, findChildIndexCallback: findChildIndexCallback, childCount: childCount, addAutomaticKeepAlives: addAutomaticKeepAlives, addRepaintBoundaries: addRepaintBoundaries, addSemanticIndexes: addSemanticIndexes, semanticIndexOffset: semanticIndexOffset);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverChildListDelegate buildSliverChildListDelegate(instance, args, {namedArgs}) {
		SliverChildListDelegate ctor(children, {addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, semanticIndexOffset = 0}) => SliverChildListDelegate(children, addAutomaticKeepAlives: addAutomaticKeepAlives, addRepaintBoundaries: addRepaintBoundaries, addSemanticIndexes: addSemanticIndexes, semanticIndexOffset: semanticIndexOffset);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverChildListDelegate buildSliverChildListDelegate_fixed(instance, args, {namedArgs}) {
		SliverChildListDelegate ctor(children, {addAutomaticKeepAlives = true, addRepaintBoundaries = true, addSemanticIndexes = true, semanticIndexOffset = 0}) => SliverChildListDelegate.fixed(children, addAutomaticKeepAlives: addAutomaticKeepAlives, addRepaintBoundaries: addRepaintBoundaries, addSemanticIndexes: addSemanticIndexes, semanticIndexOffset: semanticIndexOffset);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverOpacity buildSliverOpacity(instance, args, {namedArgs}) {
		SliverOpacity ctor({key, opacity, alwaysIncludeSemantics = false, sliver}) => SliverOpacity(key: key, opacity: opacity, alwaysIncludeSemantics: alwaysIncludeSemantics, sliver: sliver);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverIgnorePointer buildSliverIgnorePointer(instance, args, {namedArgs}) {
		SliverIgnorePointer ctor({key, ignoring = true, ignoringSemantics, sliver}) => SliverIgnorePointer(key: key, ignoring: ignoring, ignoringSemantics: ignoringSemantics, sliver: sliver);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverOffstage buildSliverOffstage(instance, args, {namedArgs}) {
		SliverOffstage ctor({key, offstage = true, sliver}) => SliverOffstage(key: key, offstage: offstage, sliver: sliver);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Dismissible buildDismissible(instance, args, {namedArgs}) {
		Dismissible ctor({key, child, background, secondaryBackground, confirmDismiss, onResize, onDismissed, direction = DismissDirection.horizontal, resizeDuration = const Duration(milliseconds: 300), dismissThresholds = const <DismissDirection, double>{}, movementDuration = const Duration(milliseconds: 200), crossAxisEndOffset = 0.0, dragStartBehavior = DragStartBehavior.start, behavior = HitTestBehavior.opaque}) => Dismissible(key: key, child: child, background: background, secondaryBackground: secondaryBackground, confirmDismiss: confirmDismiss, onResize: onResize, onDismissed: onDismissed, direction: direction, resizeDuration: resizeDuration, dismissThresholds: dismissThresholds, movementDuration: movementDuration, crossAxisEndOffset: crossAxisEndOffset, dragStartBehavior: dragStartBehavior, behavior: behavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static WillPopScope buildWillPopScope(instance, args, {namedArgs}) {
		WillPopScope ctor({key, child, onWillPop}) => WillPopScope(key: key, child: child, onWillPop: onWillPop);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TextSelectionToolbarLayoutDelegate buildTextSelectionToolbarLayoutDelegate(instance, args, {namedArgs}) {
		TextSelectionToolbarLayoutDelegate ctor({anchorAbove, anchorBelow, fitsAbove}) => TextSelectionToolbarLayoutDelegate(anchorAbove: anchorAbove, anchorBelow: anchorBelow, fitsAbove: fitsAbove);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static DesktopTextSelectionToolbarLayoutDelegate buildDesktopTextSelectionToolbarLayoutDelegate(instance, args, {namedArgs}) {
		DesktopTextSelectionToolbarLayoutDelegate ctor({anchor}) => DesktopTextSelectionToolbarLayoutDelegate(anchor: anchor);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SafeArea buildSafeArea(instance, args, {namedArgs}) {
		SafeArea ctor({key, left = true, top = true, right = true, bottom = true, minimum = EdgeInsets.zero, maintainBottomViewPadding = false, child}) => SafeArea(key: key, left: left, top: top, right: right, bottom: bottom, minimum: minimum, maintainBottomViewPadding: maintainBottomViewPadding, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverSafeArea buildSliverSafeArea(instance, args, {namedArgs}) {
		SliverSafeArea ctor({key, left = true, top = true, right = true, bottom = true, minimum = EdgeInsets.zero, sliver}) => SliverSafeArea(key: key, left: left, top: top, right: right, bottom: bottom, minimum: minimum, sliver: sliver);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RawScrollbar buildRawScrollbar(instance, args, {namedArgs}) {
		RawScrollbar ctor({key, child, controller, isAlwaysShown, radius, thickness, thumbColor, pressDuration = Duration.zero, notificationPredicate = defaultScrollNotificationPredicate}) => RawScrollbar(key: key, child: child, controller: controller, isAlwaysShown: isAlwaysShown, radius: radius, thickness: thickness, thumbColor: thumbColor, pressDuration: pressDuration, notificationPredicate: notificationPredicate);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AndroidView buildAndroidView(instance, args, {namedArgs}) {
		AndroidView ctor({key, viewType, onPlatformViewCreated, hitTestBehavior = PlatformViewHitTestBehavior.opaque, layoutDirection, gestureRecognizers, creationParams, creationParamsCodec, clipBehavior = Clip.hardEdge}) => AndroidView(key: key, viewType: viewType, onPlatformViewCreated: onPlatformViewCreated, hitTestBehavior: hitTestBehavior, layoutDirection: layoutDirection, gestureRecognizers: gestureRecognizers, creationParams: creationParams, creationParamsCodec: creationParamsCodec, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static UiKitView buildUiKitView(instance, args, {namedArgs}) {
		UiKitView ctor({key, viewType, onPlatformViewCreated, hitTestBehavior = PlatformViewHitTestBehavior.opaque, layoutDirection, creationParams, creationParamsCodec, gestureRecognizers}) => UiKitView(key: key, viewType: viewType, onPlatformViewCreated: onPlatformViewCreated, hitTestBehavior: hitTestBehavior, layoutDirection: layoutDirection, creationParams: creationParams, creationParamsCodec: creationParamsCodec, gestureRecognizers: gestureRecognizers);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static HtmlElementView buildHtmlElementView(instance, args, {namedArgs}) {
		HtmlElementView ctor({key, viewType}) => HtmlElementView(key: key, viewType: viewType);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static PlatformViewLink buildPlatformViewLink(instance, args, {namedArgs}) {
		PlatformViewLink ctor({key, surfaceFactory, onCreatePlatformView, viewType}) => PlatformViewLink(key: key, surfaceFactory: surfaceFactory, onCreatePlatformView: onCreatePlatformView, viewType: viewType);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static WidgetsApp buildWidgetsApp(instance, args, {namedArgs}) {
		WidgetsApp ctor({key, navigatorKey, onGenerateRoute, onGenerateInitialRoutes, onUnknownRoute, navigatorObservers = const <NavigatorObserver>[], initialRoute, pageRouteBuilder, home, routes = const <String, WidgetBuilder>{}, builder, title = '', onGenerateTitle, textStyle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowWidgetInspector = false, debugShowCheckedModeBanner = true, inspectorSelectButtonBuilder, shortcuts, actions, restorationScopeId}) => WidgetsApp(key: key, navigatorKey: navigatorKey, onGenerateRoute: onGenerateRoute, onGenerateInitialRoutes: onGenerateInitialRoutes, onUnknownRoute: onUnknownRoute, navigatorObservers: List<NavigatorObserver>.from(navigatorObservers), initialRoute: initialRoute, pageRouteBuilder: pageRouteBuilder, home: home, routes: routes, builder: builder, title: title, onGenerateTitle: onGenerateTitle, textStyle: textStyle, color: color, locale: locale, localizationsDelegates: localizationsDelegates, localeListResolutionCallback: localeListResolutionCallback, localeResolutionCallback: localeResolutionCallback, supportedLocales: supportedLocales, showPerformanceOverlay: showPerformanceOverlay, checkerboardRasterCacheImages: checkerboardRasterCacheImages, checkerboardOffscreenLayers: checkerboardOffscreenLayers, showSemanticsDebugger: showSemanticsDebugger, debugShowWidgetInspector: debugShowWidgetInspector, debugShowCheckedModeBanner: debugShowCheckedModeBanner, inspectorSelectButtonBuilder: inspectorSelectButtonBuilder, shortcuts: shortcuts, actions: actions, restorationScopeId: restorationScopeId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static WidgetsApp buildWidgetsApp_router(instance, args, {namedArgs}) {
		WidgetsApp ctor({key, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher, builder, title = '', onGenerateTitle, textStyle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales = const <Locale>[Locale('en', 'US')], showPerformanceOverlay = false, checkerboardRasterCacheImages = false, checkerboardOffscreenLayers = false, showSemanticsDebugger = false, debugShowWidgetInspector = false, debugShowCheckedModeBanner = true, inspectorSelectButtonBuilder, shortcuts, actions, restorationScopeId}) => WidgetsApp.router(key: key, routeInformationProvider: routeInformationProvider, routeInformationParser: routeInformationParser, routerDelegate: routerDelegate, backButtonDispatcher: backButtonDispatcher, builder: builder, title: title, onGenerateTitle: onGenerateTitle, textStyle: textStyle, color: color, locale: locale, localizationsDelegates: localizationsDelegates, localeListResolutionCallback: localeListResolutionCallback, localeResolutionCallback: localeResolutionCallback, supportedLocales: supportedLocales, showPerformanceOverlay: showPerformanceOverlay, checkerboardRasterCacheImages: checkerboardRasterCacheImages, checkerboardOffscreenLayers: checkerboardOffscreenLayers, showSemanticsDebugger: showSemanticsDebugger, debugShowWidgetInspector: debugShowWidgetInspector, debugShowCheckedModeBanner: debugShowCheckedModeBanner, inspectorSelectButtonBuilder: inspectorSelectButtonBuilder, shortcuts: shortcuts, actions: actions, restorationScopeId: restorationScopeId);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RawAutocomplete buildRawAutocomplete(instance, args, {namedArgs}) {
		RawAutocomplete ctor({key, optionsViewBuilder, optionsBuilder, fieldViewBuilder, focusNode, onSelected, textEditingController}) => RawAutocomplete(key: key, optionsViewBuilder: optionsViewBuilder, optionsBuilder: optionsBuilder, fieldViewBuilder: fieldViewBuilder, focusNode: focusNode, onSelected: onSelected, textEditingController: textEditingController);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Overlay buildOverlay(instance, args, {namedArgs}) {
		Overlay ctor({key, initialEntries = const <OverlayEntry>[], clipBehavior = Clip.hardEdge}) => Overlay(key: key, initialEntries: List<OverlayEntry>.from(initialEntries), clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static RawKeyboardListener buildRawKeyboardListener(instance, args, {namedArgs}) {
		RawKeyboardListener ctor({key, focusNode, autofocus = false, includeSemantics = true, onKey, child}) => RawKeyboardListener(key: key, focusNode: focusNode, autofocus: autofocus, includeSemantics: includeSemantics, onKey: onKey, child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Spacer buildSpacer(instance, args, {namedArgs}) {
		Spacer ctor({key, flex = 1}) => Spacer(key: key, flex: flex);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Localizations buildLocalizations(instance, args, {namedArgs}) {
		Localizations ctor({key, locale, delegates, child}) => Localizations(key: key, locale: locale, delegates: List<LocalizationsDelegate<dynamic>>.from(delegates), child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Localizations buildLocalizations_override(instance, args, {namedArgs}) {
		Localizations ctor({key, context, locale, delegates, child}) => Localizations.override(key: key, context: context, locale: locale, delegates: List<LocalizationsDelegate<dynamic>>.from(delegates), child: child);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverFillViewport buildSliverFillViewport(instance, args, {namedArgs}) {
		SliverFillViewport ctor({key, delegate, viewportFraction = 1.0, padEnds = true}) => SliverFillViewport(key: key, delegate: delegate, viewportFraction: viewportFraction, padEnds: padEnds);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static SliverFillRemaining buildSliverFillRemaining(instance, args, {namedArgs}) {
		SliverFillRemaining ctor({key, child, hasScrollBody = true, fillOverscroll = false}) => SliverFillRemaining(key: key, child: child, hasScrollBody: hasScrollBody, fillOverscroll: fillOverscroll);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static AnimatedSize buildAnimatedSize(instance, args, {namedArgs}) {
		AnimatedSize ctor({key, child, alignment = Alignment.center, curve = Curves.linear, duration, reverseDuration, vsync, clipBehavior = Clip.hardEdge}) => AnimatedSize(key: key, child: child, alignment: alignment, curve: curve, duration: duration, reverseDuration: reverseDuration, vsync: vsync, clipBehavior: clipBehavior);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static TextDecoration buildTextDecoration_combine(instance, args, {namedArgs}) {
		TextDecoration ctor(decorations) => TextDecoration.combine(decorations);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Color buildColor(instance, args, {namedArgs}) {
		Color ctor(value) => Color(value);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Color buildColor_fromARGB(instance, args, {namedArgs}) {
		Color ctor(a, r, g, b) => Color.fromARGB(a, r, g, b);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Color buildColor_fromRGBO(instance, args, {namedArgs}) {
		Color ctor(r, g, b, opacity) => Color.fromRGBO(r, g, b, opacity);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Paint buildPaint(instance, args, {namedArgs}) {
		Paint ctor() => Paint();
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Size buildSize(instance, args, {namedArgs}) {
		Size ctor(width, height) => Size(width, height);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Size buildSize_copy(instance, args, {namedArgs}) {
		Size ctor(source) => Size.copy(source);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Size buildSize_square(instance, args, {namedArgs}) {
		Size ctor(dimension) => Size.square(dimension);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Size buildSize_fromWidth(instance, args, {namedArgs}) {
		Size ctor(width) => Size.fromWidth(width);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Size buildSize_fromHeight(instance, args, {namedArgs}) {
		Size ctor(height) => Size.fromHeight(height);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Size buildSize_fromRadius(instance, args, {namedArgs}) {
		Size ctor(radius) => Size.fromRadius(radius);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Locale buildLocale(instance, args, {namedArgs}) {
		Locale ctor(_languageCode, _countryCode) => Locale(_languageCode, _countryCode);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
	static Locale buildLocale_fromSubtags(instance, args, {namedArgs}) {
		Locale ctor({languageCode = 'und', scriptCode, countryCode}) => Locale.fromSubtags(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
		return Function.apply(ctor, args, namedArgs.map<Symbol, dynamic>((key, value) => MapEntry(Symbol(key), value)));
	}
}

class HT {
	static late final Interpreter _interpreter;
	static Interpreter get interpreter => _interpreter;
	static void _loadEnumValues() {
		var enumClass;
		enumClass = interpreter.fetchGlobal('SchedulerPhase') as HT_Class;
		enumClass.assign('idle', SchedulerPhase.idle, null, null, interpreter);
		enumClass.assign('transientCallbacks', SchedulerPhase.transientCallbacks, null, null, interpreter);
		enumClass.assign('midFrameMicrotasks', SchedulerPhase.midFrameMicrotasks, null, null, interpreter);
		enumClass.assign('persistentCallbacks', SchedulerPhase.persistentCallbacks, null, null, interpreter);
		enumClass.assign('postFrameCallbacks', SchedulerPhase.postFrameCallbacks, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('AnimationBehavior') as HT_Class;
		enumClass.assign('normal', AnimationBehavior.normal, null, null, interpreter);
		enumClass.assign('preserve', AnimationBehavior.preserve, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('AnimationStatus') as HT_Class;
		enumClass.assign('dismissed', AnimationStatus.dismissed, null, null, interpreter);
		enumClass.assign('forward', AnimationStatus.forward, null, null, interpreter);
		enumClass.assign('reverse', AnimationStatus.reverse, null, null, interpreter);
		enumClass.assign('completed', AnimationStatus.completed, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DiagnosticLevel') as HT_Class;
		enumClass.assign('hidden', DiagnosticLevel.hidden, null, null, interpreter);
		enumClass.assign('fine', DiagnosticLevel.fine, null, null, interpreter);
		enumClass.assign('debug', DiagnosticLevel.debug, null, null, interpreter);
		enumClass.assign('info', DiagnosticLevel.info, null, null, interpreter);
		enumClass.assign('warning', DiagnosticLevel.warning, null, null, interpreter);
		enumClass.assign('hint', DiagnosticLevel.hint, null, null, interpreter);
		enumClass.assign('summary', DiagnosticLevel.summary, null, null, interpreter);
		enumClass.assign('error', DiagnosticLevel.error, null, null, interpreter);
		enumClass.assign('off', DiagnosticLevel.off, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DiagnosticsTreeStyle') as HT_Class;
		enumClass.assign('none', DiagnosticsTreeStyle.none, null, null, interpreter);
		enumClass.assign('sparse', DiagnosticsTreeStyle.sparse, null, null, interpreter);
		enumClass.assign('offstage', DiagnosticsTreeStyle.offstage, null, null, interpreter);
		enumClass.assign('dense', DiagnosticsTreeStyle.dense, null, null, interpreter);
		enumClass.assign('transition', DiagnosticsTreeStyle.transition, null, null, interpreter);
		enumClass.assign('error', DiagnosticsTreeStyle.error, null, null, interpreter);
		enumClass.assign('whitespace', DiagnosticsTreeStyle.whitespace, null, null, interpreter);
		enumClass.assign('flat', DiagnosticsTreeStyle.flat, null, null, interpreter);
		enumClass.assign('singleLine', DiagnosticsTreeStyle.singleLine, null, null, interpreter);
		enumClass.assign('errorProperty', DiagnosticsTreeStyle.errorProperty, null, null, interpreter);
		enumClass.assign('shallow', DiagnosticsTreeStyle.shallow, null, null, interpreter);
		enumClass.assign('truncateChildren', DiagnosticsTreeStyle.truncateChildren, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TargetPlatform') as HT_Class;
		enumClass.assign('android', TargetPlatform.android, null, null, interpreter);
		enumClass.assign('fuchsia', TargetPlatform.fuchsia, null, null, interpreter);
		enumClass.assign('iOS', TargetPlatform.iOS, null, null, interpreter);
		enumClass.assign('linux', TargetPlatform.linux, null, null, interpreter);
		enumClass.assign('macOS', TargetPlatform.macOS, null, null, interpreter);
		enumClass.assign('windows', TargetPlatform.windows, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DebugSemanticsDumpOrder') as HT_Class;
		enumClass.assign('inverseHitTest', DebugSemanticsDumpOrder.inverseHitTest, null, null, interpreter);
		enumClass.assign('traversalOrder', DebugSemanticsDumpOrder.traversalOrder, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BorderStyle') as HT_Class;
		enumClass.assign('none', BorderStyle.none, null, null, interpreter);
		enumClass.assign('solid', BorderStyle.solid, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BoxShape') as HT_Class;
		enumClass.assign('rectangle', BoxShape.rectangle, null, null, interpreter);
		enumClass.assign('circle', BoxShape.circle, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FlutterLogoStyle') as HT_Class;
		enumClass.assign('markOnly', FlutterLogoStyle.markOnly, null, null, interpreter);
		enumClass.assign('horizontal', FlutterLogoStyle.horizontal, null, null, interpreter);
		enumClass.assign('stacked', FlutterLogoStyle.stacked, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('RenderComparison') as HT_Class;
		enumClass.assign('identical', RenderComparison.identical, null, null, interpreter);
		enumClass.assign('metadata', RenderComparison.metadata, null, null, interpreter);
		enumClass.assign('paint', RenderComparison.paint, null, null, interpreter);
		enumClass.assign('layout', RenderComparison.layout, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Axis') as HT_Class;
		enumClass.assign('horizontal', Axis.horizontal, null, null, interpreter);
		enumClass.assign('vertical', Axis.vertical, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('VerticalDirection') as HT_Class;
		enumClass.assign('up', VerticalDirection.up, null, null, interpreter);
		enumClass.assign('down', VerticalDirection.down, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('AxisDirection') as HT_Class;
		enumClass.assign('up', AxisDirection.up, null, null, interpreter);
		enumClass.assign('right', AxisDirection.right, null, null, interpreter);
		enumClass.assign('down', AxisDirection.down, null, null, interpreter);
		enumClass.assign('left', AxisDirection.left, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BoxFit') as HT_Class;
		enumClass.assign('fill', BoxFit.fill, null, null, interpreter);
		enumClass.assign('contain', BoxFit.contain, null, null, interpreter);
		enumClass.assign('cover', BoxFit.cover, null, null, interpreter);
		enumClass.assign('fitWidth', BoxFit.fitWidth, null, null, interpreter);
		enumClass.assign('fitHeight', BoxFit.fitHeight, null, null, interpreter);
		enumClass.assign('none', BoxFit.none, null, null, interpreter);
		enumClass.assign('scaleDown', BoxFit.scaleDown, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextWidthBasis') as HT_Class;
		enumClass.assign('parent', TextWidthBasis.parent, null, null, interpreter);
		enumClass.assign('longestLine', TextWidthBasis.longestLine, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ImageRepeat') as HT_Class;
		enumClass.assign('repeat', ImageRepeat.repeat, null, null, interpreter);
		enumClass.assign('repeatX', ImageRepeat.repeatX, null, null, interpreter);
		enumClass.assign('repeatY', ImageRepeat.repeatY, null, null, interpreter);
		enumClass.assign('noRepeat', ImageRepeat.noRepeat, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('GestureDisposition') as HT_Class;
		enumClass.assign('accepted', GestureDisposition.accepted, null, null, interpreter);
		enumClass.assign('rejected', GestureDisposition.rejected, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DragStartBehavior') as HT_Class;
		enumClass.assign('down', DragStartBehavior.down, null, null, interpreter);
		enumClass.assign('start', DragStartBehavior.start, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('GestureRecognizerState') as HT_Class;
		enumClass.assign('ready', GestureRecognizerState.ready, null, null, interpreter);
		enumClass.assign('possible', GestureRecognizerState.possible, null, null, interpreter);
		enumClass.assign('defunct', GestureRecognizerState.defunct, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('WrapAlignment') as HT_Class;
		enumClass.assign('start', WrapAlignment.start, null, null, interpreter);
		enumClass.assign('end', WrapAlignment.end, null, null, interpreter);
		enumClass.assign('center', WrapAlignment.center, null, null, interpreter);
		enumClass.assign('spaceBetween', WrapAlignment.spaceBetween, null, null, interpreter);
		enumClass.assign('spaceAround', WrapAlignment.spaceAround, null, null, interpreter);
		enumClass.assign('spaceEvenly', WrapAlignment.spaceEvenly, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('WrapCrossAlignment') as HT_Class;
		enumClass.assign('start', WrapCrossAlignment.start, null, null, interpreter);
		enumClass.assign('end', WrapCrossAlignment.end, null, null, interpreter);
		enumClass.assign('center', WrapCrossAlignment.center, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('HitTestBehavior') as HT_Class;
		enumClass.assign('deferToChild', HitTestBehavior.deferToChild, null, null, interpreter);
		enumClass.assign('opaque', HitTestBehavior.opaque, null, null, interpreter);
		enumClass.assign('translucent', HitTestBehavior.translucent, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DecorationPosition') as HT_Class;
		enumClass.assign('background', DecorationPosition.background, null, null, interpreter);
		enumClass.assign('foreground', DecorationPosition.foreground, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ScrollDirection') as HT_Class;
		enumClass.assign('idle', ScrollDirection.idle, null, null, interpreter);
		enumClass.assign('forward', ScrollDirection.forward, null, null, interpreter);
		enumClass.assign('reverse', ScrollDirection.reverse, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FlexFit') as HT_Class;
		enumClass.assign('tight', FlexFit.tight, null, null, interpreter);
		enumClass.assign('loose', FlexFit.loose, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('MainAxisSize') as HT_Class;
		enumClass.assign('min', MainAxisSize.min, null, null, interpreter);
		enumClass.assign('max', MainAxisSize.max, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('MainAxisAlignment') as HT_Class;
		enumClass.assign('start', MainAxisAlignment.start, null, null, interpreter);
		enumClass.assign('end', MainAxisAlignment.end, null, null, interpreter);
		enumClass.assign('center', MainAxisAlignment.center, null, null, interpreter);
		enumClass.assign('spaceBetween', MainAxisAlignment.spaceBetween, null, null, interpreter);
		enumClass.assign('spaceAround', MainAxisAlignment.spaceAround, null, null, interpreter);
		enumClass.assign('spaceEvenly', MainAxisAlignment.spaceEvenly, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('CrossAxisAlignment') as HT_Class;
		enumClass.assign('start', CrossAxisAlignment.start, null, null, interpreter);
		enumClass.assign('end', CrossAxisAlignment.end, null, null, interpreter);
		enumClass.assign('center', CrossAxisAlignment.center, null, null, interpreter);
		enumClass.assign('stretch', CrossAxisAlignment.stretch, null, null, interpreter);
		enumClass.assign('baseline', CrossAxisAlignment.baseline, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TableCellVerticalAlignment') as HT_Class;
		enumClass.assign('top', TableCellVerticalAlignment.top, null, null, interpreter);
		enumClass.assign('middle', TableCellVerticalAlignment.middle, null, null, interpreter);
		enumClass.assign('bottom', TableCellVerticalAlignment.bottom, null, null, interpreter);
		enumClass.assign('baseline', TableCellVerticalAlignment.baseline, null, null, interpreter);
		enumClass.assign('fill', TableCellVerticalAlignment.fill, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PerformanceOverlayOption') as HT_Class;
		enumClass.assign('displayRasterizerStatistics', PerformanceOverlayOption.displayRasterizerStatistics, null, null, interpreter);
		enumClass.assign('visualizeRasterizerStatistics', PerformanceOverlayOption.visualizeRasterizerStatistics, null, null, interpreter);
		enumClass.assign('displayEngineStatistics', PerformanceOverlayOption.displayEngineStatistics, null, null, interpreter);
		enumClass.assign('visualizeEngineStatistics', PerformanceOverlayOption.visualizeEngineStatistics, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('CacheExtentStyle') as HT_Class;
		enumClass.assign('pixel', CacheExtentStyle.pixel, null, null, interpreter);
		enumClass.assign('viewport', CacheExtentStyle.viewport, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('GrowthDirection') as HT_Class;
		enumClass.assign('forward', GrowthDirection.forward, null, null, interpreter);
		enumClass.assign('reverse', GrowthDirection.reverse, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('StackFit') as HT_Class;
		enumClass.assign('loose', StackFit.loose, null, null, interpreter);
		enumClass.assign('expand', StackFit.expand, null, null, interpreter);
		enumClass.assign('passthrough', StackFit.passthrough, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Overflow') as HT_Class;
		enumClass.assign('visible', Overflow.visible, null, null, interpreter);
		enumClass.assign('clip', Overflow.clip, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PlatformViewHitTestBehavior') as HT_Class;
		enumClass.assign('opaque', PlatformViewHitTestBehavior.opaque, null, null, interpreter);
		enumClass.assign('translucent', PlatformViewHitTestBehavior.translucent, null, null, interpreter);
		enumClass.assign('transparent', PlatformViewHitTestBehavior.transparent, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('SelectionChangedCause') as HT_Class;
		enumClass.assign('tap', SelectionChangedCause.tap, null, null, interpreter);
		enumClass.assign('doubleTap', SelectionChangedCause.doubleTap, null, null, interpreter);
		enumClass.assign('longPress', SelectionChangedCause.longPress, null, null, interpreter);
		enumClass.assign('forcePress', SelectionChangedCause.forcePress, null, null, interpreter);
		enumClass.assign('keyboard', SelectionChangedCause.keyboard, null, null, interpreter);
		enumClass.assign('drag', SelectionChangedCause.drag, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextOverflow') as HT_Class;
		enumClass.assign('clip', TextOverflow.clip, null, null, interpreter);
		enumClass.assign('fade', TextOverflow.fade, null, null, interpreter);
		enumClass.assign('ellipsis', TextOverflow.ellipsis, null, null, interpreter);
		enumClass.assign('visible', TextOverflow.visible, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('SpringType') as HT_Class;
		enumClass.assign('criticallyDamped', SpringType.criticallyDamped, null, null, interpreter);
		enumClass.assign('underDamped', SpringType.underDamped, null, null, interpreter);
		enumClass.assign('overDamped', SpringType.overDamped, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('OverlayVisibilityMode') as HT_Class;
		enumClass.assign('never', OverlayVisibilityMode.never, null, null, interpreter);
		enumClass.assign('editing', OverlayVisibilityMode.editing, null, null, interpreter);
		enumClass.assign('notEditing', OverlayVisibilityMode.notEditing, null, null, interpreter);
		enumClass.assign('always', OverlayVisibilityMode.always, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('CupertinoDatePickerMode') as HT_Class;
		enumClass.assign('time', CupertinoDatePickerMode.time, null, null, interpreter);
		enumClass.assign('date', CupertinoDatePickerMode.date, null, null, interpreter);
		enumClass.assign('dateAndTime', CupertinoDatePickerMode.dateAndTime, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('CupertinoTimerPickerMode') as HT_Class;
		enumClass.assign('hm', CupertinoTimerPickerMode.hm, null, null, interpreter);
		enumClass.assign('ms', CupertinoTimerPickerMode.ms, null, null, interpreter);
		enumClass.assign('hms', CupertinoTimerPickerMode.hms, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('RefreshIndicatorMode') as HT_Class;
		enumClass.assign('inactive', RefreshIndicatorMode.inactive, null, null, interpreter);
		enumClass.assign('drag', RefreshIndicatorMode.drag, null, null, interpreter);
		enumClass.assign('armed', RefreshIndicatorMode.armed, null, null, interpreter);
		enumClass.assign('refresh', RefreshIndicatorMode.refresh, null, null, interpreter);
		enumClass.assign('done', RefreshIndicatorMode.done, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('CupertinoUserInterfaceLevelData') as HT_Class;
		enumClass.assign('base', CupertinoUserInterfaceLevelData.base, null, null, interpreter);
		enumClass.assign('elevated', CupertinoUserInterfaceLevelData.elevated, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DatePickerDateTimeOrder') as HT_Class;
		enumClass.assign('date_time_dayPeriod', DatePickerDateTimeOrder.date_time_dayPeriod, null, null, interpreter);
		enumClass.assign('date_dayPeriod_time', DatePickerDateTimeOrder.date_dayPeriod_time, null, null, interpreter);
		enumClass.assign('time_dayPeriod_date', DatePickerDateTimeOrder.time_dayPeriod_date, null, null, interpreter);
		enumClass.assign('dayPeriod_time_date', DatePickerDateTimeOrder.dayPeriod_time_date, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DatePickerDateOrder') as HT_Class;
		enumClass.assign('dmy', DatePickerDateOrder.dmy, null, null, interpreter);
		enumClass.assign('mdy', DatePickerDateOrder.mdy, null, null, interpreter);
		enumClass.assign('ymd', DatePickerDateOrder.ymd, null, null, interpreter);
		enumClass.assign('ydm', DatePickerDateOrder.ydm, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('MaterialType') as HT_Class;
		enumClass.assign('canvas', MaterialType.canvas, null, null, interpreter);
		enumClass.assign('card', MaterialType.card, null, null, interpreter);
		enumClass.assign('circle', MaterialType.circle, null, null, interpreter);
		enumClass.assign('button', MaterialType.button, null, null, interpreter);
		enumClass.assign('transparency', MaterialType.transparency, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('RefreshIndicatorTriggerMode') as HT_Class;
		enumClass.assign('anywhere', RefreshIndicatorTriggerMode.anywhere, null, null, interpreter);
		enumClass.assign('onEdge', RefreshIndicatorTriggerMode.onEdge, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('SnackBarClosedReason') as HT_Class;
		enumClass.assign('action', SnackBarClosedReason.action, null, null, interpreter);
		enumClass.assign('dismiss', SnackBarClosedReason.dismiss, null, null, interpreter);
		enumClass.assign('swipe', SnackBarClosedReason.swipe, null, null, interpreter);
		enumClass.assign('hide', SnackBarClosedReason.hide, null, null, interpreter);
		enumClass.assign('remove', SnackBarClosedReason.remove, null, null, interpreter);
		enumClass.assign('timeout', SnackBarClosedReason.timeout, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FloatingLabelBehavior') as HT_Class;
		enumClass.assign('never', FloatingLabelBehavior.never, null, null, interpreter);
		enumClass.assign('auto', FloatingLabelBehavior.auto, null, null, interpreter);
		enumClass.assign('always', FloatingLabelBehavior.always, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DayPeriod') as HT_Class;
		enumClass.assign('am', DayPeriod.am, null, null, interpreter);
		enumClass.assign('pm', DayPeriod.pm, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TimeOfDayFormat') as HT_Class;
		enumClass.assign('HH_colon_mm', TimeOfDayFormat.HH_colon_mm, null, null, interpreter);
		enumClass.assign('HH_dot_mm', TimeOfDayFormat.HH_dot_mm, null, null, interpreter);
		enumClass.assign('frenchCanadian', TimeOfDayFormat.frenchCanadian, null, null, interpreter);
		enumClass.assign('H_colon_mm', TimeOfDayFormat.H_colon_mm, null, null, interpreter);
		enumClass.assign('h_colon_mm_space_a', TimeOfDayFormat.h_colon_mm_space_a, null, null, interpreter);
		enumClass.assign('a_space_h_colon_mm', TimeOfDayFormat.a_space_h_colon_mm, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('HourFormat') as HT_Class;
		enumClass.assign('HH', HourFormat.HH, null, null, interpreter);
		enumClass.assign('H', HourFormat.H, null, null, interpreter);
		enumClass.assign('h', HourFormat.h, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('NavigationRailLabelType') as HT_Class;
		enumClass.assign('none', NavigationRailLabelType.none, null, null, interpreter);
		enumClass.assign('selected', NavigationRailLabelType.selected, null, null, interpreter);
		enumClass.assign('all', NavigationRailLabelType.all, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TimePickerEntryMode') as HT_Class;
		enumClass.assign('dial', TimePickerEntryMode.dial, null, null, interpreter);
		enumClass.assign('input', TimePickerEntryMode.input, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('StepState') as HT_Class;
		enumClass.assign('indexed', StepState.indexed, null, null, interpreter);
		enumClass.assign('editing', StepState.editing, null, null, interpreter);
		enumClass.assign('complete', StepState.complete, null, null, interpreter);
		enumClass.assign('disabled', StepState.disabled, null, null, interpreter);
		enumClass.assign('error', StepState.error, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('StepperType') as HT_Class;
		enumClass.assign('vertical', StepperType.vertical, null, null, interpreter);
		enumClass.assign('horizontal', StepperType.horizontal, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TabBarIndicatorSize') as HT_Class;
		enumClass.assign('tab', TabBarIndicatorSize.tab, null, null, interpreter);
		enumClass.assign('label', TabBarIndicatorSize.label, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('MaterialState') as HT_Class;
		enumClass.assign('hovered', MaterialState.hovered, null, null, interpreter);
		enumClass.assign('focused', MaterialState.focused, null, null, interpreter);
		enumClass.assign('pressed', MaterialState.pressed, null, null, interpreter);
		enumClass.assign('dragged', MaterialState.dragged, null, null, interpreter);
		enumClass.assign('selected', MaterialState.selected, null, null, interpreter);
		enumClass.assign('disabled', MaterialState.disabled, null, null, interpreter);
		enumClass.assign('error', MaterialState.error, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ButtonTextTheme') as HT_Class;
		enumClass.assign('normal', ButtonTextTheme.normal, null, null, interpreter);
		enumClass.assign('accent', ButtonTextTheme.accent, null, null, interpreter);
		enumClass.assign('primary', ButtonTextTheme.primary, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ButtonBarLayoutBehavior') as HT_Class;
		enumClass.assign('constrained', ButtonBarLayoutBehavior.constrained, null, null, interpreter);
		enumClass.assign('padded', ButtonBarLayoutBehavior.padded, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ListTileStyle') as HT_Class;
		enumClass.assign('list', ListTileStyle.list, null, null, interpreter);
		enumClass.assign('drawer', ListTileStyle.drawer, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ListTileControlAffinity') as HT_Class;
		enumClass.assign('leading', ListTileControlAffinity.leading, null, null, interpreter);
		enumClass.assign('trailing', ListTileControlAffinity.trailing, null, null, interpreter);
		enumClass.assign('platform', ListTileControlAffinity.platform, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ScriptCategory') as HT_Class;
		enumClass.assign('englishLike', ScriptCategory.englishLike, null, null, interpreter);
		enumClass.assign('dense', ScriptCategory.dense, null, null, interpreter);
		enumClass.assign('tall', ScriptCategory.tall, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ShowValueIndicator') as HT_Class;
		enumClass.assign('onlyForDiscrete', ShowValueIndicator.onlyForDiscrete, null, null, interpreter);
		enumClass.assign('onlyForContinuous', ShowValueIndicator.onlyForContinuous, null, null, interpreter);
		enumClass.assign('always', ShowValueIndicator.always, null, null, interpreter);
		enumClass.assign('never', ShowValueIndicator.never, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Thumb') as HT_Class;
		enumClass.assign('start', Thumb.start, null, null, interpreter);
		enumClass.assign('end', Thumb.end, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DrawerAlignment') as HT_Class;
		enumClass.assign('start', DrawerAlignment.start, null, null, interpreter);
		enumClass.assign('end', DrawerAlignment.end, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DatePickerEntryMode') as HT_Class;
		enumClass.assign('calendar', DatePickerEntryMode.calendar, null, null, interpreter);
		enumClass.assign('input', DatePickerEntryMode.input, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DatePickerMode') as HT_Class;
		enumClass.assign('day', DatePickerMode.day, null, null, interpreter);
		enumClass.assign('year', DatePickerMode.year, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('SnackBarBehavior') as HT_Class;
		enumClass.assign('fixed', SnackBarBehavior.fixed, null, null, interpreter);
		enumClass.assign('floating', SnackBarBehavior.floating, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('MaterialTapTargetSize') as HT_Class;
		enumClass.assign('padded', MaterialTapTargetSize.padded, null, null, interpreter);
		enumClass.assign('shrinkWrap', MaterialTapTargetSize.shrinkWrap, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('CollapseMode') as HT_Class;
		enumClass.assign('parallax', CollapseMode.parallax, null, null, interpreter);
		enumClass.assign('pin', CollapseMode.pin, null, null, interpreter);
		enumClass.assign('none', CollapseMode.none, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('StretchMode') as HT_Class;
		enumClass.assign('zoomBackground', StretchMode.zoomBackground, null, null, interpreter);
		enumClass.assign('blurBackground', StretchMode.blurBackground, null, null, interpreter);
		enumClass.assign('fadeTitle', StretchMode.fadeTitle, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BottomNavigationBarType') as HT_Class;
		enumClass.assign('fixed', BottomNavigationBarType.fixed, null, null, interpreter);
		enumClass.assign('shifting', BottomNavigationBarType.shifting, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ThemeMode') as HT_Class;
		enumClass.assign('system', ThemeMode.system, null, null, interpreter);
		enumClass.assign('light', ThemeMode.light, null, null, interpreter);
		enumClass.assign('dark', ThemeMode.dark, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('SystemSoundType') as HT_Class;
		enumClass.assign('click', SystemSoundType.click, null, null, interpreter);
		enumClass.assign('alert', SystemSoundType.alert, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('SmartDashesType') as HT_Class;
		enumClass.assign('disabled', SmartDashesType.disabled, null, null, interpreter);
		enumClass.assign('enabled', SmartDashesType.enabled, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('SmartQuotesType') as HT_Class;
		enumClass.assign('disabled', SmartQuotesType.disabled, null, null, interpreter);
		enumClass.assign('enabled', SmartQuotesType.enabled, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextInputAction') as HT_Class;
		enumClass.assign('none', TextInputAction.none, null, null, interpreter);
		enumClass.assign('unspecified', TextInputAction.unspecified, null, null, interpreter);
		enumClass.assign('done', TextInputAction.done, null, null, interpreter);
		enumClass.assign('go', TextInputAction.go, null, null, interpreter);
		enumClass.assign('search', TextInputAction.search, null, null, interpreter);
		enumClass.assign('send', TextInputAction.send, null, null, interpreter);
		enumClass.assign('next', TextInputAction.next, null, null, interpreter);
		enumClass.assign('previous', TextInputAction.previous, null, null, interpreter);
		enumClass.assign('continueAction', TextInputAction.continueAction, null, null, interpreter);
		enumClass.assign('join', TextInputAction.join, null, null, interpreter);
		enumClass.assign('route', TextInputAction.route, null, null, interpreter);
		enumClass.assign('emergencyCall', TextInputAction.emergencyCall, null, null, interpreter);
		enumClass.assign('newline', TextInputAction.newline, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextCapitalization') as HT_Class;
		enumClass.assign('words', TextCapitalization.words, null, null, interpreter);
		enumClass.assign('sentences', TextCapitalization.sentences, null, null, interpreter);
		enumClass.assign('characters', TextCapitalization.characters, null, null, interpreter);
		enumClass.assign('none', TextCapitalization.none, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FloatingCursorDragState') as HT_Class;
		enumClass.assign('Start', FloatingCursorDragState.Start, null, null, interpreter);
		enumClass.assign('Update', FloatingCursorDragState.Update, null, null, interpreter);
		enumClass.assign('End', FloatingCursorDragState.End, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('MaxLengthEnforcement') as HT_Class;
		enumClass.assign('none', MaxLengthEnforcement.none, null, null, interpreter);
		enumClass.assign('enforced', MaxLengthEnforcement.enforced, null, null, interpreter);
		enumClass.assign('truncateAfterCompositionEnds', MaxLengthEnforcement.truncateAfterCompositionEnds, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DeviceOrientation') as HT_Class;
		enumClass.assign('portraitUp', DeviceOrientation.portraitUp, null, null, interpreter);
		enumClass.assign('landscapeLeft', DeviceOrientation.landscapeLeft, null, null, interpreter);
		enumClass.assign('portraitDown', DeviceOrientation.portraitDown, null, null, interpreter);
		enumClass.assign('landscapeRight', DeviceOrientation.landscapeRight, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('SystemUiOverlay') as HT_Class;
		enumClass.assign('top', SystemUiOverlay.top, null, null, interpreter);
		enumClass.assign('bottom', SystemUiOverlay.bottom, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('KeyboardSide') as HT_Class;
		enumClass.assign('any', KeyboardSide.any, null, null, interpreter);
		enumClass.assign('left', KeyboardSide.left, null, null, interpreter);
		enumClass.assign('right', KeyboardSide.right, null, null, interpreter);
		enumClass.assign('all', KeyboardSide.all, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ModifierKey') as HT_Class;
		enumClass.assign('controlModifier', ModifierKey.controlModifier, null, null, interpreter);
		enumClass.assign('shiftModifier', ModifierKey.shiftModifier, null, null, interpreter);
		enumClass.assign('altModifier', ModifierKey.altModifier, null, null, interpreter);
		enumClass.assign('metaModifier', ModifierKey.metaModifier, null, null, interpreter);
		enumClass.assign('capsLockModifier', ModifierKey.capsLockModifier, null, null, interpreter);
		enumClass.assign('numLockModifier', ModifierKey.numLockModifier, null, null, interpreter);
		enumClass.assign('scrollLockModifier', ModifierKey.scrollLockModifier, null, null, interpreter);
		enumClass.assign('functionModifier', ModifierKey.functionModifier, null, null, interpreter);
		enumClass.assign('symbolModifier', ModifierKey.symbolModifier, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('CrossFadeState') as HT_Class;
		enumClass.assign('showFirst', CrossFadeState.showFirst, null, null, interpreter);
		enumClass.assign('showSecond', CrossFadeState.showSecond, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ConnectionState') as HT_Class;
		enumClass.assign('none', ConnectionState.none, null, null, interpreter);
		enumClass.assign('waiting', ConnectionState.waiting, null, null, interpreter);
		enumClass.assign('active', ConnectionState.active, null, null, interpreter);
		enumClass.assign('done', ConnectionState.done, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('AutovalidateMode') as HT_Class;
		enumClass.assign('disabled', AutovalidateMode.disabled, null, null, interpreter);
		enumClass.assign('always', AutovalidateMode.always, null, null, interpreter);
		enumClass.assign('onUserInteraction', AutovalidateMode.onUserInteraction, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('RoutePopDisposition') as HT_Class;
		enumClass.assign('pop', RoutePopDisposition.pop, null, null, interpreter);
		enumClass.assign('doNotPop', RoutePopDisposition.doNotPop, null, null, interpreter);
		enumClass.assign('bubble', RoutePopDisposition.bubble, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Orientation') as HT_Class;
		enumClass.assign('portrait', Orientation.portrait, null, null, interpreter);
		enumClass.assign('landscape', Orientation.landscape, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('NavigationMode') as HT_Class;
		enumClass.assign('traditional', NavigationMode.traditional, null, null, interpreter);
		enumClass.assign('directional', NavigationMode.directional, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ScrollPositionAlignmentPolicy') as HT_Class;
		enumClass.assign('explicit', ScrollPositionAlignmentPolicy.explicit, null, null, interpreter);
		enumClass.assign('keepVisibleAtEnd', ScrollPositionAlignmentPolicy.keepVisibleAtEnd, null, null, interpreter);
		enumClass.assign('keepVisibleAtStart', ScrollPositionAlignmentPolicy.keepVisibleAtStart, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ScrollIncrementType') as HT_Class;
		enumClass.assign('line', ScrollIncrementType.line, null, null, interpreter);
		enumClass.assign('page', ScrollIncrementType.page, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('KeyEventResult') as HT_Class;
		enumClass.assign('handled', KeyEventResult.handled, null, null, interpreter);
		enumClass.assign('ignored', KeyEventResult.ignored, null, null, interpreter);
		enumClass.assign('skipRemainingHandlers', KeyEventResult.skipRemainingHandlers, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('UnfocusDisposition') as HT_Class;
		enumClass.assign('scope', UnfocusDisposition.scope, null, null, interpreter);
		enumClass.assign('previouslyFocusedChild', UnfocusDisposition.previouslyFocusedChild, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FocusHighlightMode') as HT_Class;
		enumClass.assign('touch', FocusHighlightMode.touch, null, null, interpreter);
		enumClass.assign('traditional', FocusHighlightMode.traditional, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FocusHighlightStrategy') as HT_Class;
		enumClass.assign('automatic', FocusHighlightStrategy.automatic, null, null, interpreter);
		enumClass.assign('alwaysTouch', FocusHighlightStrategy.alwaysTouch, null, null, interpreter);
		enumClass.assign('alwaysTraditional', FocusHighlightStrategy.alwaysTraditional, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TraversalDirection') as HT_Class;
		enumClass.assign('up', TraversalDirection.up, null, null, interpreter);
		enumClass.assign('right', TraversalDirection.right, null, null, interpreter);
		enumClass.assign('down', TraversalDirection.down, null, null, interpreter);
		enumClass.assign('left', TraversalDirection.left, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BannerLocation') as HT_Class;
		enumClass.assign('topStart', BannerLocation.topStart, null, null, interpreter);
		enumClass.assign('topEnd', BannerLocation.topEnd, null, null, interpreter);
		enumClass.assign('bottomStart', BannerLocation.bottomStart, null, null, interpreter);
		enumClass.assign('bottomEnd', BannerLocation.bottomEnd, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DragAnchor') as HT_Class;
		enumClass.assign('child', DragAnchor.child, null, null, interpreter);
		enumClass.assign('pointer', DragAnchor.pointer, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('HeroFlightDirection') as HT_Class;
		enumClass.assign('push', HeroFlightDirection.push, null, null, interpreter);
		enumClass.assign('pop', HeroFlightDirection.pop, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextSelectionHandleType') as HT_Class;
		enumClass.assign('left', TextSelectionHandleType.left, null, null, interpreter);
		enumClass.assign('right', TextSelectionHandleType.right, null, null, interpreter);
		enumClass.assign('collapsed', TextSelectionHandleType.collapsed, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ClipboardStatus') as HT_Class;
		enumClass.assign('pasteable', ClipboardStatus.pasteable, null, null, interpreter);
		enumClass.assign('unknown', ClipboardStatus.unknown, null, null, interpreter);
		enumClass.assign('notPasteable', ClipboardStatus.notPasteable, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('OverflowBarAlignment') as HT_Class;
		enumClass.assign('start', OverflowBarAlignment.start, null, null, interpreter);
		enumClass.assign('end', OverflowBarAlignment.end, null, null, interpreter);
		enumClass.assign('center', OverflowBarAlignment.center, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('AutofillContextAction') as HT_Class;
		enumClass.assign('commit', AutofillContextAction.commit, null, null, interpreter);
		enumClass.assign('cancel', AutofillContextAction.cancel, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('DismissDirection') as HT_Class;
		enumClass.assign('vertical', DismissDirection.vertical, null, null, interpreter);
		enumClass.assign('horizontal', DismissDirection.horizontal, null, null, interpreter);
		enumClass.assign('endToStart', DismissDirection.endToStart, null, null, interpreter);
		enumClass.assign('startToEnd', DismissDirection.startToEnd, null, null, interpreter);
		enumClass.assign('up', DismissDirection.up, null, null, interpreter);
		enumClass.assign('down', DismissDirection.down, null, null, interpreter);
		enumClass.assign('none', DismissDirection.none, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ScrollViewKeyboardDismissBehavior') as HT_Class;
		enumClass.assign('manual', ScrollViewKeyboardDismissBehavior.manual, null, null, interpreter);
		enumClass.assign('onDrag', ScrollViewKeyboardDismissBehavior.onDrag, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Brightness') as HT_Class;
		enumClass.assign('dark', Brightness.dark, null, null, interpreter);
		enumClass.assign('light', Brightness.light, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FontStyle') as HT_Class;
		enumClass.assign('normal', FontStyle.normal, null, null, interpreter);
		enumClass.assign('italic', FontStyle.italic, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextAlign') as HT_Class;
		enumClass.assign('left', TextAlign.left, null, null, interpreter);
		enumClass.assign('right', TextAlign.right, null, null, interpreter);
		enumClass.assign('center', TextAlign.center, null, null, interpreter);
		enumClass.assign('justify', TextAlign.justify, null, null, interpreter);
		enumClass.assign('start', TextAlign.start, null, null, interpreter);
		enumClass.assign('end', TextAlign.end, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextBaseline') as HT_Class;
		enumClass.assign('alphabetic', TextBaseline.alphabetic, null, null, interpreter);
		enumClass.assign('ideographic', TextBaseline.ideographic, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextDecorationStyle') as HT_Class;
		enumClass.assign('solid', TextDecorationStyle.solid, null, null, interpreter);
		enumClass.assign('double', TextDecorationStyle.double, null, null, interpreter);
		enumClass.assign('dotted', TextDecorationStyle.dotted, null, null, interpreter);
		enumClass.assign('dashed', TextDecorationStyle.dashed, null, null, interpreter);
		enumClass.assign('wavy', TextDecorationStyle.wavy, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextDirection') as HT_Class;
		enumClass.assign('rtl', TextDirection.rtl, null, null, interpreter);
		enumClass.assign('ltr', TextDirection.ltr, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextAffinity') as HT_Class;
		enumClass.assign('upstream', TextAffinity.upstream, null, null, interpreter);
		enumClass.assign('downstream', TextAffinity.downstream, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BoxHeightStyle') as HT_Class;
		enumClass.assign('tight', BoxHeightStyle.tight, null, null, interpreter);
		enumClass.assign('max', BoxHeightStyle.max, null, null, interpreter);
		enumClass.assign('includeLineSpacingMiddle', BoxHeightStyle.includeLineSpacingMiddle, null, null, interpreter);
		enumClass.assign('includeLineSpacingTop', BoxHeightStyle.includeLineSpacingTop, null, null, interpreter);
		enumClass.assign('includeLineSpacingBottom', BoxHeightStyle.includeLineSpacingBottom, null, null, interpreter);
		enumClass.assign('strut', BoxHeightStyle.strut, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BoxWidthStyle') as HT_Class;
		enumClass.assign('tight', BoxWidthStyle.tight, null, null, interpreter);
		enumClass.assign('max', BoxWidthStyle.max, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PlaceholderAlignment') as HT_Class;
		enumClass.assign('baseline', PlaceholderAlignment.baseline, null, null, interpreter);
		enumClass.assign('aboveBaseline', PlaceholderAlignment.aboveBaseline, null, null, interpreter);
		enumClass.assign('belowBaseline', PlaceholderAlignment.belowBaseline, null, null, interpreter);
		enumClass.assign('top', PlaceholderAlignment.top, null, null, interpreter);
		enumClass.assign('bottom', PlaceholderAlignment.bottom, null, null, interpreter);
		enumClass.assign('middle', PlaceholderAlignment.middle, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PointerChange') as HT_Class;
		enumClass.assign('cancel', PointerChange.cancel, null, null, interpreter);
		enumClass.assign('add', PointerChange.add, null, null, interpreter);
		enumClass.assign('remove', PointerChange.remove, null, null, interpreter);
		enumClass.assign('hover', PointerChange.hover, null, null, interpreter);
		enumClass.assign('down', PointerChange.down, null, null, interpreter);
		enumClass.assign('move', PointerChange.move, null, null, interpreter);
		enumClass.assign('up', PointerChange.up, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PointerDeviceKind') as HT_Class;
		enumClass.assign('touch', PointerDeviceKind.touch, null, null, interpreter);
		enumClass.assign('mouse', PointerDeviceKind.mouse, null, null, interpreter);
		enumClass.assign('stylus', PointerDeviceKind.stylus, null, null, interpreter);
		enumClass.assign('invertedStylus', PointerDeviceKind.invertedStylus, null, null, interpreter);
		enumClass.assign('unknown', PointerDeviceKind.unknown, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PointerSignalKind') as HT_Class;
		enumClass.assign('none', PointerSignalKind.none, null, null, interpreter);
		enumClass.assign('scroll', PointerSignalKind.scroll, null, null, interpreter);
		enumClass.assign('unknown', PointerSignalKind.unknown, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BlendMode') as HT_Class;
		enumClass.assign('clear', BlendMode.clear, null, null, interpreter);
		enumClass.assign('src', BlendMode.src, null, null, interpreter);
		enumClass.assign('dst', BlendMode.dst, null, null, interpreter);
		enumClass.assign('srcOver', BlendMode.srcOver, null, null, interpreter);
		enumClass.assign('dstOver', BlendMode.dstOver, null, null, interpreter);
		enumClass.assign('srcIn', BlendMode.srcIn, null, null, interpreter);
		enumClass.assign('dstIn', BlendMode.dstIn, null, null, interpreter);
		enumClass.assign('srcOut', BlendMode.srcOut, null, null, interpreter);
		enumClass.assign('dstOut', BlendMode.dstOut, null, null, interpreter);
		enumClass.assign('srcATop', BlendMode.srcATop, null, null, interpreter);
		enumClass.assign('dstATop', BlendMode.dstATop, null, null, interpreter);
		enumClass.assign('xor', BlendMode.xor, null, null, interpreter);
		enumClass.assign('plus', BlendMode.plus, null, null, interpreter);
		enumClass.assign('modulate', BlendMode.modulate, null, null, interpreter);
		enumClass.assign('screen', BlendMode.screen, null, null, interpreter);
		enumClass.assign('overlay', BlendMode.overlay, null, null, interpreter);
		enumClass.assign('darken', BlendMode.darken, null, null, interpreter);
		enumClass.assign('lighten', BlendMode.lighten, null, null, interpreter);
		enumClass.assign('colorDodge', BlendMode.colorDodge, null, null, interpreter);
		enumClass.assign('colorBurn', BlendMode.colorBurn, null, null, interpreter);
		enumClass.assign('hardLight', BlendMode.hardLight, null, null, interpreter);
		enumClass.assign('softLight', BlendMode.softLight, null, null, interpreter);
		enumClass.assign('difference', BlendMode.difference, null, null, interpreter);
		enumClass.assign('exclusion', BlendMode.exclusion, null, null, interpreter);
		enumClass.assign('multiply', BlendMode.multiply, null, null, interpreter);
		enumClass.assign('hue', BlendMode.hue, null, null, interpreter);
		enumClass.assign('saturation', BlendMode.saturation, null, null, interpreter);
		enumClass.assign('color', BlendMode.color, null, null, interpreter);
		enumClass.assign('luminosity', BlendMode.luminosity, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FilterQuality') as HT_Class;
		enumClass.assign('none', FilterQuality.none, null, null, interpreter);
		enumClass.assign('low', FilterQuality.low, null, null, interpreter);
		enumClass.assign('medium', FilterQuality.medium, null, null, interpreter);
		enumClass.assign('high', FilterQuality.high, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('StrokeCap') as HT_Class;
		enumClass.assign('butt', StrokeCap.butt, null, null, interpreter);
		enumClass.assign('round', StrokeCap.round, null, null, interpreter);
		enumClass.assign('square', StrokeCap.square, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('StrokeJoin') as HT_Class;
		enumClass.assign('miter', StrokeJoin.miter, null, null, interpreter);
		enumClass.assign('round', StrokeJoin.round, null, null, interpreter);
		enumClass.assign('bevel', StrokeJoin.bevel, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PaintingStyle') as HT_Class;
		enumClass.assign('fill', PaintingStyle.fill, null, null, interpreter);
		enumClass.assign('stroke', PaintingStyle.stroke, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Clip') as HT_Class;
		enumClass.assign('none', Clip.none, null, null, interpreter);
		enumClass.assign('hardEdge', Clip.hardEdge, null, null, interpreter);
		enumClass.assign('antiAlias', Clip.antiAlias, null, null, interpreter);
		enumClass.assign('antiAliasWithSaveLayer', Clip.antiAliasWithSaveLayer, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ImageByteFormat') as HT_Class;
		enumClass.assign('rawRgba', ImageByteFormat.rawRgba, null, null, interpreter);
		enumClass.assign('rawUnmodified', ImageByteFormat.rawUnmodified, null, null, interpreter);
		enumClass.assign('png', ImageByteFormat.png, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PixelFormat') as HT_Class;
		enumClass.assign('rgba8888', PixelFormat.rgba8888, null, null, interpreter);
		enumClass.assign('bgra8888', PixelFormat.bgra8888, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PathFillType') as HT_Class;
		enumClass.assign('nonZero', PathFillType.nonZero, null, null, interpreter);
		enumClass.assign('evenOdd', PathFillType.evenOdd, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PathOperation') as HT_Class;
		enumClass.assign('difference', PathOperation.difference, null, null, interpreter);
		enumClass.assign('intersect', PathOperation.intersect, null, null, interpreter);
		enumClass.assign('union', PathOperation.union, null, null, interpreter);
		enumClass.assign('xor', PathOperation.xor, null, null, interpreter);
		enumClass.assign('reverseDifference', PathOperation.reverseDifference, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BlurStyle') as HT_Class;
		enumClass.assign('normal', BlurStyle.normal, null, null, interpreter);
		enumClass.assign('solid', BlurStyle.solid, null, null, interpreter);
		enumClass.assign('outer', BlurStyle.outer, null, null, interpreter);
		enumClass.assign('inner', BlurStyle.inner, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TileMode') as HT_Class;
		enumClass.assign('clamp', TileMode.clamp, null, null, interpreter);
		enumClass.assign('repeated', TileMode.repeated, null, null, interpreter);
		enumClass.assign('mirror', TileMode.mirror, null, null, interpreter);
		enumClass.assign('decal', TileMode.decal, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('VertexMode') as HT_Class;
		enumClass.assign('triangles', VertexMode.triangles, null, null, interpreter);
		enumClass.assign('triangleStrip', VertexMode.triangleStrip, null, null, interpreter);
		enumClass.assign('triangleFan', VertexMode.triangleFan, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PointMode') as HT_Class;
		enumClass.assign('points', PointMode.points, null, null, interpreter);
		enumClass.assign('lines', PointMode.lines, null, null, interpreter);
		enumClass.assign('polygon', PointMode.polygon, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('ClipOp') as HT_Class;
		enumClass.assign('difference', ClipOp.difference, null, null, interpreter);
		enumClass.assign('intersect', ClipOp.intersect, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FramePhase') as HT_Class;
		enumClass.assign('vsyncStart', FramePhase.vsyncStart, null, null, interpreter);
		enumClass.assign('buildStart', FramePhase.buildStart, null, null, interpreter);
		enumClass.assign('buildFinish', FramePhase.buildFinish, null, null, interpreter);
		enumClass.assign('rasterStart', FramePhase.rasterStart, null, null, interpreter);
		enumClass.assign('rasterFinish', FramePhase.rasterFinish, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('AppLifecycleState') as HT_Class;
		enumClass.assign('resumed', AppLifecycleState.resumed, null, null, interpreter);
		enumClass.assign('inactive', AppLifecycleState.inactive, null, null, interpreter);
		enumClass.assign('paused', AppLifecycleState.paused, null, null, interpreter);
		enumClass.assign('detached', AppLifecycleState.detached, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BorderRadius') as HT_Class;
		enumClass.assign('zero', BorderRadius.zero, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('BorderRadiusDirectional') as HT_Class;
		enumClass.assign('zero', BorderRadiusDirectional.zero, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Alignment') as HT_Class;
		enumClass.assign('topLeft', Alignment.topLeft, null, null, interpreter);
		enumClass.assign('topCenter', Alignment.topCenter, null, null, interpreter);
		enumClass.assign('topRight', Alignment.topRight, null, null, interpreter);
		enumClass.assign('centerLeft', Alignment.centerLeft, null, null, interpreter);
		enumClass.assign('center', Alignment.center, null, null, interpreter);
		enumClass.assign('centerRight', Alignment.centerRight, null, null, interpreter);
		enumClass.assign('bottomLeft', Alignment.bottomLeft, null, null, interpreter);
		enumClass.assign('bottomCenter', Alignment.bottomCenter, null, null, interpreter);
		enumClass.assign('bottomRight', Alignment.bottomRight, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('AlignmentDirectional') as HT_Class;
		enumClass.assign('topStart', AlignmentDirectional.topStart, null, null, interpreter);
		enumClass.assign('topCenter', AlignmentDirectional.topCenter, null, null, interpreter);
		enumClass.assign('topEnd', AlignmentDirectional.topEnd, null, null, interpreter);
		enumClass.assign('centerStart', AlignmentDirectional.centerStart, null, null, interpreter);
		enumClass.assign('center', AlignmentDirectional.center, null, null, interpreter);
		enumClass.assign('centerEnd', AlignmentDirectional.centerEnd, null, null, interpreter);
		enumClass.assign('bottomStart', AlignmentDirectional.bottomStart, null, null, interpreter);
		enumClass.assign('bottomCenter', AlignmentDirectional.bottomCenter, null, null, interpreter);
		enumClass.assign('bottomEnd', AlignmentDirectional.bottomEnd, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FractionalOffset') as HT_Class;
		enumClass.assign('topLeft', FractionalOffset.topLeft, null, null, interpreter);
		enumClass.assign('topCenter', FractionalOffset.topCenter, null, null, interpreter);
		enumClass.assign('topRight', FractionalOffset.topRight, null, null, interpreter);
		enumClass.assign('centerLeft', FractionalOffset.centerLeft, null, null, interpreter);
		enumClass.assign('center', FractionalOffset.center, null, null, interpreter);
		enumClass.assign('centerRight', FractionalOffset.centerRight, null, null, interpreter);
		enumClass.assign('bottomLeft', FractionalOffset.bottomLeft, null, null, interpreter);
		enumClass.assign('bottomCenter', FractionalOffset.bottomCenter, null, null, interpreter);
		enumClass.assign('bottomRight', FractionalOffset.bottomRight, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('EdgeInsets') as HT_Class;
		enumClass.assign('zero', EdgeInsets.zero, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('EdgeInsetsDirectional') as HT_Class;
		enumClass.assign('zero', EdgeInsetsDirectional.zero, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('StrutStyle') as HT_Class;
		enumClass.assign('disabled', StrutStyle.disabled, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('CupertinoScrollbar') as HT_Class;
		enumClass.assign('defaultThickness', CupertinoScrollbar.defaultThickness, null, null, interpreter);
		enumClass.assign('defaultThicknessWhileDragging', CupertinoScrollbar.defaultThicknessWhileDragging, null, null, interpreter);
		enumClass.assign('defaultRadius', CupertinoScrollbar.defaultRadius, null, null, interpreter);
		enumClass.assign('defaultRadiusWhileDragging', CupertinoScrollbar.defaultRadiusWhileDragging, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Material') as HT_Class;
		enumClass.assign('defaultSplashRadius', Material.defaultSplashRadius, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextField') as HT_Class;
		enumClass.assign('noMaxLength', TextField.noMaxLength, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Colors') as HT_Class;
		enumClass.assign('transparent', Colors.transparent, null, null, interpreter);
		enumClass.assign('black', Colors.black, null, null, interpreter);
		enumClass.assign('black87', Colors.black87, null, null, interpreter);
		enumClass.assign('black54', Colors.black54, null, null, interpreter);
		enumClass.assign('black45', Colors.black45, null, null, interpreter);
		enumClass.assign('black38', Colors.black38, null, null, interpreter);
		enumClass.assign('black26', Colors.black26, null, null, interpreter);
		enumClass.assign('black12', Colors.black12, null, null, interpreter);
		enumClass.assign('white', Colors.white, null, null, interpreter);
		enumClass.assign('white70', Colors.white70, null, null, interpreter);
		enumClass.assign('white60', Colors.white60, null, null, interpreter);
		enumClass.assign('white54', Colors.white54, null, null, interpreter);
		enumClass.assign('white38', Colors.white38, null, null, interpreter);
		enumClass.assign('white30', Colors.white30, null, null, interpreter);
		enumClass.assign('white24', Colors.white24, null, null, interpreter);
		enumClass.assign('white12', Colors.white12, null, null, interpreter);
		enumClass.assign('white10', Colors.white10, null, null, interpreter);
		enumClass.assign('red', Colors.red, null, null, interpreter);
		enumClass.assign('redAccent', Colors.redAccent, null, null, interpreter);
		enumClass.assign('pink', Colors.pink, null, null, interpreter);
		enumClass.assign('pinkAccent', Colors.pinkAccent, null, null, interpreter);
		enumClass.assign('purple', Colors.purple, null, null, interpreter);
		enumClass.assign('purpleAccent', Colors.purpleAccent, null, null, interpreter);
		enumClass.assign('deepPurple', Colors.deepPurple, null, null, interpreter);
		enumClass.assign('deepPurpleAccent', Colors.deepPurpleAccent, null, null, interpreter);
		enumClass.assign('indigo', Colors.indigo, null, null, interpreter);
		enumClass.assign('indigoAccent', Colors.indigoAccent, null, null, interpreter);
		enumClass.assign('blue', Colors.blue, null, null, interpreter);
		enumClass.assign('blueAccent', Colors.blueAccent, null, null, interpreter);
		enumClass.assign('lightBlue', Colors.lightBlue, null, null, interpreter);
		enumClass.assign('lightBlueAccent', Colors.lightBlueAccent, null, null, interpreter);
		enumClass.assign('cyan', Colors.cyan, null, null, interpreter);
		enumClass.assign('cyanAccent', Colors.cyanAccent, null, null, interpreter);
		enumClass.assign('teal', Colors.teal, null, null, interpreter);
		enumClass.assign('tealAccent', Colors.tealAccent, null, null, interpreter);
		enumClass.assign('green', Colors.green, null, null, interpreter);
		enumClass.assign('greenAccent', Colors.greenAccent, null, null, interpreter);
		enumClass.assign('lightGreen', Colors.lightGreen, null, null, interpreter);
		enumClass.assign('lightGreenAccent', Colors.lightGreenAccent, null, null, interpreter);
		enumClass.assign('lime', Colors.lime, null, null, interpreter);
		enumClass.assign('limeAccent', Colors.limeAccent, null, null, interpreter);
		enumClass.assign('yellow', Colors.yellow, null, null, interpreter);
		enumClass.assign('yellowAccent', Colors.yellowAccent, null, null, interpreter);
		enumClass.assign('amber', Colors.amber, null, null, interpreter);
		enumClass.assign('amberAccent', Colors.amberAccent, null, null, interpreter);
		enumClass.assign('orange', Colors.orange, null, null, interpreter);
		enumClass.assign('orangeAccent', Colors.orangeAccent, null, null, interpreter);
		enumClass.assign('deepOrange', Colors.deepOrange, null, null, interpreter);
		enumClass.assign('deepOrangeAccent', Colors.deepOrangeAccent, null, null, interpreter);
		enumClass.assign('brown', Colors.brown, null, null, interpreter);
		enumClass.assign('grey', Colors.grey, null, null, interpreter);
		enumClass.assign('blueGrey', Colors.blueGrey, null, null, interpreter);
		enumClass.assign('primaries', Colors.primaries, null, null, interpreter);
		enumClass.assign('accents', Colors.accents, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Checkbox') as HT_Class;
		enumClass.assign('width', Checkbox.width, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('PaginatedDataTable') as HT_Class;
		enumClass.assign('defaultRowsPerPage', PaginatedDataTable.defaultRowsPerPage, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('VisualDensity') as HT_Class;
		enumClass.assign('minimumDensity', VisualDensity.minimumDensity, null, null, interpreter);
		enumClass.assign('maximumDensity', VisualDensity.maximumDensity, null, null, interpreter);
		enumClass.assign('standard', VisualDensity.standard, null, null, interpreter);
		enumClass.assign('comfortable', VisualDensity.comfortable, null, null, interpreter);
		enumClass.assign('compact', VisualDensity.compact, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('NavigationToolbar') as HT_Class;
		enumClass.assign('kMiddleSpacing', NavigationToolbar.kMiddleSpacing, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Navigator') as HT_Class;
		enumClass.assign('defaultRouteName', Navigator.defaultRouteName, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('FontWeight') as HT_Class;
		enumClass.assign('w100', FontWeight.w100, null, null, interpreter);
		enumClass.assign('w200', FontWeight.w200, null, null, interpreter);
		enumClass.assign('w300', FontWeight.w300, null, null, interpreter);
		enumClass.assign('w400', FontWeight.w400, null, null, interpreter);
		enumClass.assign('w500', FontWeight.w500, null, null, interpreter);
		enumClass.assign('w600', FontWeight.w600, null, null, interpreter);
		enumClass.assign('w700', FontWeight.w700, null, null, interpreter);
		enumClass.assign('w800', FontWeight.w800, null, null, interpreter);
		enumClass.assign('w900', FontWeight.w900, null, null, interpreter);
		enumClass.assign('normal', FontWeight.normal, null, null, interpreter);
		enumClass.assign('bold', FontWeight.bold, null, null, interpreter);
		enumClass.assign('values', FontWeight.values, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('TextDecoration') as HT_Class;
		enumClass.assign('none', TextDecoration.none, null, null, interpreter);
		enumClass.assign('underline', TextDecoration.underline, null, null, interpreter);
		enumClass.assign('overline', TextDecoration.overline, null, null, interpreter);
		enumClass.assign('lineThrough', TextDecoration.lineThrough, null, null, interpreter);
		enumClass = interpreter.fetchGlobal('Size') as HT_Class;
		enumClass.assign('zero', Size.zero, null, null, interpreter);
		enumClass.assign('infinite', Size.infinite, null, null, interpreter);	}
	static Future initBinding() async {
		_interpreter = await HetuScriptBinding.init();
		String _enumDefinitions = """
class SchedulerPhase {
	static var idle
	static var transientCallbacks
	static var midFrameMicrotasks
	static var persistentCallbacks
	static var postFrameCallbacks
}

class AnimationBehavior {
	static var normal
	static var preserve
}

class AnimationStatus {
	static var dismissed
	static var forward
	static var reverse
	static var completed
}

class DiagnosticLevel {
	static var hidden
	static var fine
	static var debug
	static var info
	static var warning
	static var hint
	static var summary
	static var error
	static var off
}

class DiagnosticsTreeStyle {
	static var none
	static var sparse
	static var offstage
	static var dense
	static var transition
	static var error
	static var whitespace
	static var flat
	static var singleLine
	static var errorProperty
	static var shallow
	static var truncateChildren
}

class TargetPlatform {
	static var android
	static var fuchsia
	static var iOS
	static var linux
	static var macOS
	static var windows
}

class DebugSemanticsDumpOrder {
	static var inverseHitTest
	static var traversalOrder
}

class BorderStyle {
	static var none
	static var solid
}

class BoxShape {
	static var rectangle
	static var circle
}

class FlutterLogoStyle {
	static var markOnly
	static var horizontal
	static var stacked
}

class RenderComparison {
	static var identical
	static var metadata
	static var paint
	static var layout
}

class Axis {
	static var horizontal
	static var vertical
}

class VerticalDirection {
	static var up
	static var down
}

class AxisDirection {
	static var up
	static var right
	static var down
	static var left
}

class BoxFit {
	static var fill
	static var contain
	static var cover
	static var fitWidth
	static var fitHeight
	static var none
	static var scaleDown
}

class TextWidthBasis {
	static var parent
	static var longestLine
}

class ImageRepeat {
	static var repeat
	static var repeatX
	static var repeatY
	static var noRepeat
}

class GestureDisposition {
	static var accepted
	static var rejected
}

class DragStartBehavior {
	static var down
	static var start
}

class GestureRecognizerState {
	static var ready
	static var possible
	static var defunct
}

class WrapAlignment {
	static var start
	static var end
	static var center
	static var spaceBetween
	static var spaceAround
	static var spaceEvenly
}

class WrapCrossAlignment {
	static var start
	static var end
	static var center
}

class HitTestBehavior {
	static var deferToChild
	static var opaque
	static var translucent
}

class DecorationPosition {
	static var background
	static var foreground
}

class ScrollDirection {
	static var idle
	static var forward
	static var reverse
}

class FlexFit {
	static var tight
	static var loose
}

class MainAxisSize {
	static var min
	static var max
}

class MainAxisAlignment {
	static var start
	static var end
	static var center
	static var spaceBetween
	static var spaceAround
	static var spaceEvenly
}

class CrossAxisAlignment {
	static var start
	static var end
	static var center
	static var stretch
	static var baseline
}

class TableCellVerticalAlignment {
	static var top
	static var middle
	static var bottom
	static var baseline
	static var fill
}

class PerformanceOverlayOption {
	static var displayRasterizerStatistics
	static var visualizeRasterizerStatistics
	static var displayEngineStatistics
	static var visualizeEngineStatistics
}

class CacheExtentStyle {
	static var pixel
	static var viewport
}

class GrowthDirection {
	static var forward
	static var reverse
}

class StackFit {
	static var loose
	static var expand
	static var passthrough
}

class Overflow {
	static var visible
	static var clip
}

class PlatformViewHitTestBehavior {
	static var opaque
	static var translucent
	static var transparent
}

class SelectionChangedCause {
	static var tap
	static var doubleTap
	static var longPress
	static var forcePress
	static var keyboard
	static var drag
}

class TextOverflow {
	static var clip
	static var fade
	static var ellipsis
	static var visible
}

class SpringType {
	static var criticallyDamped
	static var underDamped
	static var overDamped
}

class OverlayVisibilityMode {
	static var never
	static var editing
	static var notEditing
	static var always
}

class CupertinoDatePickerMode {
	static var time
	static var date
	static var dateAndTime
}

class CupertinoTimerPickerMode {
	static var hm
	static var ms
	static var hms
}

class RefreshIndicatorMode {
	static var inactive
	static var drag
	static var armed
	static var refresh
	static var done
}

class CupertinoUserInterfaceLevelData {
	static var base
	static var elevated
}

class DatePickerDateTimeOrder {
	static var date_time_dayPeriod
	static var date_dayPeriod_time
	static var time_dayPeriod_date
	static var dayPeriod_time_date
}

class DatePickerDateOrder {
	static var dmy
	static var mdy
	static var ymd
	static var ydm
}

class MaterialType {
	static var canvas
	static var card
	static var circle
	static var button
	static var transparency
}

class RefreshIndicatorTriggerMode {
	static var anywhere
	static var onEdge
}

class SnackBarClosedReason {
	static var action
	static var dismiss
	static var swipe
	static var hide
	static var remove
	static var timeout
}

class FloatingLabelBehavior {
	static var never
	static var auto
	static var always
}

class DayPeriod {
	static var am
	static var pm
}

class TimeOfDayFormat {
	static var HH_colon_mm
	static var HH_dot_mm
	static var frenchCanadian
	static var H_colon_mm
	static var h_colon_mm_space_a
	static var a_space_h_colon_mm
}

class HourFormat {
	static var HH
	static var H
	static var h
}

class NavigationRailLabelType {
	static var none
	static var selected
	static var all
}

class TimePickerEntryMode {
	static var dial
	static var input
}

class StepState {
	static var indexed
	static var editing
	static var complete
	static var disabled
	static var error
}

class StepperType {
	static var vertical
	static var horizontal
}

class TabBarIndicatorSize {
	static var tab
	static var label
}

class MaterialState {
	static var hovered
	static var focused
	static var pressed
	static var dragged
	static var selected
	static var disabled
	static var error
}

class ButtonTextTheme {
	static var normal
	static var accent
	static var primary
}

class ButtonBarLayoutBehavior {
	static var constrained
	static var padded
}

class ListTileStyle {
	static var list
	static var drawer
}

class ListTileControlAffinity {
	static var leading
	static var trailing
	static var platform
}

class ScriptCategory {
	static var englishLike
	static var dense
	static var tall
}

class ShowValueIndicator {
	static var onlyForDiscrete
	static var onlyForContinuous
	static var always
	static var never
}

class Thumb {
	static var start
	static var end
}

class DrawerAlignment {
	static var start
	static var end
}

class DatePickerEntryMode {
	static var calendar
	static var input
}

class DatePickerMode {
	static var day
	static var year
}

class SnackBarBehavior {
	static var fixed
	static var floating
}

class MaterialTapTargetSize {
	static var padded
	static var shrinkWrap
}

class CollapseMode {
	static var parallax
	static var pin
	static var none
}

class StretchMode {
	static var zoomBackground
	static var blurBackground
	static var fadeTitle
}

class BottomNavigationBarType {
	static var fixed
	static var shifting
}

class ThemeMode {
	static var system
	static var light
	static var dark
}

class SystemSoundType {
	static var click
	static var alert
}

class SmartDashesType {
	static var disabled
	static var enabled
}

class SmartQuotesType {
	static var disabled
	static var enabled
}

class TextInputAction {
	static var none
	static var unspecified
	static var done
	static var go
	static var search
	static var send
	static var next
	static var previous
	static var continueAction
	static var join
	static var route
	static var emergencyCall
	static var newline
}

class TextCapitalization {
	static var words
	static var sentences
	static var characters
	static var none
}

class FloatingCursorDragState {
	static var Start
	static var Update
	static var End
}

class MaxLengthEnforcement {
	static var none
	static var enforced
	static var truncateAfterCompositionEnds
}

class DeviceOrientation {
	static var portraitUp
	static var landscapeLeft
	static var portraitDown
	static var landscapeRight
}

class SystemUiOverlay {
	static var top
	static var bottom
}

class KeyboardSide {
	static var any
	static var left
	static var right
	static var all
}

class ModifierKey {
	static var controlModifier
	static var shiftModifier
	static var altModifier
	static var metaModifier
	static var capsLockModifier
	static var numLockModifier
	static var scrollLockModifier
	static var functionModifier
	static var symbolModifier
}

class CrossFadeState {
	static var showFirst
	static var showSecond
}

class ConnectionState {
	static var none
	static var waiting
	static var active
	static var done
}

class AutovalidateMode {
	static var disabled
	static var always
	static var onUserInteraction
}

class RoutePopDisposition {
	static var pop
	static var doNotPop
	static var bubble
}

class Orientation {
	static var portrait
	static var landscape
}

class NavigationMode {
	static var traditional
	static var directional
}

class ScrollPositionAlignmentPolicy {
	static var explicit
	static var keepVisibleAtEnd
	static var keepVisibleAtStart
}

class ScrollIncrementType {
	static var line
	static var page
}

class KeyEventResult {
	static var handled
	static var ignored
	static var skipRemainingHandlers
}

class UnfocusDisposition {
	static var scope
	static var previouslyFocusedChild
}

class FocusHighlightMode {
	static var touch
	static var traditional
}

class FocusHighlightStrategy {
	static var automatic
	static var alwaysTouch
	static var alwaysTraditional
}

class TraversalDirection {
	static var up
	static var right
	static var down
	static var left
}

class BannerLocation {
	static var topStart
	static var topEnd
	static var bottomStart
	static var bottomEnd
}

class DragAnchor {
	static var child
	static var pointer
}

class HeroFlightDirection {
	static var push
	static var pop
}

class TextSelectionHandleType {
	static var left
	static var right
	static var collapsed
}

class ClipboardStatus {
	static var pasteable
	static var unknown
	static var notPasteable
}

class OverflowBarAlignment {
	static var start
	static var end
	static var center
}

class AutofillContextAction {
	static var commit
	static var cancel
}

class DismissDirection {
	static var vertical
	static var horizontal
	static var endToStart
	static var startToEnd
	static var up
	static var down
	static var none
}

class ScrollViewKeyboardDismissBehavior {
	static var manual
	static var onDrag
}

class Brightness {
	static var dark
	static var light
}

class FontStyle {
	static var normal
	static var italic
}

class TextAlign {
	static var left
	static var right
	static var center
	static var justify
	static var start
	static var end
}

class TextBaseline {
	static var alphabetic
	static var ideographic
}

class TextDecorationStyle {
	static var solid
	static var double
	static var dotted
	static var dashed
	static var wavy
}

class TextDirection {
	static var rtl
	static var ltr
}

class TextAffinity {
	static var upstream
	static var downstream
}

class BoxHeightStyle {
	static var tight
	static var max
	static var includeLineSpacingMiddle
	static var includeLineSpacingTop
	static var includeLineSpacingBottom
	static var strut
}

class BoxWidthStyle {
	static var tight
	static var max
}

class PlaceholderAlignment {
	static var baseline
	static var aboveBaseline
	static var belowBaseline
	static var top
	static var bottom
	static var middle
}

class PointerChange {
	static var cancel
	static var add
	static var remove
	static var hover
	static var down
	static var move
	static var up
}

class PointerDeviceKind {
	static var touch
	static var mouse
	static var stylus
	static var invertedStylus
	static var unknown
}

class PointerSignalKind {
	static var none
	static var scroll
	static var unknown
}

class BlendMode {
	static var clear
	static var src
	static var dst
	static var srcOver
	static var dstOver
	static var srcIn
	static var dstIn
	static var srcOut
	static var dstOut
	static var srcATop
	static var dstATop
	static var xor
	static var plus
	static var modulate
	static var screen
	static var overlay
	static var darken
	static var lighten
	static var colorDodge
	static var colorBurn
	static var hardLight
	static var softLight
	static var difference
	static var exclusion
	static var multiply
	static var hue
	static var saturation
	static var color
	static var luminosity
}

class FilterQuality {
	static var none
	static var low
	static var medium
	static var high
}

class StrokeCap {
	static var butt
	static var round
	static var square
}

class StrokeJoin {
	static var miter
	static var round
	static var bevel
}

class PaintingStyle {
	static var fill
	static var stroke
}

class Clip {
	static var none
	static var hardEdge
	static var antiAlias
	static var antiAliasWithSaveLayer
}

class ImageByteFormat {
	static var rawRgba
	static var rawUnmodified
	static var png
}

class PixelFormat {
	static var rgba8888
	static var bgra8888
}

class PathFillType {
	static var nonZero
	static var evenOdd
}

class PathOperation {
	static var difference
	static var intersect
	static var union
	static var xor
	static var reverseDifference
}

class BlurStyle {
	static var normal
	static var solid
	static var outer
	static var inner
}

class TileMode {
	static var clamp
	static var repeated
	static var mirror
	static var decal
}

class VertexMode {
	static var triangles
	static var triangleStrip
	static var triangleFan
}

class PointMode {
	static var points
	static var lines
	static var polygon
}

class ClipOp {
	static var difference
	static var intersect
}

class FramePhase {
	static var vsyncStart
	static var buildStart
	static var buildFinish
	static var rasterStart
	static var rasterFinish
}

class AppLifecycleState {
	static var resumed
	static var inactive
	static var paused
	static var detached
}

class BorderRadius {
	static var zero
}

class BorderRadiusDirectional {
	static var zero
}

class Alignment {
	static var topLeft
	static var topCenter
	static var topRight
	static var centerLeft
	static var center
	static var centerRight
	static var bottomLeft
	static var bottomCenter
	static var bottomRight
}

class AlignmentDirectional {
	static var topStart
	static var topCenter
	static var topEnd
	static var centerStart
	static var center
	static var centerEnd
	static var bottomStart
	static var bottomCenter
	static var bottomEnd
}

class FractionalOffset {
	static var topLeft
	static var topCenter
	static var topRight
	static var centerLeft
	static var center
	static var centerRight
	static var bottomLeft
	static var bottomCenter
	static var bottomRight
}

class EdgeInsets {
	static var zero
}

class EdgeInsetsDirectional {
	static var zero
}

class StrutStyle {
	static var disabled
}

class CupertinoScrollbar {
	static var defaultThickness
	static var defaultThicknessWhileDragging
	static var defaultRadius
	static var defaultRadiusWhileDragging
}

class Material {
	static var defaultSplashRadius
}

class TextField {
	static var noMaxLength
}

class Colors {
	static var transparent
	static var black
	static var black87
	static var black54
	static var black45
	static var black38
	static var black26
	static var black12
	static var white
	static var white70
	static var white60
	static var white54
	static var white38
	static var white30
	static var white24
	static var white12
	static var white10
	static var red
	static var redAccent
	static var pink
	static var pinkAccent
	static var purple
	static var purpleAccent
	static var deepPurple
	static var deepPurpleAccent
	static var indigo
	static var indigoAccent
	static var blue
	static var blueAccent
	static var lightBlue
	static var lightBlueAccent
	static var cyan
	static var cyanAccent
	static var teal
	static var tealAccent
	static var green
	static var greenAccent
	static var lightGreen
	static var lightGreenAccent
	static var lime
	static var limeAccent
	static var yellow
	static var yellowAccent
	static var amber
	static var amberAccent
	static var orange
	static var orangeAccent
	static var deepOrange
	static var deepOrangeAccent
	static var brown
	static var grey
	static var blueGrey
	static var primaries
	static var accents
}

class Checkbox {
	static var width
}

class PaginatedDataTable {
	static var defaultRowsPerPage
}

class VisualDensity {
	static var minimumDensity
	static var maximumDensity
	static var standard
	static var comfortable
	static var compact
}

class NavigationToolbar {
	static var kMiddleSpacing
}

class Navigator {
	static var defaultRouteName
}

class FontWeight {
	static var w100
	static var w200
	static var w300
	static var w400
	static var w500
	static var w600
	static var w700
	static var w800
	static var w900
	static var normal
	static var bold
	static var values
}

class TextDecoration {
	static var none
	static var underline
	static var overline
	static var lineThrough
}

class Size {
	static var zero
	static var infinite
}
		""";
		String _widgetDefinitions = """
external fun SawTooth(count)
external fun Interval(begin, end, {curve})
external fun Threshold(threshold)
external fun Cubic(a, b, c, d)
external fun CatmullRomCurve(controlPoints, {tension})
external fun CatmullRomCurve_precompute(controlPoints, {tension})
external fun FlippedCurve(curve)
external fun ElasticInCurve(period)
external fun ElasticOutCurve(period)
external fun ElasticInOutCurve(period)
external fun ValueKey(value)
external fun OrdinalSortKey(order, {name})
external fun Border({top, right, bottom, left})
external fun Border_fromBorderSide(side)
external fun Border_symmetric({vertical, horizontal})
external fun Border_all({color, width, style})
external fun BorderDirectional({top, start, end, bottom})
external fun ResizeImage(imageProvider, {width, height, allowUpscaling})
external fun FileImage(file, {scale})
external fun MemoryImage(bytes, {scale})
external fun BorderRadius_all(radius)
external fun BorderRadius_circular(radius)
external fun BorderRadius_vertical({top, bottom})
external fun BorderRadius_horizontal({left, right})
external fun BorderRadius_only({topLeft, topRight, bottomLeft, bottomRight})
external fun BorderRadiusDirectional_all(radius)
external fun BorderRadiusDirectional_circular(radius)
external fun BorderRadiusDirectional_vertical({top, bottom})
external fun BorderRadiusDirectional_horizontal({start, end})
external fun BorderRadiusDirectional_only({topStart, topEnd, bottomStart, bottomEnd})
external fun ContinuousRectangleBorder({side, borderRadius})
external fun TextStyle({color, decoration, decorationColor, decorationStyle, decorationThickness, fontWeight, fontStyle, textBaseline, fontFamily, fontFamilyFallback, fontSize, letterSpacing, wordSpacing, height, locale, background, foreground, shadows, fontFeatures})
external fun CircleBorder({side})
external fun BeveledRectangleBorder({side, borderRadius})
external fun GradientRotation(radians)
external fun LinearGradient({begin, end, colors, stops, tileMode, transform})
external fun RadialGradient({center, radius, colors, stops, tileMode, focal, focalRadius, transform})
external fun SweepGradient({center, startAngle, endAngle, colors, stops, tileMode, transform})
external fun Alignment(x, y)
external fun AlignmentDirectional(start, y)
external fun TextSpan({text, children, style, recognizer, semanticsLabel})
external fun FlutterLogoDecoration({textColor, style, margin})
external fun BoxDecoration({color, image, border, borderRadius, boxShadow, gradient, backgroundBlendMode, shape})
external fun FractionalOffset(dx, dy)
external fun FractionalOffset_fromOffsetAndSize(offset, size)
external fun FractionalOffset_fromOffsetAndRect(offset, rect)
external fun CircularNotchedRectangle()
external fun AutomaticNotchedShape(host, guest)
external fun StadiumBorder({side})
external fun RoundedRectangleBorder({side, borderRadius})
external fun ShapeDecoration({color, image, gradient, shadows, shape})
external fun ShapeDecoration_fromBoxDecoration(source)
external fun EdgeInsets_fromLTRB(left, top, right, bottom)
external fun EdgeInsets_all(value)
external fun EdgeInsets_only({left, top, right, bottom})
external fun EdgeInsets_symmetric({vertical, horizontal})
external fun EdgeInsets_fromWindowPadding(padding, devicePixelRatio)
external fun EdgeInsetsDirectional_fromSTEB(start, top, end, bottom)
external fun EdgeInsetsDirectional_only({start, top, end, bottom})
external fun StrutStyle({fontFamily, fontFamilyFallback, fontSize, height, leading, fontWeight, fontStyle, forceStrutHeight})
external fun StrutStyle_fromTextStyle(textStyle, {fontFamily, fontFamilyFallback, fontSize, height, leading, fontWeight, fontStyle, forceStrutHeight, debugLabel, package})
external fun DoubleTapGestureRecognizer({debugOwner, kind})
external fun MultiTapGestureRecognizer({longTapDelay, debugOwner, kind})
external fun BoxConstraints({minWidth, maxWidth, minHeight, maxHeight})
external fun BoxConstraints_tight(size)
external fun BoxConstraints_tightFor({width, height})
external fun BoxConstraints_tightForFinite({width, height})
external fun BoxConstraints_loose(size)
external fun BoxConstraints_expand({width, height})
external fun CupertinoTabView({key, builder, navigatorKey, defaultTitle, routes, onGenerateRoute, onUnknownRoute, navigatorObservers, restorationScopeId})
external fun CupertinoTextField({key, controller, focusNode, padding, placeholder, placeholderStyle, prefix, prefixMode, suffix, suffixMode, clearButtonMode, keyboardType, textInputAction, textCapitalization, style, strutStyle, textAlign, textAlignVertical, readOnly, toolbarOptions, showCursor, autofocus, obscuringCharacter, obscureText, autocorrect, smartDashesType, smartQuotesType, enableSuggestions, maxLines, minLines, expands, maxLength, maxLengthEnforcement, onChanged, onEditingComplete, onSubmitted, inputFormatters, enabled, cursorWidth, cursorHeight, cursorRadius, cursorColor, selectionHeightStyle, selectionWidthStyle, keyboardAppearance, scrollPadding, dragStartBehavior, enableInteractiveSelection, selectionControls, onTap, scrollController, scrollPhysics, autofillHints, restorationId})
external fun CupertinoTextField_borderless({key, controller, focusNode, decoration, padding, placeholder, prefix, prefixMode, suffix, suffixMode, clearButtonMode, keyboardType, textInputAction, textCapitalization, style, strutStyle, textAlign, textAlignVertical, readOnly, toolbarOptions, showCursor, autofocus, obscuringCharacter, obscureText, autocorrect, smartDashesType, smartQuotesType, enableSuggestions, maxLines, minLines, expands, maxLength, maxLengthEnforcement, onChanged, onEditingComplete, onSubmitted, inputFormatters, enabled, cursorWidth, cursorHeight, cursorRadius, cursorColor, selectionHeightStyle, selectionWidthStyle, keyboardAppearance, scrollPadding, dragStartBehavior, enableInteractiveSelection, selectionControls, onTap, scrollController, scrollPhysics, autofillHints, restorationId})
external fun CupertinoFormRow({key, child, prefix, padding, helper, error})
external fun CupertinoTextSelectionToolbar({key, anchorAbove, anchorBelow, children})
external fun CupertinoTextSelectionToolbarButton({key, onPressed, child})
external fun CupertinoTextSelectionToolbarButton_text({key, onPressed, text})
external fun CupertinoSegmentedControl({key, children, onValueChanged, groupValue, unselectedColor, selectedColor, borderColor, pressedColor, padding})
external fun CupertinoActionSheet({key, title, message, actions, messageScrollController, actionScrollController, cancelButton})
external fun CupertinoActionSheetAction({key, onPressed, isDefaultAction, isDestructiveAction, child})
external fun CupertinoSlidingSegmentedControl({key, children, onValueChanged, groupValue, backgroundColor})
external fun CupertinoSearchTextField({key, controller, onChanged, onSubmitted, style, placeholder, placeholderStyle, decoration, backgroundColor, borderRadius, padding, itemColor, itemSize, prefixInsets, suffixInsets, suffixIcon, suffixMode, onSuffixTap, restorationId, focusNode})
external fun CupertinoButton({key, child, padding, color, disabledColor, minSize, pressedOpacity, borderRadius, alignment, onPressed})
external fun CupertinoButton_filled({key, child, padding, disabledColor, minSize, pressedOpacity, borderRadius, alignment, onPressed})
external fun CupertinoTabScaffold({key, tabBar, tabBuilder, controller, backgroundColor, resizeToAvoidBottomInset, restorationId})
external fun CupertinoAlertDialog({key, title, content, actions, scrollController, actionScrollController, insetAnimationDuration, insetAnimationCurve})
external fun CupertinoPopupSurface({key, isSurfacePainted, child})
external fun CupertinoDialogAction({key, onPressed, isDefaultAction, isDestructiveAction, textStyle, child})
external fun CupertinoTabBar({key, items, onTap, currentIndex, backgroundColor, activeColor, iconSize})
external fun CupertinoDatePicker({key, mode, onDateTimeChanged, initialDateTime, minimumDate, maximumDate, minimumYear, maximumYear, minuteInterval, use24hFormat, backgroundColor})
external fun CupertinoTimerPicker({key, mode, initialTimerDuration, minuteInterval, secondInterval, alignment, backgroundColor, onTimerDurationChanged})
external fun CupertinoSliverRefreshControl({key, onRefresh})
external fun CupertinoPicker({key, backgroundColor, offAxisFraction, useMagnifier, magnification, scrollController, itemExtent, onSelectedItemChanged, children, selectionOverlay, looping})
external fun CupertinoPicker_builder({key, backgroundColor, offAxisFraction, useMagnifier, magnification, scrollController, itemExtent, onSelectedItemChanged, itemBuilder, childCount, selectionOverlay})
external fun CupertinoPickerDefaultSelectionOverlay({key, background, capLeftEdge, capRightEdge})
external fun CupertinoContextMenu({key, actions, child, previewBuilder})
external fun CupertinoPageTransition({key, primaryRouteAnimation, secondaryRouteAnimation, child, linearTransition})
external fun CupertinoFullscreenDialogTransition({key, primaryRouteAnimation, secondaryRouteAnimation, child, linearTransition})
external fun CupertinoActivityIndicator({key, animating})
external fun CupertinoActivityIndicator_partiallyRevealed({key, progress})
external fun CupertinoSlider({key, value, onChanged, onChangeStart, onChangeEnd, min, max, divisions, activeColor, thumbColor})
external fun CupertinoPageScaffold({key, navigationBar, backgroundColor, resizeToAvoidBottomInset, child})
external fun CupertinoFormSection({key, children, header, footer, margin, backgroundColor, decoration, clipBehavior})
external fun CupertinoFormSection_insetGrouped({key, children, header, footer, backgroundColor, decoration, clipBehavior})
external fun CupertinoTextFormFieldRow({key, prefix, padding, controller, initialValue, focusNode, decoration, keyboardType, textCapitalization, textInputAction, style, strutStyle, textAlign, textAlignVertical, autofocus, readOnly, toolbarOptions, showCursor, obscuringCharacter, obscureText, autocorrect, smartDashesType, smartQuotesType, enableSuggestions, maxLines, minLines, expands, maxLength, onChanged, onTap, onEditingComplete, onFieldSubmitted, onSaved, validator, inputFormatters, enabled, cursorWidth, cursorHeight, cursorColor, keyboardAppearance, scrollPadding, enableInteractiveSelection, selectionControls, scrollPhysics, autofillHints, autovalidateMode, placeholder, placeholderStyle})
external fun CupertinoContextMenuAction({key, child, isDefaultAction, isDestructiveAction, onPressed, trailingIcon})
external fun CupertinoSwitch({key, value, onChanged, activeColor, trackColor, dragStartBehavior})
external fun CupertinoScrollbar({key, child, controller, isAlwaysShown, thickness, thicknessWhileDragging, radius, radiusWhileDragging, notificationPredicate})
external fun CupertinoApp({key, navigatorKey, home, theme, routes, initialRoute, onGenerateRoute, onGenerateInitialRoutes, onUnknownRoute, navigatorObservers, builder, title, onGenerateTitle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales, showPerformanceOverlay, checkerboardRasterCacheImages, checkerboardOffscreenLayers, showSemanticsDebugger, debugShowCheckedModeBanner, shortcuts, actions, restorationScopeId})
external fun CupertinoApp_router({key, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher, theme, builder, title, onGenerateTitle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales, showPerformanceOverlay, checkerboardRasterCacheImages, checkerboardOffscreenLayers, showSemanticsDebugger, debugShowCheckedModeBanner, shortcuts, actions, restorationScopeId})
external fun CupertinoNavigationBar({key, leading, automaticallyImplyLeading, automaticallyImplyMiddle, previousPageTitle, middle, trailing, backgroundColor, brightness, padding, transitionBetweenRoutes})
external fun CupertinoSliverNavigationBar({key, largeTitle, leading, automaticallyImplyLeading, automaticallyImplyTitle, previousPageTitle, middle, trailing, backgroundColor, brightness, padding, transitionBetweenRoutes, stretch})
external fun CupertinoNavigationBarBackButton({key, color, previousPageTitle, onPressed})
external fun CupertinoTheme({key, data, child})
external fun DayPicker({key, selectedDate, currentDate, onChanged, firstDate, lastDate, displayedMonth, selectableDayPredicate, dragStartBehavior})
external fun MonthPicker({key, selectedDate, onChanged, firstDate, lastDate, selectableDayPredicate, dragStartBehavior})
external fun DrawerHeader({key, decoration, margin, padding, duration, curve, child})
external fun MaterialButton({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, padding, visualDensity, shape, clipBehavior, focusNode, autofocus, materialTapTargetSize, animationDuration, minWidth, height, enableFeedback, child})
external fun GridTile({key, header, footer, child})
external fun Material({key, type, elevation, color, shadowColor, textStyle, borderRadius, shape, borderOnForeground, clipBehavior, animationDuration, child})
external fun ScaffoldMessenger({key, child})
external fun Scaffold({key, appBar, body, floatingActionButton, floatingActionButtonLocation, floatingActionButtonAnimator, persistentFooterButtons, drawer, onDrawerChanged, endDrawer, onEndDrawerChanged, bottomNavigationBar, bottomSheet, backgroundColor, resizeToAvoidBottomInset, primary, drawerDragStartBehavior, extendBody, extendBodyBehindAppBar, drawerScrimColor, drawerEdgeDragWidth, drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture, restorationId})
external fun ToggleButtonsThemeData({textStyle, constraints, color, selectedColor, disabledColor, fillColor, focusColor, highlightColor, hoverColor, splashColor, borderColor, selectedBorderColor, disabledBorderColor, borderRadius, borderWidth})
external fun BackButtonIcon({key})
external fun BackButton({key, color, onPressed})
external fun CloseButton({key, color, onPressed})
external fun TextSelectionToolbarTextButton({key, child, padding, onPressed})
external fun TextField({key, controller, focusNode, decoration, keyboardType, textInputAction, textCapitalization, style, strutStyle, textAlign, textAlignVertical, textDirection, readOnly, toolbarOptions, showCursor, autofocus, obscuringCharacter, obscureText, autocorrect, smartDashesType, smartQuotesType, enableSuggestions, maxLines, minLines, expands, maxLength, maxLengthEnforcement, onChanged, onEditingComplete, onSubmitted, onAppPrivateCommand, inputFormatters, enabled, cursorWidth, cursorHeight, cursorRadius, cursorColor, selectionHeightStyle, selectionWidthStyle, keyboardAppearance, scrollPadding, dragStartBehavior, enableInteractiveSelection, selectionControls, onTap, mouseCursor, buildCounter, scrollController, scrollPhysics, autofillHints, restorationId})
external fun AboutListTile({key, icon, child, applicationName, applicationVersion, applicationIcon, applicationLegalese, aboutBoxChildren, dense})
external fun AboutDialog({key, applicationName, applicationVersion, applicationIcon, applicationLegalese, children})
external fun LicensePage({key, applicationName, applicationVersion, applicationIcon, applicationLegalese})
external fun TextSelectionToolbar({key, anchorAbove, anchorBelow, children})
external fun RadioListTile({key, value, groupValue, onChanged, toggleable, activeColor, title, subtitle, isThreeLine, dense, secondary, selected, controlAffinity, autofocus, contentPadding, shape, tileColor, selectedTileColor})
external fun RefreshIndicator({key, child, displacement, onRefresh, color, backgroundColor, notificationPredicate, semanticsLabel, semanticsValue, strokeWidth, triggerMode})
external fun InputDatePickerFormField({key, initialDate, firstDate, lastDate, onDateSubmitted, onDateSaved, selectableDayPredicate, errorFormatText, errorInvalidText, fieldHintText, fieldLabelText, autofocus})
external fun GridTileBar({key, backgroundColor, leading, title, subtitle, trailing})
external fun SelectableText(data, {key, focusNode, style, strutStyle, textAlign, textDirection, textScaleFactor, showCursor, autofocus, toolbarOptions, minLines, maxLines, cursorWidth, cursorHeight, cursorRadius, cursorColor, dragStartBehavior, enableInteractiveSelection, selectionControls, onTap, scrollPhysics, textHeightBehavior, textWidthBasis, onSelectionChanged})
external fun SelectableText_rich(textSpan, {key, focusNode, style, strutStyle, textAlign, textDirection, textScaleFactor, showCursor, autofocus, toolbarOptions, minLines, maxLines, cursorWidth, cursorHeight, cursorRadius, cursorColor, dragStartBehavior, enableInteractiveSelection, selectionControls, onTap, scrollPhysics, textHeightBehavior, textWidthBasis, onSelectionChanged})
external fun CircleAvatar({key, child, backgroundColor, backgroundImage, foregroundImage, onBackgroundImageError, onForegroundImageError, foregroundColor, radius, minRadius, maxRadius})
external fun Ink({key, padding, color, decoration, width, height, child})
external fun Ink_image({key, padding, image, onImageError, colorFilter, fit, alignment, centerSlice, repeat, matchTextDirection, width, height, child})
external fun ButtonBar({key, alignment, mainAxisSize, buttonTextTheme, buttonMinWidth, buttonHeight, buttonPadding, buttonAlignedDropdown, layoutBehavior, overflowDirection, overflowButtonSpacing, children})
external fun MaterialColor(primary, swatch)
external fun SnackBarAction({key, textColor, disabledTextColor, label, onPressed})
external fun SnackBar({key, content, backgroundColor, elevation, margin, padding, width, shape, behavior, action, animation, onVisible})
external fun InputDecorator({key, decoration, baseStyle, textAlign, textAlignVertical, isFocused, isHovering, expands, isEmpty, child})
external fun ReorderableListView({key, children, onReorder, proxyDecorator, buildDefaultDragHandles, padding, header, scrollDirection, reverse, scrollController, primary, physics, shrinkWrap, anchor, cacheExtent, dragStartBehavior, keyboardDismissBehavior, restorationId, clipBehavior})
external fun ReorderableListView_builder({key, itemBuilder, itemCount, onReorder, proxyDecorator, buildDefaultDragHandles, padding, header, scrollDirection, reverse, scrollController, primary, physics, shrinkWrap, anchor, cacheExtent, dragStartBehavior, keyboardDismissBehavior, restorationId, clipBehavior})
external fun Card({key, color, shadowColor, elevation, shape, borderOnForeground, margin, clipBehavior, child, semanticContainer})
external fun RawMaterialButton({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textStyle, fillColor, focusColor, hoverColor, highlightColor, splashColor, elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, padding, visualDensity, constraints, shape, animationDuration, clipBehavior, focusNode, autofocus, materialTapTargetSize, child, enableFeedback})
external fun DataTable({key, columns, sortColumnIndex, sortAscending, onSelectAll, decoration, dataRowColor, dataRowHeight, dataTextStyle, headingRowColor, headingRowHeight, headingTextStyle, horizontalMargin, columnSpacing, showCheckboxColumn, showBottomBorder, dividerThickness, rows})
external fun TableRowInkWell({key, child, onTap, onDoubleTap, onLongPress, onHighlightChanged, overlayColor})
external fun DefaultTabController({key, length, initialIndex, child})
external fun NavigationRail({backgroundColor, extended, leading, trailing, destinations, selectedIndex, onDestinationSelected, elevation, groupAlignment, labelType, unselectedLabelTextStyle, selectedLabelTextStyle, unselectedIconTheme, selectedIconTheme, minWidth, minExtendedWidth})
external fun RaisedButton({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, padding, visualDensity, shape, clipBehavior, focusNode, autofocus, materialTapTargetSize, animationDuration, child})
external fun RaisedButton_icon({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, elevation, highlightElevation, disabledElevation, shape, clipBehavior, focusNode, autofocus, padding, materialTapTargetSize, animationDuration, icon, label})
external fun Dialog({key, backgroundColor, elevation, insetAnimationDuration, insetAnimationCurve, clipBehavior, shape, child})
external fun AlertDialog({key, title, titlePadding, titleTextStyle, content, contentPadding, contentTextStyle, actions, actionsPadding, actionsOverflowDirection, actionsOverflowButtonSpacing, buttonPadding, backgroundColor, elevation, semanticLabel, clipBehavior, shape, scrollable})
external fun SimpleDialogOption({key, onPressed, padding, child})
external fun SimpleDialog({key, title, titlePadding, titleTextStyle, children, contentPadding, backgroundColor, elevation, semanticLabel, clipBehavior, shape})
external fun InkResponse({key, child, onTap, onTapDown, onTapCancel, onDoubleTap, onLongPress, onHighlightChanged, onHover, mouseCursor, containedInkWell, highlightShape, radius, borderRadius, customBorder, focusColor, hoverColor, highlightColor, overlayColor, splashColor, splashFactory, enableFeedback, excludeFromSemantics, focusNode, canRequestFocus, onFocusChange, autofocus})
external fun InkWell({key, child, onTap, onDoubleTap, onLongPress, onTapDown, onTapCancel, onHighlightChanged, onHover, mouseCursor, focusColor, hoverColor, highlightColor, overlayColor, splashColor, splashFactory, radius, borderRadius, customBorder, enableFeedback, excludeFromSemantics, focusNode, canRequestFocus, onFocusChange, autofocus})
external fun Checkbox({key, value, tristate, onChanged, mouseCursor, activeColor, fillColor, checkColor, focusColor, hoverColor, overlayColor, splashRadius, materialTapTargetSize, visualDensity, focusNode, autofocus})
external fun Radio({key, value, groupValue, onChanged, mouseCursor, toggleable, activeColor, fillColor, focusColor, hoverColor, overlayColor, splashRadius, materialTapTargetSize, visualDensity, focusNode, autofocus})
external fun Stepper({key, steps, physics, type, currentStep, onStepTapped, onStepContinue, onStepCancel, controlsBuilder})
external fun CheckboxListTile({key, value, onChanged, activeColor, checkColor, tileColor, title, subtitle, isThreeLine, dense, secondary, selected, controlAffinity, autofocus, contentPadding, tristate, shape, selectedTileColor})
external fun Tab({key, text, icon, iconMargin, child})
external fun TabBar({key, tabs, controller, isScrollable, indicatorColor, automaticIndicatorColorAdjustment, indicatorWeight, indicatorPadding, indicator, indicatorSize, labelColor, labelStyle, labelPadding, unselectedLabelColor, unselectedLabelStyle, dragStartBehavior, overlayColor, mouseCursor, enableFeedback, onTap, physics})
external fun TabBarView({key, children, controller, physics, dragStartBehavior})
external fun TabPageSelectorIndicator({key, backgroundColor, borderColor, size})
external fun TabPageSelector({key, controller, indicatorSize, color, selectedColor})
external fun FloatingActionButton({key, child, tooltip, foregroundColor, backgroundColor, focusColor, hoverColor, splashColor, elevation, focusElevation, hoverElevation, highlightElevation, disabledElevation, onPressed, mouseCursor, mini, shape, clipBehavior, focusNode, autofocus, materialTapTargetSize, isExtended})
external fun FloatingActionButton_extended({key, tooltip, foregroundColor, backgroundColor, focusColor, hoverColor, elevation, focusElevation, hoverElevation, splashColor, highlightElevation, disabledElevation, onPressed, mouseCursor, shape, isExtended, materialTapTargetSize, clipBehavior, focusNode, autofocus, icon, label})
external fun RangeSlider({key, values, onChanged, onChangeStart, onChangeEnd, min, max, divisions, labels, activeColor, inactiveColor, semanticFormatterCallback})
external fun PopupMenuButton({key, itemBuilder, initialValue, onSelected, onCanceled, tooltip, elevation, padding, child, icon, iconSize, offset, enabled, shape, color, enableFeedback})
external fun ExpandIcon({key, isExpanded, size, onPressed, padding, color, disabledColor, expandedColor})
external fun AppBar({key, leading, automaticallyImplyLeading, title, actions, flexibleSpace, bottom, elevation, shadowColor, shape, backgroundColor, foregroundColor, brightness, iconTheme, actionsIconTheme, textTheme, primary, centerTitle, excludeHeaderSemantics, titleSpacing, toolbarOpacity, bottomOpacity, toolbarHeight, leadingWidth, backwardsCompatibility, toolbarTextStyle, titleTextStyle, systemOverlayStyle})
external fun SliverAppBar({key, leading, automaticallyImplyLeading, title, actions, flexibleSpace, bottom, elevation, shadowColor, forceElevated, backgroundColor, foregroundColor, brightness, iconTheme, actionsIconTheme, textTheme, primary, centerTitle, excludeHeaderSemantics, titleSpacing, collapsedHeight, expandedHeight, floating, pinned, snap, stretch, stretchTriggerOffset, onStretchTrigger, shape, toolbarHeight, leadingWidth, backwardsCompatibility, toolbarTextStyle, titleTextStyle, systemOverlayStyle})
external fun BottomAppBar({key, color, elevation, shape, clipBehavior, notchMargin, child})
external fun UserAccountsDrawerHeader({key, decoration, margin, currentAccountPicture, otherAccountsPictures, accountName, accountEmail, onDetailsPressed, arrowColor})
external fun MaterialBanner({key, content, contentTextStyle, actions, leading, backgroundColor, padding, leadingPadding, forceActionsBelow, overflowAlignment})
external fun CalendarDatePicker({key, initialDate, firstDate, lastDate, currentDate, onDateChanged, onDisplayedMonthChanged, initialCalendarMode, selectableDayPredicate})
external fun YearPicker({key, currentDate, firstDate, lastDate, initialDate, selectedDate, onChanged, dragStartBehavior})
external fun Chip({key, avatar, label, labelStyle, labelPadding, deleteIcon, onDeleted, deleteIconColor, useDeleteButtonTooltip, deleteButtonTooltipMessage, side, shape, clipBehavior, focusNode, autofocus, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor})
external fun InputChip({key, avatar, label, labelStyle, labelPadding, selected, isEnabled, onSelected, deleteIcon, onDeleted, deleteIconColor, useDeleteButtonTooltip, deleteButtonTooltipMessage, onPressed, pressElevation, disabledColor, selectedColor, tooltip, side, shape, clipBehavior, focusNode, autofocus, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, showCheckmark, checkmarkColor, avatarBorder})
external fun ChoiceChip({key, avatar, label, labelStyle, labelPadding, onSelected, pressElevation, selected, selectedColor, disabledColor, tooltip, side, shape, clipBehavior, focusNode, autofocus, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, avatarBorder})
external fun FilterChip({key, avatar, label, labelStyle, labelPadding, selected, onSelected, pressElevation, disabledColor, selectedColor, tooltip, side, shape, clipBehavior, focusNode, autofocus, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, showCheckmark, checkmarkColor, avatarBorder})
external fun ActionChip({key, avatar, label, labelStyle, labelPadding, onPressed, pressElevation, tooltip, side, shape, clipBehavior, focusNode, autofocus, backgroundColor, padding, visualDensity, materialTapTargetSize, elevation, shadowColor})
external fun RawChip({key, avatar, label, labelStyle, padding, visualDensity, labelPadding, deleteIcon, onDeleted, deleteIconColor, useDeleteButtonTooltip, deleteButtonTooltipMessage, onPressed, onSelected, pressElevation, tapEnabled, selected, isEnabled, disabledColor, selectedColor, tooltip, side, shape, clipBehavior, focusNode, autofocus, backgroundColor, materialTapTargetSize, elevation, shadowColor, selectedShadowColor, showCheckmark, checkmarkColor, avatarBorder})
external fun PaginatedDataTable({key, header, actions, columns, sortColumnIndex, sortAscending, onSelectAll, dataRowHeight, headingRowHeight, horizontalMargin, columnSpacing, showCheckboxColumn, initialFirstRowIndex, onPageChanged, rowsPerPage, availableRowsPerPage, onRowsPerPageChanged, dragStartBehavior, source})
external fun FlutterLogo({key, size, textColor, style, duration, curve})
external fun Tooltip({key, message, height, padding, margin, verticalOffset, preferBelow, excludeFromSemantics, decoration, textStyle, waitDuration, showDuration, child})
external fun SwitchListTile({key, value, onChanged, tileColor, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, inactiveThumbImage, title, subtitle, isThreeLine, dense, contentPadding, secondary, selected, autofocus, controlAffinity, shape, selectedTileColor})
external fun SwitchListTile_adaptive({key, value, onChanged, tileColor, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, inactiveThumbImage, title, subtitle, isThreeLine, dense, contentPadding, secondary, selected, autofocus, controlAffinity, shape, selectedTileColor})
external fun DropdownButton({key, items, selectedItemBuilder, value, hint, disabledHint, onChanged, onTap, elevation, style, underline, icon, iconDisabledColor, iconEnabledColor, iconSize, isDense, isExpanded, itemHeight, focusColor, focusNode, autofocus, dropdownColor})
external fun DropdownButtonFormField({key, items, selectedItemBuilder, value, hint, disabledHint, onChanged, onTap, elevation, style, icon, iconDisabledColor, iconEnabledColor, iconSize, isDense, isExpanded, itemHeight, focusColor, focusNode, autofocus, dropdownColor, decoration, onSaved, validator, autovalidateMode})
external fun TextFormField({key, controller, initialValue, focusNode, decoration, keyboardType, textCapitalization, textInputAction, style, strutStyle, textDirection, textAlign, textAlignVertical, autofocus, readOnly, toolbarOptions, showCursor, obscuringCharacter, obscureText, autocorrect, smartDashesType, smartQuotesType, enableSuggestions, maxLengthEnforcement, maxLines, minLines, expands, maxLength, onChanged, onTap, onEditingComplete, onFieldSubmitted, onSaved, validator, inputFormatters, enabled, cursorWidth, cursorHeight, cursorRadius, cursorColor, keyboardAppearance, scrollPadding, enableInteractiveSelection, selectionControls, buildCounter, scrollPhysics, autofillHints, autovalidateMode})
external fun Slider({key, value, onChanged, onChangeStart, onChangeEnd, min, max, divisions, label, activeColor, inactiveColor, mouseCursor, semanticFormatterCallback, focusNode, autofocus})
external fun Slider_adaptive({key, value, onChanged, onChangeStart, onChangeEnd, min, max, divisions, label, mouseCursor, activeColor, inactiveColor, semanticFormatterCallback, focusNode, autofocus})
external fun UnderlineTabIndicator({borderSide, insets})
external fun ButtonThemeData({textTheme, minWidth, height, padding, shape, layoutBehavior, alignedDropdown, buttonColor, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorScheme, materialTapTargetSize})
external fun ListTile({key, leading, title, subtitle, trailing, isThreeLine, dense, visualDensity, shape, contentPadding, enabled, onTap, onLongPress, mouseCursor, selected, focusColor, hoverColor, focusNode, autofocus, tileColor, selectedTileColor, enableFeedback, horizontalTitleGap, minVerticalPadding, minLeadingWidth})
external fun ExpansionTile({key, leading, title, subtitle, backgroundColor, onExpansionChanged, children, trailing, initiallyExpanded, maintainState, tilePadding, expandedCrossAxisAlignment, expandedAlignment, childrenPadding, collapsedBackgroundColor})
external fun BottomSheet({key, animationController, enableDrag, onDragStart, onDragEnd, backgroundColor, elevation, shape, clipBehavior, onClosing, builder})
external fun Divider({key, height, thickness, indent, endIndent, color})
external fun VerticalDivider({key, width, thickness, indent, endIndent, color})
external fun MaterialSlice({key, child, color})
external fun MaterialGap({key, size})
external fun MergeableMaterial({key, mainAxis, elevation, hasDividers, children, dividerColor})
external fun Drawer({key, elevation, child, semanticLabel})
external fun DrawerController({key, child, alignment, isDrawerOpen, drawerCallback, dragStartBehavior, scrimColor, edgeDragWidth, enableOpenDragGesture})
external fun AnimatedIcon({key, icon, progress, color, size, semanticLabel, textDirection})
external fun ThemeData({brightness, visualDensity, primarySwatch, primaryColor, primaryColorBrightness, primaryColorLight, primaryColorDark, accentColor, accentColorBrightness, canvasColor, shadowColor, scaffoldBackgroundColor, bottomAppBarColor, cardColor, dividerColor, focusColor, hoverColor, highlightColor, splashColor, splashFactory, selectedRowColor, unselectedWidgetColor, disabledColor, buttonColor, buttonTheme, toggleButtonsTheme, secondaryHeaderColor, backgroundColor, dialogBackgroundColor, indicatorColor, hintColor, errorColor, toggleableActiveColor, fontFamily, textTheme, primaryTextTheme, accentTextTheme, inputDecorationTheme, iconTheme, primaryIconTheme, accentIconTheme, sliderTheme, tabBarTheme, tooltipTheme, cardTheme, chipTheme, platform, materialTapTargetSize, applyElevationOverlayColor, pageTransitionsTheme, appBarTheme, scrollbarTheme, bottomAppBarTheme, colorScheme, dialogTheme, floatingActionButtonTheme, navigationRailTheme, typography, cupertinoOverrideTheme, snackBarTheme, bottomSheetTheme, popupMenuTheme, bannerTheme, dividerTheme, buttonBarTheme, bottomNavigationBarTheme, timePickerTheme, textButtonTheme, elevatedButtonTheme, outlinedButtonTheme, textSelectionTheme, dataTableTheme, checkboxTheme, radioTheme, switchTheme, fixTextFieldOutlineLabel})
external fun ThemeData_raw({visualDensity, primaryColor, primaryColorBrightness, primaryColorLight, primaryColorDark, canvasColor, shadowColor, accentColor, accentColorBrightness, scaffoldBackgroundColor, bottomAppBarColor, cardColor, dividerColor, focusColor, hoverColor, highlightColor, splashColor, splashFactory, selectedRowColor, unselectedWidgetColor, disabledColor, buttonTheme, buttonColor, toggleButtonsTheme, secondaryHeaderColor, textSelectionColor, cursorColor, textSelectionHandleColor, backgroundColor, dialogBackgroundColor, indicatorColor, hintColor, errorColor, toggleableActiveColor, textTheme, primaryTextTheme, accentTextTheme, inputDecorationTheme, iconTheme, primaryIconTheme, accentIconTheme, sliderTheme, tabBarTheme, tooltipTheme, cardTheme, chipTheme, platform, materialTapTargetSize, applyElevationOverlayColor, pageTransitionsTheme, appBarTheme, scrollbarTheme, bottomAppBarTheme, colorScheme, dialogTheme, floatingActionButtonTheme, navigationRailTheme, typography, cupertinoOverrideTheme, snackBarTheme, bottomSheetTheme, popupMenuTheme, bannerTheme, dividerTheme, buttonBarTheme, bottomNavigationBarTheme, timePickerTheme, textButtonTheme, elevatedButtonTheme, outlinedButtonTheme, textSelectionTheme, dataTableTheme, checkboxTheme, radioTheme, switchTheme, fixTextFieldOutlineLabel, useTextSelectionTheme})
external fun ThemeData_from({colorScheme, textTheme})
external fun ThemeData_light()
external fun ThemeData_dark()
external fun ThemeData_fallback()
external fun VisualDensity({horizontal, vertical})
external fun FlexibleSpaceBar({key, title, background, centerTitle, titlePadding, collapseMode, stretchModes})
external fun Switch({key, value, onChanged, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, onActiveThumbImageError, inactiveThumbImage, onInactiveThumbImageError, thumbColor, trackColor, materialTapTargetSize, dragStartBehavior, mouseCursor, focusColor, hoverColor, overlayColor, splashRadius, focusNode, autofocus})
external fun Switch_adaptive({key, value, onChanged, activeColor, activeTrackColor, inactiveThumbColor, inactiveTrackColor, activeThumbImage, onActiveThumbImageError, inactiveThumbImage, onInactiveThumbImageError, materialTapTargetSize, thumbColor, trackColor, dragStartBehavior, mouseCursor, focusColor, hoverColor, overlayColor, splashRadius, focusNode, autofocus})
external fun Scrollbar({key, child, controller, isAlwaysShown, showTrackOnHover, hoverThickness, thickness, radius, notificationPredicate})
external fun BottomNavigationBar({key, items, onTap, currentIndex, elevation, type, fixedColor, backgroundColor, iconSize, selectedItemColor, unselectedItemColor, selectedIconTheme, unselectedIconTheme, selectedFontSize, unselectedFontSize, selectedLabelStyle, unselectedLabelStyle, showSelectedLabels, showUnselectedLabels, mouseCursor})
external fun MaterialApp({key, navigatorKey, scaffoldMessengerKey, home, routes, initialRoute, onGenerateRoute, onGenerateInitialRoutes, onUnknownRoute, navigatorObservers, builder, title, onGenerateTitle, color, theme, darkTheme, highContrastTheme, highContrastDarkTheme, themeMode, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales, debugShowMaterialGrid, showPerformanceOverlay, checkerboardRasterCacheImages, checkerboardOffscreenLayers, showSemanticsDebugger, debugShowCheckedModeBanner, shortcuts, actions, restorationScopeId})
external fun MaterialApp_router({key, scaffoldMessengerKey, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher, builder, title, onGenerateTitle, color, theme, darkTheme, highContrastTheme, highContrastDarkTheme, themeMode, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales, debugShowMaterialGrid, showPerformanceOverlay, checkerboardRasterCacheImages, checkerboardOffscreenLayers, showSemanticsDebugger, debugShowCheckedModeBanner, shortcuts, actions, restorationScopeId})
external fun Autocomplete({key, optionsBuilder, displayStringForOption, onSelected, optionsViewBuilder})
external fun ExpansionPanelList({key, children, expansionCallback, animationDuration, dividerColor, elevation})
external fun ExpansionPanelList_radio({key, children, expansionCallback, animationDuration, initialOpenPanelValue, dividerColor, elevation})
external fun Theme({key, data, child})
external fun IconButton({key, iconSize, visualDensity, padding, alignment, splashRadius, icon, color, focusColor, hoverColor, highlightColor, splashColor, disabledColor, onPressed, mouseCursor, focusNode, autofocus, tooltip, enableFeedback, constraints})
external fun OutlineButton({key, onPressed, onLongPress, mouseCursor, textTheme, textColor, disabledTextColor, color, focusColor, hoverColor, highlightColor, splashColor, highlightElevation, borderSide, disabledBorderColor, highlightedBorderColor, padding, visualDensity, shape, clipBehavior, focusNode, autofocus, materialTapTargetSize, child})
external fun OutlineButton_icon({key, onPressed, onLongPress, mouseCursor, textTheme, textColor, disabledTextColor, color, focusColor, hoverColor, highlightColor, splashColor, highlightElevation, highlightedBorderColor, disabledBorderColor, borderSide, padding, visualDensity, shape, clipBehavior, focusNode, autofocus, materialTapTargetSize, icon, label})
external fun ToggleButtons({key, children, isSelected, onPressed, mouseCursor, textStyle, constraints, color, selectedColor, disabledColor, fillColor, focusColor, highlightColor, hoverColor, splashColor, focusNodes, renderBorder, borderColor, selectedBorderColor, disabledBorderColor, borderRadius, borderWidth, direction, verticalDirection})
external fun FlatButton({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, padding, visualDensity, shape, clipBehavior, focusNode, autofocus, materialTapTargetSize, child, height, minWidth})
external fun FlatButton_icon({key, onPressed, onLongPress, onHighlightChanged, mouseCursor, textTheme, textColor, disabledTextColor, color, disabledColor, focusColor, hoverColor, highlightColor, splashColor, colorBrightness, padding, shape, clipBehavior, focusNode, autofocus, materialTapTargetSize, icon, label, minWidth, height})
external fun NetworkAssetBundle(baseUrl)
external fun FilteringTextInputFormatter(filterPattern, {allow, replacementString})
external fun FilteringTextInputFormatter_allow(filterPattern, {replacementString})
external fun FilteringTextInputFormatter_deny(filterPattern, {replacementString})
external fun BlacklistingTextInputFormatter(blacklistedPattern, {replacementString})
external fun WhitelistingTextInputFormatter(whitelistedPattern)
external fun LengthLimitingTextInputFormatter(maxLength, {maxLengthEnforcement})
external fun SingleChildScrollView({key, scrollDirection, reverse, padding, primary, physics, controller, child, dragStartBehavior, clipBehavior, restorationId})
external fun AnimatedCrossFade({key, firstChild, secondChild, firstCurve, secondCurve, sizeCurve, alignment, crossFadeState, duration, reverseDuration})
external fun GridPaper({key, color, interval, divisions, subdivisions, child})
external fun FadeTransition({key, opacity, alwaysIncludeSemantics, child})
external fun SliverFadeTransition({key, opacity, alwaysIncludeSemantics, sliver})
external fun SliverPersistentHeader({key, delegate, pinned, floating})
external fun PageStorageKey(value)
external fun PageStorage({key, bucket, child})
external fun Router({key, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher})
external fun RootBackButtonDispatcher()
external fun ChildBackButtonDispatcher(parent)
external fun PlatformRouteInformationProvider({initialRouteInformation})
external fun Opacity({key, opacity, alwaysIncludeSemantics, child})
external fun ShaderMask({key, shaderCallback, blendMode, child})
external fun BackdropFilter({key, filter, child})
external fun CustomPaint({key, painter, foregroundPainter, size, isComplex, willChange, child})
external fun ClipRect({key, clipper, clipBehavior, child})
external fun ClipRRect({key, borderRadius, clipper, clipBehavior, child})
external fun ClipOval({key, clipper, clipBehavior, child})
external fun ClipPath({key, clipper, clipBehavior, child})
external fun PhysicalModel({key, shape, clipBehavior, borderRadius, elevation, color, shadowColor, child})
external fun PhysicalShape({key, clipper, clipBehavior, elevation, color, shadowColor, child})
external fun Transform({key, transform, origin, alignment, transformHitTests, child})
external fun Transform_rotate({key, angle, origin, alignment, transformHitTests, child})
external fun Transform_translate({key, offset, transformHitTests, child})
external fun Transform_scale({key, scale, origin, alignment, transformHitTests, child})
external fun CompositedTransformTarget({key, link, child})
external fun CompositedTransformFollower({key, link, showWhenUnlinked, offset, targetAnchor, followerAnchor, child})
external fun FittedBox({key, fit, alignment, clipBehavior, child})
external fun FractionalTranslation({key, translation, transformHitTests, child})
external fun RotatedBox({key, quarterTurns, child})
external fun Padding({key, padding, child})
external fun Align({key, alignment, widthFactor, heightFactor, child})
external fun Center({key, widthFactor, heightFactor, child})
external fun CustomSingleChildLayout({key, delegate, child})
external fun SizedBox({key, width, height, child})
external fun SizedBox_expand({key, child})
external fun SizedBox_shrink({key, child})
external fun SizedBox_fromSize({key, child, size})
external fun ConstrainedBox({key, constraints, child})
external fun UnconstrainedBox({key, child, textDirection, alignment, constrainedAxis, clipBehavior})
external fun FractionallySizedBox({key, alignment, widthFactor, heightFactor, child})
external fun LimitedBox({key, maxWidth, maxHeight, child})
external fun OverflowBox({key, alignment, minWidth, maxWidth, minHeight, maxHeight, child})
external fun SizedOverflowBox({key, size, alignment, child})
external fun Offstage({key, offstage, child})
external fun AspectRatio({key, aspectRatio, child})
external fun IntrinsicWidth({key, stepWidth, stepHeight, child})
external fun IntrinsicHeight({key, child})
external fun Baseline({key, baseline, baselineType, child})
external fun SliverToBoxAdapter({key, child})
external fun SliverPadding({key, padding, sliver})
external fun PositionedDirectional({key, start, top, end, bottom, width, height, child})
external fun Row({key, mainAxisAlignment, mainAxisSize, crossAxisAlignment, textDirection, verticalDirection, textBaseline, children})
external fun Column({key, mainAxisAlignment, mainAxisSize, crossAxisAlignment, textDirection, verticalDirection, textBaseline, children})
external fun Listener({key, onPointerDown, onPointerMove, onPointerUp, onPointerHover, onPointerCancel, onPointerSignal, behavior, child})
external fun MouseRegion({key, onEnter, onExit, onHover, cursor, opaque, child})
external fun RepaintBoundary({key, child})
external fun RepaintBoundary_wrap(child, childIndex)
external fun IgnorePointer({key, ignoring, ignoringSemantics, child})
external fun AbsorbPointer({key, absorbing, child, ignoringSemantics})
external fun MetaData({key, metaData, behavior, child})
external fun Semantics({key, child, container, explicitChildNodes, excludeSemantics, enabled, checked, selected, toggled, button, slider, link, header, textField, readOnly, focusable, focused, inMutuallyExclusiveGroup, obscured, multiline, scopesRoute, namesRoute, hidden, image, liveRegion, maxValueLength, currentValueLength, label, value, increasedValue, decreasedValue, hint, onTapHint, onLongPressHint, textDirection, sortKey, tagForChildren, onTap, onLongPress, onScrollLeft, onScrollRight, onScrollUp, onScrollDown, onIncrease, onDecrease, onCopy, onCut, onPaste, onDismiss, onMoveCursorForwardByCharacter, onMoveCursorBackwardByCharacter, onSetSelection, onDidGainAccessibilityFocus, onDidLoseAccessibilityFocus, customSemanticsActions})
external fun Semantics_fromProperties({key, child, container, explicitChildNodes, excludeSemantics, properties})
external fun MergeSemantics({key, child})
external fun BlockSemantics({key, blocking, child})
external fun ExcludeSemantics({key, excluding, child})
external fun IndexedSemantics({key, index, child})
external fun KeyedSubtree({key, child})
external fun KeyedSubtree_wrap(child, childIndex)
external fun Builder({key, builder})
external fun StatefulBuilder({key, builder})
external fun ColoredBox({color, child, key})
external fun GestureDetector({key, child, onTapDown, onTapUp, onTap, onTapCancel, onSecondaryTap, onSecondaryTapDown, onSecondaryTapUp, onSecondaryTapCancel, onTertiaryTapDown, onTertiaryTapUp, onTertiaryTapCancel, onDoubleTapDown, onDoubleTap, onDoubleTapCancel, onLongPress, onLongPressStart, onLongPressMoveUpdate, onLongPressUp, onLongPressEnd, onSecondaryLongPress, onSecondaryLongPressStart, onSecondaryLongPressMoveUpdate, onSecondaryLongPressUp, onSecondaryLongPressEnd, onVerticalDragDown, onVerticalDragStart, onVerticalDragUpdate, onVerticalDragEnd, onVerticalDragCancel, onHorizontalDragDown, onHorizontalDragStart, onHorizontalDragUpdate, onHorizontalDragEnd, onHorizontalDragCancel, onForcePressStart, onForcePressPeak, onForcePressUpdate, onForcePressEnd, onPanDown, onPanStart, onPanUpdate, onPanEnd, onPanCancel, onScaleStart, onScaleUpdate, onScaleEnd, behavior, excludeFromSemantics, dragStartBehavior})
external fun RawGestureDetector({key, child, gestures, behavior, excludeFromSemantics, semantics})
external fun FutureBuilder({key, future, initialData, builder})
external fun Text(data, {key, style, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior})
external fun Text_rich(textSpan, {key, style, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior})
external fun ActionListener({key, listener, action, child})
external fun Actions({key, dispatcher, actions, child})
external fun FocusableActionDetector({key, enabled, focusNode, autofocus, shortcuts, actions, onShowFocusHighlight, onShowHoverHighlight, onFocusChange, mouseCursor, child})
external fun Form({key, child, onWillPop, onChanged, autovalidateMode})
external fun FormField({key, builder, onSaved, validator, initialValue, enabled, autovalidateMode})
external fun Image({key, image, frameBuilder, loadingBuilder, errorBuilder, semanticLabel, excludeFromSemantics, width, height, color, colorBlendMode, fit, alignment, repeat, centerSlice, matchTextDirection, gaplessPlayback, isAntiAlias, filterQuality})
external fun Image_network(src, {key, scale, frameBuilder, loadingBuilder, errorBuilder, semanticLabel, excludeFromSemantics, width, height, color, colorBlendMode, fit, alignment, repeat, centerSlice, matchTextDirection, gaplessPlayback, filterQuality, isAntiAlias, headers, cacheWidth, cacheHeight})
external fun Image_file(file, {key, scale, frameBuilder, errorBuilder, semanticLabel, excludeFromSemantics, width, height, color, colorBlendMode, fit, alignment, repeat, centerSlice, matchTextDirection, gaplessPlayback, isAntiAlias, filterQuality, cacheWidth, cacheHeight})
external fun Image_asset(name, {key, bundle, frameBuilder, errorBuilder, semanticLabel, excludeFromSemantics, scale, width, height, color, colorBlendMode, fit, alignment, repeat, centerSlice, matchTextDirection, gaplessPlayback, isAntiAlias, package, filterQuality, cacheWidth, cacheHeight})
external fun Image_memory(bytes, {key, scale, frameBuilder, errorBuilder, semanticLabel, excludeFromSemantics, width, height, color, colorBlendMode, fit, alignment, repeat, centerSlice, matchTextDirection, gaplessPlayback, isAntiAlias, filterQuality, cacheWidth, cacheHeight})
external fun NestedScrollView({key, controller, scrollDirection, reverse, physics, headerSliverBuilder, body, dragStartBehavior, floatHeaderSlivers, clipBehavior, restorationId})
external fun SliverOverlapAbsorber({key, handle, sliver})
external fun SliverOverlapInjector({key, handle, sliver})
external fun NavigationToolbar({key, leading, middle, trailing, centerMiddle, middleSpacing})
external fun ReorderableList({key, itemBuilder, itemCount, onReorder, proxyDecorator, padding, scrollDirection, reverse, controller, primary, physics, shrinkWrap, anchor, cacheExtent, dragStartBehavior, keyboardDismissBehavior, restorationId, clipBehavior})
external fun SliverReorderableList({key, itemBuilder, itemCount, onReorder, proxyDecorator})
external fun ReorderableDragStartListener({key, child, index})
external fun ReorderableDelayedDragStartListener({key, child, index})
external fun Navigator({key, pages, onPopPage, initialRoute, onGenerateRoute, onUnknownRoute, transitionDelegate, reportsRouteUpdateToEngine, observers, restorationScopeId})
external fun PreferredSize({key, child, preferredSize})
external fun ValueListenableBuilder({key, valueListenable, builder, child})
external fun DraggableScrollableSheet({key, initialChildSize, minChildSize, maxChildSize, expand, builder})
external fun DraggableScrollableActuator({key, child})
external fun DecoratedBox({key, decoration, position, child})
external fun Container({key, alignment, padding, color, decoration, foregroundDecoration, width, height, constraints, margin, transform, transformAlignment, child, clipBehavior})
external fun ScrollAwareImageProvider({context, imageProvider})
external fun EditableText({key, controller, focusNode, readOnly, obscuringCharacter, obscureText, autocorrect, smartDashesType, smartQuotesType, enableSuggestions, style, strutStyle, cursorColor, backgroundCursorColor, textAlign, textDirection, locale, textScaleFactor, maxLines, minLines, expands, forceLine, textHeightBehavior, textWidthBasis, autofocus, showCursor, showSelectionHandles, selectionColor, selectionControls, keyboardType, textInputAction, textCapitalization, onChanged, onEditingComplete, onSubmitted, onAppPrivateCommand, onSelectionChanged, onSelectionHandleTapped, inputFormatters, mouseCursor, rendererIgnoresPointer, cursorWidth, cursorHeight, cursorRadius, cursorOpacityAnimates, cursorOffset, paintCursorAboveText, selectionHeightStyle, selectionWidthStyle, scrollPadding, keyboardAppearance, dragStartBehavior, enableInteractiveSelection, scrollController, scrollPhysics, autocorrectionTextRectColor, toolbarOptions, autofillHints, clipBehavior, restorationId})
external fun Placeholder({key, color, strokeWidth, fallbackWidth, fallbackHeight})
external fun Icon(icon, {key, size, color, semanticLabel, textDirection})
external fun ImageIcon(image, {key, size, color, semanticLabel})
external fun Scrollable({key, axisDirection, controller, physics, viewportBuilder, incrementCalculator, excludeFromSemantics, semanticChildCount, dragStartBehavior, restorationId})
external fun OrientationBuilder({key, builder})
external fun FocusNode({debugLabel, onKey, skipTraversal, canRequestFocus, descendantsAreFocusable})
external fun OrderedTraversalPolicy({secondary})
external fun FocusTraversalGroup({key, policy, descendantsAreFocusable, child})
external fun ColorFiltered({colorFilter, child, key})
external fun Title({key, title, color, child})
external fun AnimatedSwitcher({key, child, duration, reverseDuration, switchInCurve, switchOutCurve, layoutBuilder})
external fun DualTransitionBuilder({key, animation, forwardBuilder, reverseBuilder, child})
external fun Visibility({key, child, replacement, visible, maintainState, maintainAnimation, maintainSize, maintainSemantics, maintainInteractivity})
external fun SliverVisibility({key, sliver, replacementSliver, visible, maintainState, maintainAnimation, maintainSize, maintainSemantics, maintainInteractivity})
external fun AnnotatedRegion({key, child, value, sized})
external fun BannerPainter({message, textDirection, location, layoutDirection})
external fun Banner({key, child, message, textDirection, location, layoutDirection})
external fun CheckedModeBanner({key, child})
external fun NotificationListener({key, child, onNotification})
external fun PageView({key, scrollDirection, reverse, controller, physics, pageSnapping, onPageChanged, children, dragStartBehavior, allowImplicitScrolling, restorationId, clipBehavior})
external fun PageView_builder({key, scrollDirection, reverse, controller, physics, pageSnapping, onPageChanged, itemBuilder, itemCount, dragStartBehavior, allowImplicitScrolling, restorationId, clipBehavior})
external fun PageView_custom({key, scrollDirection, reverse, controller, physics, pageSnapping, onPageChanged, childrenDelegate, dragStartBehavior, allowImplicitScrolling, restorationId, clipBehavior})
external fun Shortcuts({key, manager, shortcuts, child, debugLabel})
external fun ImageFiltered({key, imageFilter, child})
external fun Draggable({key, child, feedback, data, axis, childWhenDragging, feedbackOffset, dragAnchor, affinity, maxSimultaneousDrags, onDragStarted, onDragUpdate, onDraggableCanceled, onDragEnd, onDragCompleted, ignoringFeedbackSemantics, rootOverlay})
external fun LongPressDraggable({key, child, feedback, data, axis, childWhenDragging, feedbackOffset, dragAnchor, maxSimultaneousDrags, onDragStarted, onDragUpdate, onDraggableCanceled, onDragEnd, onDragCompleted, hapticFeedbackOnStart, ignoringFeedbackSemantics})
external fun DragTarget({key, builder, onWillAccept, onAccept, onAcceptWithDetails, onLeave, onMove})
external fun GlowingOverscrollIndicator({key, showLeading, showTrailing, axisDirection, color, notificationPredicate, child})
external fun Hero({key, tag, createRectTween, flightShuttleBuilder, placeholderBuilder, transitionOnUserGestures, child})
external fun HeroMode({key, child, enabled})
external fun SizeChangedLayoutNotifier({key, child})
external fun WidgetInspector({key, child, selectButtonBuilder})
external fun AutomaticKeepAlive({key, child})
external fun UniqueKey()
external fun ObjectKey(value)
external fun LabeledGlobalKey(_debugLabel)
external fun GlobalObjectKey(value)
external fun SemanticsDebugger({key, child, labelStyle})
external fun TextSelectionGestureDetector({key, onTapDown, onForcePressStart, onForcePressEnd, onSecondaryTap, onSecondaryTapDown, onSingleTapUp, onSingleTapCancel, onSingleLongTapStart, onSingleLongTapMoveUpdate, onSingleLongTapEnd, onDoubleTapDown, onDragSelectionStart, onDragSelectionUpdate, onDragSelectionEnd, behavior, child})
external fun TickerMode({key, enabled, child})
external fun RestorationScope({key, restorationId, child})
external fun RootRestorationScope({key, restorationId, child})
external fun AnimatedList({key, itemBuilder, initialItemCount, scrollDirection, reverse, controller, primary, physics, shrinkWrap, padding})
external fun SliverAnimatedList({key, itemBuilder, initialItemCount})
external fun IconData(codePoint, {fontFamily, fontPackage, matchTextDirection})
external fun FadeInImage({key, placeholder, placeholderErrorBuilder, image, imageErrorBuilder, excludeFromSemantics, imageSemanticLabel, fadeOutDuration, fadeOutCurve, fadeInDuration, fadeInCurve, width, height, fit, alignment, repeat, matchTextDirection})
external fun FadeInImage_memoryNetwork({key, placeholder, placeholderErrorBuilder, image, imageErrorBuilder, placeholderScale, imageScale, excludeFromSemantics, imageSemanticLabel, fadeOutDuration, fadeOutCurve, fadeInDuration, fadeInCurve, width, height, fit, alignment, repeat, matchTextDirection, placeholderCacheWidth, placeholderCacheHeight, imageCacheWidth, imageCacheHeight})
external fun FadeInImage_assetNetwork({key, placeholder, placeholderErrorBuilder, image, imageErrorBuilder, bundle, placeholderScale, imageScale, excludeFromSemantics, imageSemanticLabel, fadeOutDuration, fadeOutCurve, fadeInDuration, fadeInCurve, width, height, fit, alignment, repeat, matchTextDirection, placeholderCacheWidth, placeholderCacheHeight, imageCacheWidth, imageCacheHeight})
external fun Focus({key, child, focusNode, autofocus, onFocusChange, onKey, debugLabel, canRequestFocus, descendantsAreFocusable, skipTraversal, includeSemantics})
external fun FocusScope({key, node, child, autofocus, onFocusChange, canRequestFocus, skipTraversal, onKey, debugLabel})
external fun ExcludeFocus({key, excluding, child})
external fun ModalBarrier({key, color, dismissible, semanticsLabel, barrierSemanticsDismissible})
external fun InteractiveViewer({key, clipBehavior, alignPanAxis, boundaryMargin, constrained, maxScale, minScale, onInteractionEnd, onInteractionStart, onInteractionUpdate, panEnabled, scaleEnabled, transformationController, child})
external fun AutofillGroup({key, child, onDisposeAction})
external fun ListWheelScrollView({key, controller, physics, diameterRatio, perspective, offAxisFraction, useMagnifier, magnification, overAndUnderCenterOpacity, itemExtent, squeeze, onSelectedItemChanged, renderChildrenOutsideViewport, clipBehavior, restorationId, children})
external fun ListWheelScrollView_useDelegate({key, controller, physics, diameterRatio, perspective, offAxisFraction, useMagnifier, magnification, overAndUnderCenterOpacity, itemExtent, squeeze, onSelectedItemChanged, renderChildrenOutsideViewport, clipBehavior, restorationId, childDelegate})
external fun SliverChildBuilderDelegate(builder, {findChildIndexCallback, childCount, addAutomaticKeepAlives, addRepaintBoundaries, addSemanticIndexes, semanticIndexOffset})
external fun SliverChildListDelegate(children, {addAutomaticKeepAlives, addRepaintBoundaries, addSemanticIndexes, semanticIndexOffset})
external fun SliverChildListDelegate_fixed(children, {addAutomaticKeepAlives, addRepaintBoundaries, addSemanticIndexes, semanticIndexOffset})
external fun SliverOpacity({key, opacity, alwaysIncludeSemantics, sliver})
external fun SliverIgnorePointer({key, ignoring, ignoringSemantics, sliver})
external fun SliverOffstage({key, offstage, sliver})
external fun Dismissible({key, child, background, secondaryBackground, confirmDismiss, onResize, onDismissed, direction, resizeDuration, dismissThresholds, movementDuration, crossAxisEndOffset, dragStartBehavior, behavior})
external fun WillPopScope({key, child, onWillPop})
external fun TextSelectionToolbarLayoutDelegate({anchorAbove, anchorBelow, fitsAbove})
external fun DesktopTextSelectionToolbarLayoutDelegate({anchor})
external fun SafeArea({key, left, top, right, bottom, minimum, maintainBottomViewPadding, child})
external fun SliverSafeArea({key, left, top, right, bottom, minimum, sliver})
external fun RawScrollbar({key, child, controller, isAlwaysShown, radius, thickness, thumbColor, pressDuration, notificationPredicate})
external fun AndroidView({key, viewType, onPlatformViewCreated, hitTestBehavior, layoutDirection, gestureRecognizers, creationParams, creationParamsCodec, clipBehavior})
external fun UiKitView({key, viewType, onPlatformViewCreated, hitTestBehavior, layoutDirection, creationParams, creationParamsCodec, gestureRecognizers})
external fun HtmlElementView({key, viewType})
external fun PlatformViewLink({key, surfaceFactory, onCreatePlatformView, viewType})
external fun WidgetsApp({key, navigatorKey, onGenerateRoute, onGenerateInitialRoutes, onUnknownRoute, navigatorObservers, initialRoute, pageRouteBuilder, home, routes, builder, title, onGenerateTitle, textStyle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales, showPerformanceOverlay, checkerboardRasterCacheImages, checkerboardOffscreenLayers, showSemanticsDebugger, debugShowWidgetInspector, debugShowCheckedModeBanner, inspectorSelectButtonBuilder, shortcuts, actions, restorationScopeId})
external fun WidgetsApp_router({key, routeInformationProvider, routeInformationParser, routerDelegate, backButtonDispatcher, builder, title, onGenerateTitle, textStyle, color, locale, localizationsDelegates, localeListResolutionCallback, localeResolutionCallback, supportedLocales, showPerformanceOverlay, checkerboardRasterCacheImages, checkerboardOffscreenLayers, showSemanticsDebugger, debugShowWidgetInspector, debugShowCheckedModeBanner, inspectorSelectButtonBuilder, shortcuts, actions, restorationScopeId})
external fun RawAutocomplete({key, optionsViewBuilder, optionsBuilder, fieldViewBuilder, focusNode, onSelected, textEditingController})
external fun Overlay({key, initialEntries, clipBehavior})
external fun RawKeyboardListener({key, focusNode, autofocus, includeSemantics, onKey, child})
external fun Spacer({key, flex})
external fun Localizations({key, locale, delegates, child})
external fun Localizations_override({key, context, locale, delegates, child})
external fun SliverFillViewport({key, delegate, viewportFraction, padEnds})
external fun SliverFillRemaining({key, child, hasScrollBody, fillOverscroll})
external fun AnimatedSize({key, child, alignment, curve, duration, reverseDuration, vsync, clipBehavior})
external fun TextDecoration_combine(decorations)
external fun Color(value)
external fun Color_fromARGB(a, r, g, b)
external fun Color_fromRGBO(r, g, b, opacity)
external fun Paint()
external fun Size(width, height)
external fun Size_copy(source)
external fun Size_square(dimension)
external fun Size_fromWidth(width)
external fun Size_fromHeight(height)
external fun Size_fromRadius(radius)
external fun Locale(_languageCode, _countryCode)
external fun Locale_fromSubtags({languageCode, scriptCode, countryCode})
		""";
		_interpreter.eval(_enumDefinitions);
		_interpreter.eval(_widgetDefinitions);

		_loadEnumValues();
		_interpreter.loadExternalFunctions(wrapperExternalFunctions);
	}
}