import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:hetu_script/hetu_script.dart';



const buildRefreshIndicator = null;
const defaultLayoutBuilder = null;
const shape = null;
const defaultGenerateInitialRoutes = null;
const defaultTransitionBuilder = null;
const defaultStringForOption = null;



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
		PhysicalModel ctor({key, clipBehavior = Clip.none, borderRadius, elevation = 0.0, color, shadowColor = const Color(0xFF000000), child}) => PhysicalModel(key: key, clipBehavior: clipBehavior, borderRadius: borderRadius, elevation: elevation, color: color, shadowColor: shadowColor, child: child);
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