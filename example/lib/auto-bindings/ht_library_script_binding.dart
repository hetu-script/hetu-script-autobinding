import 'package:hetu_script/hetu_script.dart';
import 'package:meta/meta.dart';
import 'ui/window.g.dart';
import 'ui/channel_buffers.g.dart';
import 'ui/plugins.g.dart';
import 'ui/text.g.dart';
import 'ui/pointer.g.dart';
import 'ui/painting.g.dart';
import 'ui/semantics.g.dart';
import 'ui/geometry.g.dart';
import 'ui/compositing.g.dart';
import 'ui/platform_dispatcher.g.dart';
import 'math/point.g.dart';
import 'math/rectangle.g.dart';
import 'async/async_error.g.dart';
import 'async/future.g.dart';
import 'async/deferred_load.g.dart';
import 'async/stream.g.dart';
import 'convert/base64.g.dart';
import 'convert/ascii.g.dart';
import 'convert/utf.g.dart';
import 'convert/json.g.dart';
import 'convert/latin1.g.dart';
import 'convert/html_escape.g.dart';
import 'convert/line_splitter.g.dart';
import 'io/process.g.dart';
import 'io/string_transformer.g.dart';
import 'io/secure_server_socket.g.dart';
import 'io/stdio.g.dart';
import 'io/file_system_entity.g.dart';
import 'io/file.g.dart';
import 'io/socket.g.dart';
import 'io/common.g.dart';
import 'io/platform.g.dart';
import 'io/secure_socket.g.dart';
import 'io/data_transformer.g.dart';
import 'core/duration.g.dart';
import 'core/date_time.g.dart';
import 'core/stopwatch.g.dart';
import 'core/uri.g.dart';
import 'core/string_buffer.g.dart';
import 'scheduler/ticker.g.dart';
import 'scheduler/priority.g.dart';
import 'scheduler/binding.g.dart';
import 'animation/tween.g.dart';
import 'animation/tween_sequence.g.dart';
import 'animation/animation_controller.g.dart';
import 'animation/animation.g.dart';
import 'animation/curves.g.dart';
import 'animation/animations.g.dart';
import 'foundation/node.g.dart';
import 'foundation/serialization.g.dart';
import 'foundation/licenses.g.dart';
import 'foundation/observer_list.g.dart';
import 'foundation/synchronous_future.g.dart';
import 'foundation/unicode.g.dart';
import 'foundation/diagnostics.g.dart';
import 'foundation/platform.g.dart';
import 'foundation/stack_frame.g.dart';
import 'foundation/change_notifier.g.dart';
import 'foundation/key.g.dart';
import 'semantics/semantics_event.g.dart';
import 'semantics/semantics_service.g.dart';
import 'semantics/semantics.g.dart';
import 'painting/borders.g.dart';
import 'painting/box_border.g.dart';
import 'painting/image_provider.g.dart';
import 'painting/box_shadow.g.dart';
import 'painting/border_radius.g.dart';
import 'painting/continuous_rectangle_border.g.dart';
import 'painting/colors.g.dart';
import 'painting/image_resolution.g.dart';
import 'painting/circle_border.g.dart';
import 'painting/beveled_rectangle_border.g.dart';
import 'painting/gradient.g.dart';
import 'painting/shader_warm_up.g.dart';
import 'painting/alignment.g.dart';
import 'painting/text_span.g.dart';
import 'painting/debug.g.dart';
import 'painting/flutter_logo.g.dart';
import 'painting/basic_types.g.dart';
import 'painting/box_decoration.g.dart';
import 'painting/inline_span.g.dart';
import 'painting/fractional_offset.g.dart';
import 'painting/box_fit.g.dart';
import 'painting/notched_shapes.g.dart';
import 'painting/matrix_utils.g.dart';
import 'painting/stadium_border.g.dart';
import 'painting/text_painter.g.dart';
import 'painting/rounded_rectangle_border.g.dart';
import 'painting/shape_decoration.g.dart';
import 'painting/edge_insets.g.dart';
import 'painting/decoration_image.g.dart';
import 'painting/image_stream.g.dart';
import 'painting/image_cache.g.dart';
import 'gestures/lsq_solver.g.dart';
import 'gestures/eager.g.dart';
import 'gestures/team.g.dart';
import 'gestures/multitap.g.dart';
import 'gestures/velocity_tracker.g.dart';
import 'gestures/hit_test.g.dart';
import 'gestures/tap.g.dart';
import 'gestures/arena.g.dart';
import 'gestures/recognizer.g.dart';
import 'gestures/multidrag.g.dart';
import 'gestures/converter.g.dart';
import 'gestures/force_press.g.dart';
import 'gestures/pointer_signal_resolver.g.dart';
import 'gestures/long_press.g.dart';
import 'gestures/drag_details.g.dart';
import 'gestures/scale.g.dart';
import 'gestures/resampler.g.dart';
import 'gestures/events.g.dart';
import 'gestures/monodrag.g.dart';
import 'gestures/binding.g.dart';
import 'gestures/pointer_router.g.dart';
import 'rendering/mouse_tracking.g.dart';
import 'rendering/custom_paint.g.dart';
import 'rendering/sliver_persistent_header.g.dart';
import 'rendering/list_wheel_viewport.g.dart';
import 'rendering/image.g.dart';
import 'rendering/texture.g.dart';
import 'rendering/wrap.g.dart';
import 'rendering/table_border.g.dart';
import 'rendering/proxy_box.g.dart';
import 'rendering/viewport_offset.g.dart';
import 'rendering/sliver_multi_box_adaptor.g.dart';
import 'rendering/flow.g.dart';
import 'rendering/object.g.dart';
import 'rendering/flex.g.dart';
import 'rendering/sliver_fixed_extent_list.g.dart';
import 'rendering/table.g.dart';
import 'rendering/rotated_box.g.dart';
import 'rendering/shifted_box.g.dart';
import 'rendering/layout_helper.g.dart';
import 'rendering/proxy_sliver.g.dart';
import 'rendering/performance_overlay.g.dart';
import 'rendering/view.g.dart';
import 'rendering/sliver_grid.g.dart';
import 'rendering/viewport.g.dart';
import 'rendering/sliver_list.g.dart';
import 'rendering/sliver_padding.g.dart';
import 'rendering/sliver.g.dart';
import 'rendering/error.g.dart';
import 'rendering/stack.g.dart';
import 'rendering/list_body.g.dart';
import 'rendering/tweens.g.dart';
import 'rendering/layer.g.dart';
import 'rendering/platform_view.g.dart';
import 'rendering/editable.g.dart';
import 'rendering/paragraph.g.dart';
import 'rendering/sliver_fill.g.dart';
import 'rendering/animated_size.g.dart';
import 'rendering/binding.g.dart';
import 'rendering/custom_layout.g.dart';
import 'rendering/box.g.dart';
import 'physics/gravity_simulation.g.dart';
import 'physics/spring_simulation.g.dart';
import 'physics/friction_simulation.g.dart';
import 'physics/clamped_simulation.g.dart';
import 'physics/tolerance.g.dart';
import 'cupertino/tab_view.g.dart';
import 'cupertino/text_theme.g.dart';
import 'cupertino/text_field.g.dart';
import 'cupertino/form_row.g.dart';
import 'cupertino/text_selection_toolbar.g.dart';
import 'cupertino/text_selection_toolbar_button.g.dart';
import 'cupertino/segmented_control.g.dart';
import 'cupertino/icon_theme_data.g.dart';
import 'cupertino/colors.g.dart';
import 'cupertino/action_sheet.g.dart';
import 'cupertino/sliding_segmented_control.g.dart';
import 'cupertino/search_field.g.dart';
import 'cupertino/button.g.dart';
import 'cupertino/tab_scaffold.g.dart';
import 'cupertino/dialog.g.dart';
import 'cupertino/bottom_tab_bar.g.dart';
import 'cupertino/date_picker.g.dart';
import 'cupertino/refresh.g.dart';
import 'cupertino/picker.g.dart';
import 'cupertino/context_menu.g.dart';
import 'cupertino/route.g.dart';
import 'cupertino/thumb_painter.g.dart';
import 'cupertino/activity_indicator.g.dart';
import 'cupertino/slider.g.dart';
import 'cupertino/page_scaffold.g.dart';
import 'cupertino/text_selection.g.dart';
import 'cupertino/interface_level.g.dart';
import 'cupertino/form_section.g.dart';
import 'cupertino/text_form_field_row.g.dart';
import 'cupertino/context_menu_action.g.dart';
import 'cupertino/switch.g.dart';
import 'cupertino/scrollbar.g.dart';
import 'cupertino/app.g.dart';
import 'cupertino/icons.g.dart';
import 'cupertino/nav_bar.g.dart';
import 'cupertino/theme.g.dart';
import 'cupertino/localizations.g.dart';
import 'material/date_picker_deprecated.g.dart';
import 'material/text_button_theme.g.dart';
import 'material/drawer_header.g.dart';
import 'material/material_button.g.dart';
import 'material/grid_tile.g.dart';
import 'material/material.g.dart';
import 'material/text_theme.g.dart';
import 'material/ink_ripple.g.dart';
import 'material/elevated_button_theme.g.dart';
import 'material/banner_theme.g.dart';
import 'material/scaffold.g.dart';
import 'material/feedback.g.dart';
import 'material/switch_theme.g.dart';
import 'material/toggle_buttons_theme.g.dart';
import 'material/back_button.g.dart';
import 'material/text_selection_toolbar_text_button.g.dart';
import 'material/text_field.g.dart';
import 'material/navigation_rail_theme.g.dart';
import 'material/about.g.dart';
import 'material/time_picker_theme.g.dart';
import 'material/text_selection_toolbar.g.dart';
import 'material/text_selection_theme.g.dart';
import 'material/radio_list_tile.g.dart';
import 'material/refresh_indicator.g.dart';
import 'material/input_date_picker_form_field.g.dart';
import 'material/bottom_app_bar_theme.g.dart';
import 'material/tab_bar_theme.g.dart';
import 'material/outlined_button_theme.g.dart';
import 'material/grid_tile_bar.g.dart';
import 'material/elevation_overlay.g.dart';
import 'material/selectable_text.g.dart';
import 'material/circle_avatar.g.dart';
import 'material/ink_decoration.g.dart';
import 'material/button_bar.g.dart';
import 'material/page_transitions_theme.g.dart';
import 'material/app_bar_theme.g.dart';
import 'material/page.g.dart';
import 'material/colors.g.dart';
import 'material/snack_bar.g.dart';
import 'material/input_decorator.g.dart';
import 'material/reorderable_list.g.dart';
import 'material/color_scheme.g.dart';
import 'material/time.g.dart';
import 'material/card.g.dart';
import 'material/button.g.dart';
import 'material/popup_menu_theme.g.dart';
import 'material/data_table.g.dart';
import 'material/tab_controller.g.dart';
import 'material/navigation_rail.g.dart';
import 'material/tooltip_theme.g.dart';
import 'material/text_button.g.dart';
import 'material/raised_button.g.dart';
import 'material/dialog.g.dart';
import 'material/ink_well.g.dart';
import 'material/checkbox.g.dart';
import 'material/time_picker.g.dart';
import 'material/radio.g.dart';
import 'material/stepper.g.dart';
import 'material/checkbox_list_tile.g.dart';
import 'material/radio_theme.g.dart';
import 'material/tabs.g.dart';
import 'material/bottom_navigation_bar_theme.g.dart';
import 'material/floating_action_button.g.dart';
import 'material/checkbox_theme.g.dart';
import 'material/range_slider.g.dart';
import 'material/scrollbar_theme.g.dart';
import 'material/ink_highlight.g.dart';
import 'material/popup_menu.g.dart';
import 'material/expand_icon.g.dart';
import 'material/app_bar.g.dart';
import 'material/bottom_app_bar.g.dart';
import 'material/user_accounts_drawer_header.g.dart';
import 'material/banner.g.dart';
import 'material/calendar_date_picker.g.dart';
import 'material/input_border.g.dart';
import 'material/chip.g.dart';
import 'material/dialog_theme.g.dart';
import 'material/paginated_data_table.g.dart';
import 'material/material_state.g.dart';
import 'material/floating_action_button_theme.g.dart';
import 'material/flutter_logo.g.dart';
import 'material/card_theme.g.dart';
import 'material/bottom_sheet_theme.g.dart';
import 'material/tooltip.g.dart';
import 'material/elevated_button.g.dart';
import 'material/switch_list_tile.g.dart';
import 'material/dropdown.g.dart';
import 'material/text_form_field.g.dart';
import 'material/slider.g.dart';
import 'material/tab_indicator.g.dart';
import 'material/button_theme.g.dart';
import 'material/arc.g.dart';
import 'material/progress_indicator.g.dart';
import 'material/list_tile.g.dart';
import 'material/expansion_tile.g.dart';
import 'material/bottom_sheet.g.dart';
import 'material/text_selection.g.dart';
import 'material/divider_theme.g.dart';
import 'material/data_table_theme.g.dart';
import 'material/material_localizations.g.dart';
import 'material/typography.g.dart';
import 'material/outlined_button.g.dart';
import 'material/divider.g.dart';
import 'material/slider_theme.g.dart';
import 'material/chip_theme.g.dart';
import 'material/mergeable_material.g.dart';
import 'material/drawer.g.dart';
import 'material/date.g.dart';
import 'material/snack_bar_theme.g.dart';
import 'animated_icons/animated_icons.g.dart';
import 'material/theme_data.g.dart';
import 'material/flexible_space_bar.g.dart';
import 'material/switch.g.dart';
import 'material/scrollbar.g.dart';
import 'material/button_style.g.dart';
import 'material/bottom_navigation_bar.g.dart';
import 'material/app.g.dart';
import 'material/icons.g.dart';
import 'material/autocomplete.g.dart';
import 'material/ink_splash.g.dart';
import 'material/expansion_panel.g.dart';
import 'material/button_bar_theme.g.dart';
import 'material/theme.g.dart';
import 'material/icon_button.g.dart';
import 'material/outline_button.g.dart';
import 'material/toggle_buttons.g.dart';
import 'material/flat_button.g.dart';
import 'services/raw_keyboard_linux.g.dart';
import 'services/platform_channel.g.dart';
import 'services/keyboard_key.g.dart';
import 'services/raw_keyboard_android.g.dart';
import 'services/raw_keyboard_web.g.dart';
import 'services/text_editing.g.dart';
import 'services/platform_messages.g.dart';
import 'services/raw_keyboard_ios.g.dart';
import 'services/system_sound.g.dart';
import 'services/system_navigator.g.dart';
import 'services/haptic_feedback.g.dart';
import 'services/clipboard.g.dart';
import 'services/font_loader.g.dart';
import 'services/text_input.g.dart';
import 'services/asset_bundle.g.dart';
import 'services/text_formatter.g.dart';
import 'services/raw_keyboard_macos.g.dart';
import 'services/system_chrome.g.dart';
import 'services/system_channels.g.dart';
import 'services/raw_keyboard_fuchsia.g.dart';
import 'services/raw_keyboard_windows.g.dart';
import 'services/raw_keyboard.g.dart';
import 'services/platform_views.g.dart';
import 'services/restoration.g.dart';
import 'services/message_codecs.g.dart';
import 'services/autofill.g.dart';
import 'services/message_codec.g.dart';
import 'services/deferred_component.g.dart';
import 'widgets/single_child_scroll_view.g.dart';
import 'widgets/implicit_animations.g.dart';
import 'widgets/animated_cross_fade.g.dart';
import 'widgets/grid_paper.g.dart';
import 'widgets/tween_animation_builder.g.dart';
import 'widgets/widget_span.g.dart';
import 'widgets/scroll_metrics.g.dart';
import 'widgets/transitions.g.dart';
import 'widgets/sliver_persistent_header.g.dart';
import 'widgets/page_storage.g.dart';
import 'widgets/router.g.dart';
import 'widgets/routes.g.dart';
import 'widgets/basic.g.dart';
import 'widgets/disposable_build_context.g.dart';
import 'widgets/gesture_detector.g.dart';
import 'widgets/restoration_properties.g.dart';
import 'widgets/async.g.dart';
import 'widgets/text.g.dart';
import 'widgets/actions.g.dart';
import 'widgets/form.g.dart';
import 'widgets/image.g.dart';
import 'widgets/icon_theme_data.g.dart';
import 'widgets/texture.g.dart';
import 'widgets/nested_scroll_view.g.dart';
import 'widgets/navigation_toolbar.g.dart';
import 'widgets/reorderable_list.g.dart';
import 'widgets/pages.g.dart';
import 'widgets/scroll_controller.g.dart';
import 'widgets/sliver_layout_builder.g.dart';
import 'widgets/navigator.g.dart';
import 'widgets/preferred_size.g.dart';
import 'widgets/value_listenable_builder.g.dart';
import 'widgets/media_query.g.dart';
import 'widgets/draggable_scrollable_sheet.g.dart';
import 'widgets/container.g.dart';
import 'widgets/scroll_aware_image_provider.g.dart';
import 'widgets/editable_text.g.dart';
import 'widgets/placeholder.g.dart';
import 'widgets/icon.g.dart';
import 'widgets/bottom_navigation_bar_item.g.dart';
import 'widgets/layout_builder.g.dart';
import 'widgets/primary_scroll_controller.g.dart';
import 'widgets/scroll_position.g.dart';
import 'widgets/image_icon.g.dart';
import 'widgets/scrollable.g.dart';
import 'widgets/orientation_builder.g.dart';
import 'widgets/focus_manager.g.dart';
import 'widgets/focus_traversal.g.dart';
import 'widgets/color_filter.g.dart';
import 'widgets/title.g.dart';
import 'widgets/animated_switcher.g.dart';
import 'widgets/sliver_prototype_extent_list.g.dart';
import 'widgets/table.g.dart';
import 'widgets/inherited_model.g.dart';
import 'widgets/dual_transition_builder.g.dart';
import 'widgets/visibility.g.dart';
import 'widgets/annotated_region.g.dart';
import 'widgets/banner.g.dart';
import 'widgets/notification_listener.g.dart';
import 'widgets/performance_overlay.g.dart';
import 'widgets/page_view.g.dart';
import 'widgets/shortcuts.g.dart';
import 'widgets/image_filter.g.dart';
import 'widgets/drag_target.g.dart';
import 'widgets/overscroll_indicator.g.dart';
import 'widgets/heroes.g.dart';
import 'widgets/size_changed_layout_notifier.g.dart';
import 'widgets/widget_inspector.g.dart';
import 'widgets/viewport.g.dart';
import 'widgets/automatic_keep_alive.g.dart';
import 'widgets/framework.g.dart';
import 'widgets/scroll_configuration.g.dart';
import 'widgets/icon_theme.g.dart';
import 'widgets/semantics_debugger.g.dart';
import 'widgets/text_selection.g.dart';
import 'widgets/ticker_provider.g.dart';
import 'widgets/restoration.g.dart';
import 'widgets/animated_list.g.dart';
import 'widgets/scroll_physics.g.dart';
import 'widgets/icon_data.g.dart';
import 'widgets/overflow_bar.g.dart';
import 'widgets/fade_in_image.g.dart';
import 'widgets/focus_scope.g.dart';
import 'widgets/modal_barrier.g.dart';
import 'widgets/interactive_viewer.g.dart';
import 'widgets/autofill.g.dart';
import 'widgets/scroll_activity.g.dart';
import 'widgets/list_wheel_scroll_view.g.dart';
import 'widgets/sliver.g.dart';
import 'widgets/dismissible.g.dart';
import 'widgets/scroll_position_with_single_context.g.dart';
import 'widgets/will_pop_scope.g.dart';
import 'widgets/text_selection_toolbar_layout_delegate.g.dart';
import 'widgets/desktop_text_selection_toolbar_layout_delegate.g.dart';
import 'widgets/safe_area.g.dart';
import 'widgets/scrollbar.g.dart';
import 'widgets/platform_view.g.dart';
import 'widgets/app.g.dart';
import 'widgets/autocomplete.g.dart';
import 'widgets/scroll_notification.g.dart';
import 'widgets/overlay.g.dart';
import 'widgets/scroll_simulation.g.dart';
import 'widgets/raw_keyboard_listener.g.dart';
import 'widgets/spacer.g.dart';
import 'widgets/scroll_view.g.dart';
import 'widgets/localizations.g.dart';
import 'widgets/sliver_fill.g.dart';
import 'widgets/animated_size.g.dart';
import 'widgets/binding.g.dart';

class HetuLibraryScriptBinding {
  @mustCallSuper
  void loadAutoBinding(HT_Interpreter interpreter) {
    var bindings = {
      'Brightness' : BrightnessClassBinding(),
      'ChannelBuffers' : ChannelBuffersClassBinding(),
      'CallbackHandle' : CallbackHandleClassBinding(),
      'FontWeight' : FontWeightClassBinding(),
      'FontFeature' : FontFeatureClassBinding(),
      'TextDecoration' : TextDecorationClassBinding(),
      'TextHeightBehavior' : TextHeightBehaviorClassBinding(),
      'ParagraphStyle' : ParagraphStyleClassBinding(),
      'TextBox' : TextBoxClassBinding(),
      'TextPosition' : TextPositionClassBinding(),
      'TextRange' : TextRangeClassBinding(),
      'ParagraphConstraints' : ParagraphConstraintsClassBinding(),
      'LineMetrics' : LineMetricsClassBinding(),
      'ParagraphBuilder' : ParagraphBuilderClassBinding(),
      'FontStyle' : FontStyleClassBinding(),
      'TextAlign' : TextAlignClassBinding(),
      'TextBaseline' : TextBaselineClassBinding(),
      'TextDecorationStyle' : TextDecorationStyleClassBinding(),
      'TextDirection' : TextDirectionClassBinding(),
      'TextAffinity' : TextAffinityClassBinding(),
      'BoxHeightStyle' : BoxHeightStyleClassBinding(),
      'BoxWidthStyle' : BoxWidthStyleClassBinding(),
      'PlaceholderAlignment' : PlaceholderAlignmentClassBinding(),
      'PointerData' : PointerDataClassBinding(),
      'PointerDataPacket' : PointerDataPacketClassBinding(),
      'PointerChange' : PointerChangeClassBinding(),
      'PointerDeviceKind' : PointerDeviceKindClassBinding(),
      'PointerSignalKind' : PointerSignalKindClassBinding(),
      'Color' : ColorClassBinding(),
      'Paint' : PaintClassBinding(),
      'Path' : PathClassBinding(),
      'Tangent' : TangentClassBinding(),
      'MaskFilter' : MaskFilterClassBinding(),
      'ColorFilter' : ColorFilterClassBinding(),
      'Gradient' : GradientClassBinding(),
      'ImageShader' : ImageShaderClassBinding(),
      'Vertices' : VerticesClassBinding(),
      'Canvas' : CanvasClassBinding(),
      'PictureRecorder' : PictureRecorderClassBinding(),
      'Shadow' : ShadowClassBinding(),
      'ImmutableBuffer' : ImmutableBufferClassBinding(),
      'ImageDescriptor' : ImageDescriptorClassBinding(),
      'BlendMode' : BlendModeClassBinding(),
      'FilterQuality' : FilterQualityClassBinding(),
      'StrokeCap' : StrokeCapClassBinding(),
      'StrokeJoin' : StrokeJoinClassBinding(),
      'PaintingStyle' : PaintingStyleClassBinding(),
      'Clip' : ClipClassBinding(),
      'ImageByteFormat' : ImageByteFormatClassBinding(),
      'PixelFormat' : PixelFormatClassBinding(),
      'PathFillType' : PathFillTypeClassBinding(),
      'PathOperation' : PathOperationClassBinding(),
      'BlurStyle' : BlurStyleClassBinding(),
      'TileMode' : TileModeClassBinding(),
      'VertexMode' : VertexModeClassBinding(),
      'PointMode' : PointModeClassBinding(),
      'ClipOp' : ClipOpClassBinding(),
      'SemanticsAction' : SemanticsActionClassBinding(),
      'SemanticsFlag' : SemanticsFlagClassBinding(),
      'SemanticsUpdateBuilder' : SemanticsUpdateBuilderClassBinding(),
      'Offset' : OffsetClassBinding(),
      'Size' : SizeClassBinding(),
      'Rect' : RectClassBinding(),
      'Radius' : RadiusClassBinding(),
      'RRect' : RRectClassBinding(),
      'RSTransform' : RSTransformClassBinding(),
      'SceneBuilder' : SceneBuilderClassBinding(),
      'SceneHost' : SceneHostClassBinding(),
      'PlatformDispatcher' : PlatformDispatcherClassBinding(),
      'WindowPadding' : WindowPaddingClassBinding(),
      'Locale' : LocaleClassBinding(),
      'FramePhase' : FramePhaseClassBinding(),
      'AppLifecycleState' : AppLifecycleStateClassBinding(),
      'Point' : PointClassBinding(),
      'Rectangle' : RectangleClassBinding(),
      'MutableRectangle' : MutableRectangleClassBinding(),
      'AsyncError' : AsyncErrorClassBinding(),
      'TimeoutException' : TimeoutExceptionClassBinding(),
      'DeferredLibrary' : DeferredLibraryClassBinding(),
      'DeferredLoadException' : DeferredLoadExceptionClassBinding(),
      'StreamView' : StreamViewClassBinding(),
      'Base64Codec' : Base64CodecClassBinding(),
      'Base64Encoder' : Base64EncoderClassBinding(),
      'Base64Decoder' : Base64DecoderClassBinding(),
      'AsciiCodec' : AsciiCodecClassBinding(),
      'AsciiEncoder' : AsciiEncoderClassBinding(),
      'AsciiDecoder' : AsciiDecoderClassBinding(),
      'Utf8Codec' : Utf8CodecClassBinding(),
      'Utf8Encoder' : Utf8EncoderClassBinding(),
      'Utf8Decoder' : Utf8DecoderClassBinding(),
      'JsonUnsupportedObjectError' : JsonUnsupportedObjectErrorClassBinding(),
      'JsonCyclicError' : JsonCyclicErrorClassBinding(),
      'JsonCodec' : JsonCodecClassBinding(),
      'JsonEncoder' : JsonEncoderClassBinding(),
      'JsonUtf8Encoder' : JsonUtf8EncoderClassBinding(),
      'JsonDecoder' : JsonDecoderClassBinding(),
      'Latin1Codec' : Latin1CodecClassBinding(),
      'Latin1Encoder' : Latin1EncoderClassBinding(),
      'Latin1Decoder' : Latin1DecoderClassBinding(),
      'HtmlEscapeMode' : HtmlEscapeModeClassBinding(),
      'HtmlEscape' : HtmlEscapeClassBinding(),
      'LineSplitter' : LineSplitterClassBinding(),
      'ProcessInfo' : ProcessInfoClassBinding(),
      'ProcessStartMode' : ProcessStartModeClassBinding(),
      'ProcessResult' : ProcessResultClassBinding(),
      'ProcessSignal' : ProcessSignalClassBinding(),
      'SignalException' : SignalExceptionClassBinding(),
      'ProcessException' : ProcessExceptionClassBinding(),
      'SystemEncoding' : SystemEncodingClassBinding(),
      'SecureServerSocket' : SecureServerSocketClassBinding(),
      'RawSecureServerSocket' : RawSecureServerSocketClassBinding(),
      'StdoutException' : StdoutExceptionClassBinding(),
      'StdinException' : StdinExceptionClassBinding(),
      'StdioType' : StdioTypeClassBinding(),
      'FileSystemEntityType' : FileSystemEntityTypeClassBinding(),
      'FileStat' : FileStatClassBinding(),
      'FileSystemEvent' : FileSystemEventClassBinding(),
      'FileMode' : FileModeClassBinding(),
      'FileLock' : FileLockClassBinding(),
      'FileSystemException' : FileSystemExceptionClassBinding(),
      'InternetAddressType' : InternetAddressTypeClassBinding(),
      'SocketDirection' : SocketDirectionClassBinding(),
      'SocketOption' : SocketOptionClassBinding(),
      'RawSocketOption' : RawSocketOptionClassBinding(),
      'RawSocketEvent' : RawSocketEventClassBinding(),
      'Datagram' : DatagramClassBinding(),
      'SocketException' : SocketExceptionClassBinding(),
      'OSError' : OSErrorClassBinding(),
      'Platform' : PlatformClassBinding(),
      'TlsException' : TlsExceptionClassBinding(),
      'HandshakeException' : HandshakeExceptionClassBinding(),
      'CertificateException' : CertificateExceptionClassBinding(),
      'ZLibCodec' : ZLibCodecClassBinding(),
      'GZipCodec' : GZipCodecClassBinding(),
      'ZLibEncoder' : ZLibEncoderClassBinding(),
      'ZLibDecoder' : ZLibDecoderClassBinding(),
      'Duration' : DurationClassBinding(),
      'DateTime' : DateTimeClassBinding(),
      'Stopwatch' : StopwatchClassBinding(),
      'UriData' : UriDataClassBinding(),
      'StringBuffer' : StringBufferClassBinding(),
      'Ticker' : TickerClassBinding(),
      'TickerCanceled' : TickerCanceledClassBinding(),
      'Priority' : PriorityClassBinding(),
      'SchedulerPhase' : SchedulerPhaseClassBinding(),
      'Tween' : TweenClassBinding(),
      'ReverseTween' : ReverseTweenClassBinding(),
      'ColorTween' : ColorTweenClassBinding(),
      'SizeTween' : SizeTweenClassBinding(),
      'RectTween' : RectTweenClassBinding(),
      'IntTween' : IntTweenClassBinding(),
      'StepTween' : StepTweenClassBinding(),
      'ConstantTween' : ConstantTweenClassBinding(),
      'CurveTween' : CurveTweenClassBinding(),
      'TweenSequence' : TweenSequenceClassBinding(),
      'FlippedTweenSequence' : FlippedTweenSequenceClassBinding(),
      'TweenSequenceItem' : TweenSequenceItemClassBinding(),
      'AnimationController' : AnimationControllerClassBinding(),
      'AnimationBehavior' : AnimationBehaviorClassBinding(),
      'AnimationStatus' : AnimationStatusClassBinding(),
      'SawTooth' : SawToothClassBinding(),
      'Interval' : IntervalClassBinding(),
      'Threshold' : ThresholdClassBinding(),
      'Cubic' : CubicClassBinding(),
      'Curve2DSample' : Curve2DSampleClassBinding(),
      'CatmullRomSpline' : CatmullRomSplineClassBinding(),
      'CatmullRomCurve' : CatmullRomCurveClassBinding(),
      'FlippedCurve' : FlippedCurveClassBinding(),
      'ElasticInCurve' : ElasticInCurveClassBinding(),
      'ElasticOutCurve' : ElasticOutCurveClassBinding(),
      'ElasticInOutCurve' : ElasticInOutCurveClassBinding(),
      'Curves' : CurvesClassBinding(),
      'AlwaysStoppedAnimation' : AlwaysStoppedAnimationClassBinding(),
      'ProxyAnimation' : ProxyAnimationClassBinding(),
      'ReverseAnimation' : ReverseAnimationClassBinding(),
      'CurvedAnimation' : CurvedAnimationClassBinding(),
      'TrainHoppingAnimation' : TrainHoppingAnimationClassBinding(),
      'AnimationMean' : AnimationMeanClassBinding(),
      'AnimationMax' : AnimationMaxClassBinding(),
      'AnimationMin' : AnimationMinClassBinding(),
      'AbstractNode' : AbstractNodeClassBinding(),
      'WriteBuffer' : WriteBufferClassBinding(),
      'ReadBuffer' : ReadBufferClassBinding(),
      'LicenseParagraph' : LicenseParagraphClassBinding(),
      'LicenseEntryWithLineBreaks' : LicenseEntryWithLineBreaksClassBinding(),
      'LicenseRegistry' : LicenseRegistryClassBinding(),
      'ObserverList' : ObserverListClassBinding(),
      'HashedObserverList' : HashedObserverListClassBinding(),
      'SynchronousFuture' : SynchronousFutureClassBinding(),
      'Unicode' : UnicodeClassBinding(),
      'TextTreeConfiguration' : TextTreeConfigurationClassBinding(),
      'TextTreeRenderer' : TextTreeRendererClassBinding(),
      'MessageProperty' : MessagePropertyClassBinding(),
      'StringProperty' : StringPropertyClassBinding(),
      'DoubleProperty' : DoublePropertyClassBinding(),
      'IntProperty' : IntPropertyClassBinding(),
      'PercentProperty' : PercentPropertyClassBinding(),
      'FlagProperty' : FlagPropertyClassBinding(),
      'IterableProperty' : IterablePropertyClassBinding(),
      'EnumProperty' : EnumPropertyClassBinding(),
      'ObjectFlagProperty' : ObjectFlagPropertyClassBinding(),
      'FlagsSummary' : FlagsSummaryClassBinding(),
      'DiagnosticsProperty' : DiagnosticsPropertyClassBinding(),
      'DiagnosticableNode' : DiagnosticableNodeClassBinding(),
      'DiagnosticableTreeNode' : DiagnosticableTreeNodeClassBinding(),
      'DiagnosticPropertiesBuilder' : DiagnosticPropertiesBuilderClassBinding(),
      'DiagnosticsBlock' : DiagnosticsBlockClassBinding(),
      'DiagnosticLevel' : DiagnosticLevelClassBinding(),
      'DiagnosticsTreeStyle' : DiagnosticsTreeStyleClassBinding(),
      'TargetPlatform' : TargetPlatformClassBinding(),
      'StackFrame' : StackFrameClassBinding(),
      'ChangeNotifier' : ChangeNotifierClassBinding(),
      'ValueNotifier' : ValueNotifierClassBinding(),
      'ValueKey' : ValueKeyClassBinding(),
      'AnnounceSemanticsEvent' : AnnounceSemanticsEventClassBinding(),
      'TooltipSemanticsEvent' : TooltipSemanticsEventClassBinding(),
      'LongPressSemanticsEvent' : LongPressSemanticsEventClassBinding(),
      'TapSemanticEvent' : TapSemanticEventClassBinding(),
      'UpdateLiveRegionEvent' : UpdateLiveRegionEventClassBinding(),
      'SemanticsService' : SemanticsServiceClassBinding(),
      'SemanticsTag' : SemanticsTagClassBinding(),
      'CustomSemanticsAction' : CustomSemanticsActionClassBinding(),
      'SemanticsData' : SemanticsDataClassBinding(),
      'SemanticsHintOverrides' : SemanticsHintOverridesClassBinding(),
      'SemanticsProperties' : SemanticsPropertiesClassBinding(),
      'SemanticsNode' : SemanticsNodeClassBinding(),
      'SemanticsOwner' : SemanticsOwnerClassBinding(),
      'SemanticsConfiguration' : SemanticsConfigurationClassBinding(),
      'OrdinalSortKey' : OrdinalSortKeyClassBinding(),
      'DebugSemanticsDumpOrder' : DebugSemanticsDumpOrderClassBinding(),
      'BorderSide' : BorderSideClassBinding(),
      'BorderStyle' : BorderStyleClassBinding(),
      'Border' : BorderClassBinding(),
      'BorderDirectional' : BorderDirectionalClassBinding(),
      'BoxShape' : BoxShapeClassBinding(),
      'ImageConfiguration' : ImageConfigurationClassBinding(),
      'AssetBundleImageKey' : AssetBundleImageKeyClassBinding(),
      'ResizeImage' : ResizeImageClassBinding(),
      'FileImage' : FileImageClassBinding(),
      'MemoryImage' : MemoryImageClassBinding(),
      'ExactAssetImage' : ExactAssetImageClassBinding(),
      'NetworkImageLoadException' : NetworkImageLoadExceptionClassBinding(),
      'BoxShadow' : BoxShadowClassBinding(),
      'BorderRadius' : BorderRadiusClassBinding(),
      'BorderRadiusDirectional' : BorderRadiusDirectionalClassBinding(),
      'ContinuousRectangleBorder' : ContinuousRectangleBorderClassBinding(),
      'HSVColor' : HSVColorClassBinding(),
      'HSLColor' : HSLColorClassBinding(),
      'ColorSwatch' : ColorSwatchClassBinding(),
      'ColorProperty' : ColorPropertyClassBinding(),
      'AssetImage' : AssetImageClassBinding(),
      'CircleBorder' : CircleBorderClassBinding(),
      'BeveledRectangleBorder' : BeveledRectangleBorderClassBinding(),
      'GradientRotation' : GradientRotationClassBinding(),
      'LinearGradient' : LinearGradientClassBinding(),
      'RadialGradient' : RadialGradientClassBinding(),
      'SweepGradient' : SweepGradientClassBinding(),
      'DefaultShaderWarmUp' : DefaultShaderWarmUpClassBinding(),
      'Alignment' : AlignmentClassBinding(),
      'AlignmentDirectional' : AlignmentDirectionalClassBinding(),
      'TextAlignVertical' : TextAlignVerticalClassBinding(),
      'TextSpan' : TextSpanClassBinding(),
      'ImageSizeInfo' : ImageSizeInfoClassBinding(),
      'FlutterLogoDecoration' : FlutterLogoDecorationClassBinding(),
      'FlutterLogoStyle' : FlutterLogoStyleClassBinding(),
      'RenderComparison' : RenderComparisonClassBinding(),
      'Axis' : AxisClassBinding(),
      'VerticalDirection' : VerticalDirectionClassBinding(),
      'AxisDirection' : AxisDirectionClassBinding(),
      'BoxDecoration' : BoxDecorationClassBinding(),
      'Accumulator' : AccumulatorClassBinding(),
      'InlineSpanSemanticsInformation' : InlineSpanSemanticsInformationClassBinding(),
      'FractionalOffset' : FractionalOffsetClassBinding(),
      'FittedSizes' : FittedSizesClassBinding(),
      'BoxFit' : BoxFitClassBinding(),
      'CircularNotchedRectangle' : CircularNotchedRectangleClassBinding(),
      'AutomaticNotchedShape' : AutomaticNotchedShapeClassBinding(),
      'MatrixUtils' : MatrixUtilsClassBinding(),
      'TransformProperty' : TransformPropertyClassBinding(),
      'StadiumBorder' : StadiumBorderClassBinding(),
      'PlaceholderDimensions' : PlaceholderDimensionsClassBinding(),
      'TextPainter' : TextPainterClassBinding(),
      'TextWidthBasis' : TextWidthBasisClassBinding(),
      'RoundedRectangleBorder' : RoundedRectangleBorderClassBinding(),
      'ShapeDecoration' : ShapeDecorationClassBinding(),
      'EdgeInsets' : EdgeInsetsClassBinding(),
      'EdgeInsetsDirectional' : EdgeInsetsDirectionalClassBinding(),
      'DecorationImage' : DecorationImageClassBinding(),
      'ImageRepeat' : ImageRepeatClassBinding(),
      'ImageInfo' : ImageInfoClassBinding(),
      'ImageStreamListener' : ImageStreamListenerClassBinding(),
      'ImageChunkEvent' : ImageChunkEventClassBinding(),
      'ImageStream' : ImageStreamClassBinding(),
      'OneFrameImageStreamCompleter' : OneFrameImageStreamCompleterClassBinding(),
      'MultiFrameImageStreamCompleter' : MultiFrameImageStreamCompleterClassBinding(),
      'ImageCache' : ImageCacheClassBinding(),
      'PolynomialFit' : PolynomialFitClassBinding(),
      'LeastSquaresSolver' : LeastSquaresSolverClassBinding(),
      'EagerGestureRecognizer' : EagerGestureRecognizerClassBinding(),
      'GestureArenaTeam' : GestureArenaTeamClassBinding(),
      'DoubleTapGestureRecognizer' : DoubleTapGestureRecognizerClassBinding(),
      'MultiTapGestureRecognizer' : MultiTapGestureRecognizerClassBinding(),
      'Velocity' : VelocityClassBinding(),
      'VelocityEstimate' : VelocityEstimateClassBinding(),
      'VelocityTracker' : VelocityTrackerClassBinding(),
      'IOSScrollViewFlingVelocityTracker' : IOSScrollViewFlingVelocityTrackerClassBinding(),
      'HitTestEntry' : HitTestEntryClassBinding(),
      'HitTestResult' : HitTestResultClassBinding(),
      'TapDownDetails' : TapDownDetailsClassBinding(),
      'TapUpDetails' : TapUpDetailsClassBinding(),
      'TapGestureRecognizer' : TapGestureRecognizerClassBinding(),
      'GestureArenaManager' : GestureArenaManagerClassBinding(),
      'GestureDisposition' : GestureDispositionClassBinding(),
      'OffsetPair' : OffsetPairClassBinding(),
      'DragStartBehavior' : DragStartBehaviorClassBinding(),
      'GestureRecognizerState' : GestureRecognizerStateClassBinding(),
      'ImmediateMultiDragGestureRecognizer' : ImmediateMultiDragGestureRecognizerClassBinding(),
      'HorizontalMultiDragGestureRecognizer' : HorizontalMultiDragGestureRecognizerClassBinding(),
      'VerticalMultiDragGestureRecognizer' : VerticalMultiDragGestureRecognizerClassBinding(),
      'DelayedMultiDragGestureRecognizer' : DelayedMultiDragGestureRecognizerClassBinding(),
      'PointerEventConverter' : PointerEventConverterClassBinding(),
      'ForcePressDetails' : ForcePressDetailsClassBinding(),
      'ForcePressGestureRecognizer' : ForcePressGestureRecognizerClassBinding(),
      'PointerSignalResolver' : PointerSignalResolverClassBinding(),
      'LongPressStartDetails' : LongPressStartDetailsClassBinding(),
      'LongPressMoveUpdateDetails' : LongPressMoveUpdateDetailsClassBinding(),
      'LongPressEndDetails' : LongPressEndDetailsClassBinding(),
      'LongPressGestureRecognizer' : LongPressGestureRecognizerClassBinding(),
      'DragDownDetails' : DragDownDetailsClassBinding(),
      'DragStartDetails' : DragStartDetailsClassBinding(),
      'DragUpdateDetails' : DragUpdateDetailsClassBinding(),
      'DragEndDetails' : DragEndDetailsClassBinding(),
      'ScaleStartDetails' : ScaleStartDetailsClassBinding(),
      'ScaleUpdateDetails' : ScaleUpdateDetailsClassBinding(),
      'ScaleEndDetails' : ScaleEndDetailsClassBinding(),
      'ScaleGestureRecognizer' : ScaleGestureRecognizerClassBinding(),
      'PointerEventResampler' : PointerEventResamplerClassBinding(),
      'PointerAddedEvent' : PointerAddedEventClassBinding(),
      'PointerRemovedEvent' : PointerRemovedEventClassBinding(),
      'PointerHoverEvent' : PointerHoverEventClassBinding(),
      'PointerEnterEvent' : PointerEnterEventClassBinding(),
      'PointerExitEvent' : PointerExitEventClassBinding(),
      'PointerDownEvent' : PointerDownEventClassBinding(),
      'PointerMoveEvent' : PointerMoveEventClassBinding(),
      'PointerUpEvent' : PointerUpEventClassBinding(),
      'PointerScrollEvent' : PointerScrollEventClassBinding(),
      'PointerCancelEvent' : PointerCancelEventClassBinding(),
      'VerticalDragGestureRecognizer' : VerticalDragGestureRecognizerClassBinding(),
      'HorizontalDragGestureRecognizer' : HorizontalDragGestureRecognizerClassBinding(),
      'PanGestureRecognizer' : PanGestureRecognizerClassBinding(),
      'FlutterErrorDetailsForPointerEventDispatcher' : FlutterErrorDetailsForPointerEventDispatcherClassBinding(),
      'PointerRouter' : PointerRouterClassBinding(),
      'MouseTrackerAnnotation' : MouseTrackerAnnotationClassBinding(),
      'MouseTrackerUpdateDetails' : MouseTrackerUpdateDetailsClassBinding(),
      'MouseTracker' : MouseTrackerClassBinding(),
      'CustomPainterSemantics' : CustomPainterSemanticsClassBinding(),
      'RenderCustomPaint' : RenderCustomPaintClassBinding(),
      'OverScrollHeaderStretchConfiguration' : OverScrollHeaderStretchConfigurationClassBinding(),
      'PersistentHeaderShowOnScreenConfiguration' : PersistentHeaderShowOnScreenConfigurationClassBinding(),
      'FloatingHeaderSnapConfiguration' : FloatingHeaderSnapConfigurationClassBinding(),
      'ListWheelParentData' : ListWheelParentDataClassBinding(),
      'RenderListWheelViewport' : RenderListWheelViewportClassBinding(),
      'RenderImage' : RenderImageClassBinding(),
      'TextureBox' : TextureBoxClassBinding(),
      'WrapParentData' : WrapParentDataClassBinding(),
      'RenderWrap' : RenderWrapClassBinding(),
      'WrapAlignment' : WrapAlignmentClassBinding(),
      'WrapCrossAlignment' : WrapCrossAlignmentClassBinding(),
      'TableBorder' : TableBorderClassBinding(),
      'RenderProxyBox' : RenderProxyBoxClassBinding(),
      'RenderConstrainedBox' : RenderConstrainedBoxClassBinding(),
      'RenderLimitedBox' : RenderLimitedBoxClassBinding(),
      'RenderAspectRatio' : RenderAspectRatioClassBinding(),
      'RenderIntrinsicWidth' : RenderIntrinsicWidthClassBinding(),
      'RenderIntrinsicHeight' : RenderIntrinsicHeightClassBinding(),
      'RenderOpacity' : RenderOpacityClassBinding(),
      'RenderAnimatedOpacity' : RenderAnimatedOpacityClassBinding(),
      'RenderShaderMask' : RenderShaderMaskClassBinding(),
      'RenderBackdropFilter' : RenderBackdropFilterClassBinding(),
      'ShapeBorderClipper' : ShapeBorderClipperClassBinding(),
      'RenderClipRect' : RenderClipRectClassBinding(),
      'RenderClipRRect' : RenderClipRRectClassBinding(),
      'RenderClipOval' : RenderClipOvalClassBinding(),
      'RenderClipPath' : RenderClipPathClassBinding(),
      'RenderPhysicalModel' : RenderPhysicalModelClassBinding(),
      'RenderPhysicalShape' : RenderPhysicalShapeClassBinding(),
      'RenderDecoratedBox' : RenderDecoratedBoxClassBinding(),
      'RenderTransform' : RenderTransformClassBinding(),
      'RenderFittedBox' : RenderFittedBoxClassBinding(),
      'RenderFractionalTranslation' : RenderFractionalTranslationClassBinding(),
      'RenderPointerListener' : RenderPointerListenerClassBinding(),
      'RenderMouseRegion' : RenderMouseRegionClassBinding(),
      'RenderRepaintBoundary' : RenderRepaintBoundaryClassBinding(),
      'RenderIgnorePointer' : RenderIgnorePointerClassBinding(),
      'RenderOffstage' : RenderOffstageClassBinding(),
      'RenderAbsorbPointer' : RenderAbsorbPointerClassBinding(),
      'RenderMetaData' : RenderMetaDataClassBinding(),
      'RenderSemanticsGestureHandler' : RenderSemanticsGestureHandlerClassBinding(),
      'RenderSemanticsAnnotations' : RenderSemanticsAnnotationsClassBinding(),
      'RenderBlockSemantics' : RenderBlockSemanticsClassBinding(),
      'RenderMergeSemantics' : RenderMergeSemanticsClassBinding(),
      'RenderExcludeSemantics' : RenderExcludeSemanticsClassBinding(),
      'RenderIndexedSemantics' : RenderIndexedSemanticsClassBinding(),
      'RenderLeaderLayer' : RenderLeaderLayerClassBinding(),
      'RenderFollowerLayer' : RenderFollowerLayerClassBinding(),
      'RenderAnnotatedRegion' : RenderAnnotatedRegionClassBinding(),
      'HitTestBehavior' : HitTestBehaviorClassBinding(),
      'DecorationPosition' : DecorationPositionClassBinding(),
      'ScrollDirection' : ScrollDirectionClassBinding(),
      'SliverMultiBoxAdaptorParentData' : SliverMultiBoxAdaptorParentDataClassBinding(),
      'FlowParentData' : FlowParentDataClassBinding(),
      'RenderFlow' : RenderFlowClassBinding(),
      'ParentData' : ParentDataClassBinding(),
      'PaintingContext' : PaintingContextClassBinding(),
      'PipelineOwner' : PipelineOwnerClassBinding(),
      'DiagnosticsDebugCreator' : DiagnosticsDebugCreatorClassBinding(),
      'FlexParentData' : FlexParentDataClassBinding(),
      'RenderFlex' : RenderFlexClassBinding(),
      'FlexFit' : FlexFitClassBinding(),
      'MainAxisSize' : MainAxisSizeClassBinding(),
      'MainAxisAlignment' : MainAxisAlignmentClassBinding(),
      'CrossAxisAlignment' : CrossAxisAlignmentClassBinding(),
      'RenderSliverFixedExtentList' : RenderSliverFixedExtentListClassBinding(),
      'TableCellParentData' : TableCellParentDataClassBinding(),
      'IntrinsicColumnWidth' : IntrinsicColumnWidthClassBinding(),
      'FixedColumnWidth' : FixedColumnWidthClassBinding(),
      'FractionColumnWidth' : FractionColumnWidthClassBinding(),
      'FlexColumnWidth' : FlexColumnWidthClassBinding(),
      'MaxColumnWidth' : MaxColumnWidthClassBinding(),
      'MinColumnWidth' : MinColumnWidthClassBinding(),
      'RenderTable' : RenderTableClassBinding(),
      'TableCellVerticalAlignment' : TableCellVerticalAlignmentClassBinding(),
      'RenderRotatedBox' : RenderRotatedBoxClassBinding(),
      'RenderPadding' : RenderPaddingClassBinding(),
      'RenderPositionedBox' : RenderPositionedBoxClassBinding(),
      'RenderConstrainedOverflowBox' : RenderConstrainedOverflowBoxClassBinding(),
      'RenderUnconstrainedBox' : RenderUnconstrainedBoxClassBinding(),
      'RenderSizedOverflowBox' : RenderSizedOverflowBoxClassBinding(),
      'RenderFractionallySizedOverflowBox' : RenderFractionallySizedOverflowBoxClassBinding(),
      'RenderCustomSingleChildLayoutBox' : RenderCustomSingleChildLayoutBoxClassBinding(),
      'RenderBaseline' : RenderBaselineClassBinding(),
      'ChildLayoutHelper' : ChildLayoutHelperClassBinding(),
      'RenderSliverOpacity' : RenderSliverOpacityClassBinding(),
      'RenderSliverIgnorePointer' : RenderSliverIgnorePointerClassBinding(),
      'RenderSliverOffstage' : RenderSliverOffstageClassBinding(),
      'RenderSliverAnimatedOpacity' : RenderSliverAnimatedOpacityClassBinding(),
      'RenderPerformanceOverlay' : RenderPerformanceOverlayClassBinding(),
      'PerformanceOverlayOption' : PerformanceOverlayOptionClassBinding(),
      'RenderView' : RenderViewClassBinding(),
      'SliverGridGeometry' : SliverGridGeometryClassBinding(),
      'SliverGridRegularTileLayout' : SliverGridRegularTileLayoutClassBinding(),
      'SliverGridDelegateWithFixedCrossAxisCount' : SliverGridDelegateWithFixedCrossAxisCountClassBinding(),
      'SliverGridDelegateWithMaxCrossAxisExtent' : SliverGridDelegateWithMaxCrossAxisExtentClassBinding(),
      'SliverGridParentData' : SliverGridParentDataClassBinding(),
      'RenderSliverGrid' : RenderSliverGridClassBinding(),
      'RevealedOffset' : RevealedOffsetClassBinding(),
      'RenderViewport' : RenderViewportClassBinding(),
      'RenderShrinkWrappingViewport' : RenderShrinkWrappingViewportClassBinding(),
      'CacheExtentStyle' : CacheExtentStyleClassBinding(),
      'RenderSliverList' : RenderSliverListClassBinding(),
      'RenderSliverPadding' : RenderSliverPaddingClassBinding(),
      'SliverConstraints' : SliverConstraintsClassBinding(),
      'SliverGeometry' : SliverGeometryClassBinding(),
      'SliverHitTestResult' : SliverHitTestResultClassBinding(),
      'SliverHitTestEntry' : SliverHitTestEntryClassBinding(),
      'SliverLogicalParentData' : SliverLogicalParentDataClassBinding(),
      'SliverLogicalContainerParentData' : SliverLogicalContainerParentDataClassBinding(),
      'SliverPhysicalParentData' : SliverPhysicalParentDataClassBinding(),
      'SliverPhysicalContainerParentData' : SliverPhysicalContainerParentDataClassBinding(),
      'RenderSliverToBoxAdapter' : RenderSliverToBoxAdapterClassBinding(),
      'GrowthDirection' : GrowthDirectionClassBinding(),
      'RenderErrorBox' : RenderErrorBoxClassBinding(),
      'RelativeRect' : RelativeRectClassBinding(),
      'StackParentData' : StackParentDataClassBinding(),
      'RenderStack' : RenderStackClassBinding(),
      'RenderIndexedStack' : RenderIndexedStackClassBinding(),
      'StackFit' : StackFitClassBinding(),
      'Overflow' : OverflowClassBinding(),
      'ListBodyParentData' : ListBodyParentDataClassBinding(),
      'RenderListBody' : RenderListBodyClassBinding(),
      'FractionalOffsetTween' : FractionalOffsetTweenClassBinding(),
      'AlignmentTween' : AlignmentTweenClassBinding(),
      'AlignmentGeometryTween' : AlignmentGeometryTweenClassBinding(),
      'AnnotationEntry' : AnnotationEntryClassBinding(),
      'AnnotationResult' : AnnotationResultClassBinding(),
      'PictureLayer' : PictureLayerClassBinding(),
      'TextureLayer' : TextureLayerClassBinding(),
      'PlatformViewLayer' : PlatformViewLayerClassBinding(),
      'PerformanceOverlayLayer' : PerformanceOverlayLayerClassBinding(),
      'ContainerLayer' : ContainerLayerClassBinding(),
      'OffsetLayer' : OffsetLayerClassBinding(),
      'ClipRectLayer' : ClipRectLayerClassBinding(),
      'ClipRRectLayer' : ClipRRectLayerClassBinding(),
      'ClipPathLayer' : ClipPathLayerClassBinding(),
      'ColorFilterLayer' : ColorFilterLayerClassBinding(),
      'ImageFilterLayer' : ImageFilterLayerClassBinding(),
      'TransformLayer' : TransformLayerClassBinding(),
      'OpacityLayer' : OpacityLayerClassBinding(),
      'ShaderMaskLayer' : ShaderMaskLayerClassBinding(),
      'BackdropFilterLayer' : BackdropFilterLayerClassBinding(),
      'PhysicalModelLayer' : PhysicalModelLayerClassBinding(),
      'LayerLink' : LayerLinkClassBinding(),
      'LeaderLayer' : LeaderLayerClassBinding(),
      'FollowerLayer' : FollowerLayerClassBinding(),
      'AnnotatedRegionLayer' : AnnotatedRegionLayerClassBinding(),
      'RenderAndroidView' : RenderAndroidViewClassBinding(),
      'RenderUiKitView' : RenderUiKitViewClassBinding(),
      'PlatformViewRenderBox' : PlatformViewRenderBoxClassBinding(),
      'PlatformViewHitTestBehavior' : PlatformViewHitTestBehaviorClassBinding(),
      'TextSelectionPoint' : TextSelectionPointClassBinding(),
      'RenderEditable' : RenderEditableClassBinding(),
      'SelectionChangedCause' : SelectionChangedCauseClassBinding(),
      'TextParentData' : TextParentDataClassBinding(),
      'PlaceholderSpanIndexSemanticsTag' : PlaceholderSpanIndexSemanticsTagClassBinding(),
      'RenderParagraph' : RenderParagraphClassBinding(),
      'TextOverflow' : TextOverflowClassBinding(),
      'RenderSliverFillViewport' : RenderSliverFillViewportClassBinding(),
      'RenderSliverFillRemainingWithScrollable' : RenderSliverFillRemainingWithScrollableClassBinding(),
      'RenderSliverFillRemaining' : RenderSliverFillRemainingClassBinding(),
      'RenderSliverFillRemainingAndOverscroll' : RenderSliverFillRemainingAndOverscrollClassBinding(),
      'RenderAnimatedSize' : RenderAnimatedSizeClassBinding(),
      'RenderAnimatedSizeState' : RenderAnimatedSizeStateClassBinding(),
      'RenderingFlutterBinding' : RenderingFlutterBindingClassBinding(),
      'MultiChildLayoutParentData' : MultiChildLayoutParentDataClassBinding(),
      'RenderCustomMultiChildLayoutBox' : RenderCustomMultiChildLayoutBoxClassBinding(),
      'BoxConstraints' : BoxConstraintsClassBinding(),
      'BoxHitTestResult' : BoxHitTestResultClassBinding(),
      'BoxHitTestEntry' : BoxHitTestEntryClassBinding(),
      'BoxParentData' : BoxParentDataClassBinding(),
      'GravitySimulation' : GravitySimulationClassBinding(),
      'SpringDescription' : SpringDescriptionClassBinding(),
      'SpringSimulation' : SpringSimulationClassBinding(),
      'ScrollSpringSimulation' : ScrollSpringSimulationClassBinding(),
      'SpringType' : SpringTypeClassBinding(),
      'FrictionSimulation' : FrictionSimulationClassBinding(),
      'BoundedFrictionSimulation' : BoundedFrictionSimulationClassBinding(),
      'ClampedSimulation' : ClampedSimulationClassBinding(),
      'Tolerance' : ToleranceClassBinding(),
      'CupertinoTabView' : CupertinoTabViewClassBinding(),
      'CupertinoTextThemeData' : CupertinoTextThemeDataClassBinding(),
      'CupertinoTextField' : CupertinoTextFieldClassBinding(),
      'OverlayVisibilityMode' : OverlayVisibilityModeClassBinding(),
      'CupertinoFormRow' : CupertinoFormRowClassBinding(),
      'CupertinoTextSelectionToolbar' : CupertinoTextSelectionToolbarClassBinding(),
      'CupertinoTextSelectionToolbarButton' : CupertinoTextSelectionToolbarButtonClassBinding(),
      'CupertinoSegmentedControl' : CupertinoSegmentedControlClassBinding(),
      'CupertinoIconThemeData' : CupertinoIconThemeDataClassBinding(),
      'CupertinoColors' : CupertinoColorsClassBinding(),
      'CupertinoDynamicColor' : CupertinoDynamicColorClassBinding(),
      'CupertinoActionSheet' : CupertinoActionSheetClassBinding(),
      'CupertinoActionSheetAction' : CupertinoActionSheetActionClassBinding(),
      'CupertinoSlidingSegmentedControl' : CupertinoSlidingSegmentedControlClassBinding(),
      'CupertinoSearchTextField' : CupertinoSearchTextFieldClassBinding(),
      'CupertinoButton' : CupertinoButtonClassBinding(),
      'CupertinoTabController' : CupertinoTabControllerClassBinding(),
      'CupertinoTabScaffold' : CupertinoTabScaffoldClassBinding(),
      'RestorableCupertinoTabController' : RestorableCupertinoTabControllerClassBinding(),
      'CupertinoAlertDialog' : CupertinoAlertDialogClassBinding(),
      'CupertinoPopupSurface' : CupertinoPopupSurfaceClassBinding(),
      'CupertinoDialogAction' : CupertinoDialogActionClassBinding(),
      'CupertinoTabBar' : CupertinoTabBarClassBinding(),
      'CupertinoDatePicker' : CupertinoDatePickerClassBinding(),
      'CupertinoTimerPicker' : CupertinoTimerPickerClassBinding(),
      'CupertinoDatePickerMode' : CupertinoDatePickerModeClassBinding(),
      'CupertinoTimerPickerMode' : CupertinoTimerPickerModeClassBinding(),
      'CupertinoSliverRefreshControl' : CupertinoSliverRefreshControlClassBinding(),
      'RefreshIndicatorMode' : RefreshIndicatorModeClassBinding(),
      'CupertinoPicker' : CupertinoPickerClassBinding(),
      'CupertinoPickerDefaultSelectionOverlay' : CupertinoPickerDefaultSelectionOverlayClassBinding(),
      'CupertinoContextMenu' : CupertinoContextMenuClassBinding(),
      'CupertinoPageRoute' : CupertinoPageRouteClassBinding(),
      'CupertinoPage' : CupertinoPageClassBinding(),
      'CupertinoPageTransition' : CupertinoPageTransitionClassBinding(),
      'CupertinoFullscreenDialogTransition' : CupertinoFullscreenDialogTransitionClassBinding(),
      'CupertinoDialogRoute' : CupertinoDialogRouteClassBinding(),
      'CupertinoThumbPainter' : CupertinoThumbPainterClassBinding(),
      'CupertinoActivityIndicator' : CupertinoActivityIndicatorClassBinding(),
      'CupertinoSlider' : CupertinoSliderClassBinding(),
      'CupertinoPageScaffold' : CupertinoPageScaffoldClassBinding(),
      'CupertinoTextSelectionControls' : CupertinoTextSelectionControlsClassBinding(),
      'CupertinoUserInterfaceLevel' : CupertinoUserInterfaceLevelClassBinding(),
      'CupertinoUserInterfaceLevelData' : CupertinoUserInterfaceLevelDataClassBinding(),
      'CupertinoFormSection' : CupertinoFormSectionClassBinding(),
      'CupertinoTextFormFieldRow' : CupertinoTextFormFieldRowClassBinding(),
      'CupertinoContextMenuAction' : CupertinoContextMenuActionClassBinding(),
      'CupertinoSwitch' : CupertinoSwitchClassBinding(),
      'CupertinoScrollbar' : CupertinoScrollbarClassBinding(),
      'CupertinoApp' : CupertinoAppClassBinding(),
      'CupertinoIcons' : CupertinoIconsClassBinding(),
      'CupertinoNavigationBar' : CupertinoNavigationBarClassBinding(),
      'CupertinoSliverNavigationBar' : CupertinoSliverNavigationBarClassBinding(),
      'CupertinoNavigationBarBackButton' : CupertinoNavigationBarBackButtonClassBinding(),
      'CupertinoTheme' : CupertinoThemeClassBinding(),
      'CupertinoThemeData' : CupertinoThemeDataClassBinding(),
      'NoDefaultCupertinoThemeData' : NoDefaultCupertinoThemeDataClassBinding(),
      'DefaultCupertinoLocalizations' : DefaultCupertinoLocalizationsClassBinding(),
      'DatePickerDateTimeOrder' : DatePickerDateTimeOrderClassBinding(),
      'DatePickerDateOrder' : DatePickerDateOrderClassBinding(),
      'DayPicker' : DayPickerClassBinding(),
      'MonthPicker' : MonthPickerClassBinding(),
      'TextButtonThemeData' : TextButtonThemeDataClassBinding(),
      'TextButtonTheme' : TextButtonThemeClassBinding(),
      'DrawerHeader' : DrawerHeaderClassBinding(),
      'MaterialButton' : MaterialButtonClassBinding(),
      'GridTile' : GridTileClassBinding(),
      'Material' : MaterialClassBinding(),
      'ShapeBorderTween' : ShapeBorderTweenClassBinding(),
      'MaterialType' : MaterialTypeClassBinding(),
      'TextTheme' : TextThemeClassBinding(),
      'InkRipple' : InkRippleClassBinding(),
      'ElevatedButtonThemeData' : ElevatedButtonThemeDataClassBinding(),
      'ElevatedButtonTheme' : ElevatedButtonThemeClassBinding(),
      'MaterialBannerThemeData' : MaterialBannerThemeDataClassBinding(),
      'MaterialBannerTheme' : MaterialBannerThemeClassBinding(),
      'ScaffoldMessenger' : ScaffoldMessengerClassBinding(),
      'ScaffoldMessengerState' : ScaffoldMessengerStateClassBinding(),
      'ScaffoldPrelayoutGeometry' : ScaffoldPrelayoutGeometryClassBinding(),
      'ScaffoldGeometry' : ScaffoldGeometryClassBinding(),
      'Scaffold' : ScaffoldClassBinding(),
      'ScaffoldState' : ScaffoldStateClassBinding(),
      'Feedback' : FeedbackClassBinding(),
      'SwitchThemeData' : SwitchThemeDataClassBinding(),
      'SwitchTheme' : SwitchThemeClassBinding(),
      'ToggleButtonsThemeData' : ToggleButtonsThemeDataClassBinding(),
      'ToggleButtonsTheme' : ToggleButtonsThemeClassBinding(),
      'BackButtonIcon' : BackButtonIconClassBinding(),
      'BackButton' : BackButtonClassBinding(),
      'CloseButton' : CloseButtonClassBinding(),
      'TextSelectionToolbarTextButton' : TextSelectionToolbarTextButtonClassBinding(),
      'TextField' : TextFieldClassBinding(),
      'NavigationRailThemeData' : NavigationRailThemeDataClassBinding(),
      'NavigationRailTheme' : NavigationRailThemeClassBinding(),
      'AboutListTile' : AboutListTileClassBinding(),
      'AboutDialog' : AboutDialogClassBinding(),
      'LicensePage' : LicensePageClassBinding(),
      'TimePickerThemeData' : TimePickerThemeDataClassBinding(),
      'TimePickerTheme' : TimePickerThemeClassBinding(),
      'TextSelectionToolbar' : TextSelectionToolbarClassBinding(),
      'TextSelectionThemeData' : TextSelectionThemeDataClassBinding(),
      'TextSelectionTheme' : TextSelectionThemeClassBinding(),
      'RadioListTile' : RadioListTileClassBinding(),
      'RefreshIndicator' : RefreshIndicatorClassBinding(),
      'RefreshIndicatorState' : RefreshIndicatorStateClassBinding(),
      'RefreshIndicatorTriggerMode' : RefreshIndicatorTriggerModeClassBinding(),
      'InputDatePickerFormField' : InputDatePickerFormFieldClassBinding(),
      'BottomAppBarTheme' : BottomAppBarThemeClassBinding(),
      'TabBarTheme' : TabBarThemeClassBinding(),
      'OutlinedButtonThemeData' : OutlinedButtonThemeDataClassBinding(),
      'OutlinedButtonTheme' : OutlinedButtonThemeClassBinding(),
      'GridTileBar' : GridTileBarClassBinding(),
      'ElevationOverlay' : ElevationOverlayClassBinding(),
      'SelectableText' : SelectableTextClassBinding(),
      'CircleAvatar' : CircleAvatarClassBinding(),
      'Ink' : InkClassBinding(),
      'InkDecoration' : InkDecorationClassBinding(),
      'ButtonBar' : ButtonBarClassBinding(),
      'FadeUpwardsPageTransitionsBuilder' : FadeUpwardsPageTransitionsBuilderClassBinding(),
      'OpenUpwardsPageTransitionsBuilder' : OpenUpwardsPageTransitionsBuilderClassBinding(),
      'ZoomPageTransitionsBuilder' : ZoomPageTransitionsBuilderClassBinding(),
      'CupertinoPageTransitionsBuilder' : CupertinoPageTransitionsBuilderClassBinding(),
      'PageTransitionsTheme' : PageTransitionsThemeClassBinding(),
      'AppBarTheme' : AppBarThemeClassBinding(),
      'MaterialPageRoute' : MaterialPageRouteClassBinding(),
      'MaterialPage' : MaterialPageClassBinding(),
      'MaterialColor' : MaterialColorClassBinding(),
      'MaterialAccentColor' : MaterialAccentColorClassBinding(),
      'Colors' : ColorsClassBinding(),
      'SnackBarAction' : SnackBarActionClassBinding(),
      'SnackBar' : SnackBarClassBinding(),
      'SnackBarClosedReason' : SnackBarClosedReasonClassBinding(),
      'InputDecorator' : InputDecoratorClassBinding(),
      'InputDecoration' : InputDecorationClassBinding(),
      'InputDecorationTheme' : InputDecorationThemeClassBinding(),
      'FloatingLabelBehavior' : FloatingLabelBehaviorClassBinding(),
      'ReorderableListView' : ReorderableListViewClassBinding(),
      'ColorScheme' : ColorSchemeClassBinding(),
      'TimeOfDay' : TimeOfDayClassBinding(),
      'DayPeriod' : DayPeriodClassBinding(),
      'TimeOfDayFormat' : TimeOfDayFormatClassBinding(),
      'HourFormat' : HourFormatClassBinding(),
      'Card' : CardClassBinding(),
      'RawMaterialButton' : RawMaterialButtonClassBinding(),
      'PopupMenuThemeData' : PopupMenuThemeDataClassBinding(),
      'PopupMenuTheme' : PopupMenuThemeClassBinding(),
      'DataColumn' : DataColumnClassBinding(),
      'DataRow' : DataRowClassBinding(),
      'DataCell' : DataCellClassBinding(),
      'DataTable' : DataTableClassBinding(),
      'TableRowInkWell' : TableRowInkWellClassBinding(),
      'TabController' : TabControllerClassBinding(),
      'DefaultTabController' : DefaultTabControllerClassBinding(),
      'NavigationRail' : NavigationRailClassBinding(),
      'NavigationRailDestination' : NavigationRailDestinationClassBinding(),
      'NavigationRailLabelType' : NavigationRailLabelTypeClassBinding(),
      'TooltipThemeData' : TooltipThemeDataClassBinding(),
      'TooltipTheme' : TooltipThemeClassBinding(),
      'TextButton' : TextButtonClassBinding(),
      'RaisedButton' : RaisedButtonClassBinding(),
      'Dialog' : DialogClassBinding(),
      'AlertDialog' : AlertDialogClassBinding(),
      'SimpleDialogOption' : SimpleDialogOptionClassBinding(),
      'SimpleDialog' : SimpleDialogClassBinding(),
      'DialogRoute' : DialogRouteClassBinding(),
      'InkResponse' : InkResponseClassBinding(),
      'InkWell' : InkWellClassBinding(),
      'Checkbox' : CheckboxClassBinding(),
      'TimePickerEntryMode' : TimePickerEntryModeClassBinding(),
      'Radio' : RadioClassBinding(),
      'Step' : StepClassBinding(),
      'Stepper' : StepperClassBinding(),
      'StepState' : StepStateClassBinding(),
      'StepperType' : StepperTypeClassBinding(),
      'CheckboxListTile' : CheckboxListTileClassBinding(),
      'RadioThemeData' : RadioThemeDataClassBinding(),
      'RadioTheme' : RadioThemeClassBinding(),
      'Tab' : TabClassBinding(),
      'TabBar' : TabBarClassBinding(),
      'TabBarView' : TabBarViewClassBinding(),
      'TabPageSelectorIndicator' : TabPageSelectorIndicatorClassBinding(),
      'TabPageSelector' : TabPageSelectorClassBinding(),
      'TabBarIndicatorSize' : TabBarIndicatorSizeClassBinding(),
      'BottomNavigationBarThemeData' : BottomNavigationBarThemeDataClassBinding(),
      'BottomNavigationBarTheme' : BottomNavigationBarThemeClassBinding(),
      'FloatingActionButton' : FloatingActionButtonClassBinding(),
      'CheckboxThemeData' : CheckboxThemeDataClassBinding(),
      'CheckboxTheme' : CheckboxThemeClassBinding(),
      'RangeSlider' : RangeSliderClassBinding(),
      'ScrollbarThemeData' : ScrollbarThemeDataClassBinding(),
      'ScrollbarTheme' : ScrollbarThemeClassBinding(),
      'InkHighlight' : InkHighlightClassBinding(),
      'PopupMenuDivider' : PopupMenuDividerClassBinding(),
      'PopupMenuItem' : PopupMenuItemClassBinding(),
      'PopupMenuItemState' : PopupMenuItemStateClassBinding(),
      'CheckedPopupMenuItem' : CheckedPopupMenuItemClassBinding(),
      'PopupMenuButton' : PopupMenuButtonClassBinding(),
      'PopupMenuButtonState' : PopupMenuButtonStateClassBinding(),
      'ExpandIcon' : ExpandIconClassBinding(),
      'AppBar' : AppBarClassBinding(),
      'SliverAppBar' : SliverAppBarClassBinding(),
      'BottomAppBar' : BottomAppBarClassBinding(),
      'UserAccountsDrawerHeader' : UserAccountsDrawerHeaderClassBinding(),
      'MaterialBanner' : MaterialBannerClassBinding(),
      'CalendarDatePicker' : CalendarDatePickerClassBinding(),
      'YearPicker' : YearPickerClassBinding(),
      'UnderlineInputBorder' : UnderlineInputBorderClassBinding(),
      'OutlineInputBorder' : OutlineInputBorderClassBinding(),
      'Chip' : ChipClassBinding(),
      'InputChip' : InputChipClassBinding(),
      'ChoiceChip' : ChoiceChipClassBinding(),
      'FilterChip' : FilterChipClassBinding(),
      'ActionChip' : ActionChipClassBinding(),
      'RawChip' : RawChipClassBinding(),
      'DialogTheme' : DialogThemeClassBinding(),
      'PaginatedDataTable' : PaginatedDataTableClassBinding(),
      'PaginatedDataTableState' : PaginatedDataTableStateClassBinding(),
      'MaterialState' : MaterialStateClassBinding(),
      'FloatingActionButtonThemeData' : FloatingActionButtonThemeDataClassBinding(),
      'FlutterLogo' : FlutterLogoClassBinding(),
      'CardTheme' : CardThemeClassBinding(),
      'BottomSheetThemeData' : BottomSheetThemeDataClassBinding(),
      'Tooltip' : TooltipClassBinding(),
      'ElevatedButton' : ElevatedButtonClassBinding(),
      'SwitchListTile' : SwitchListTileClassBinding(),
      'DropdownMenuItem' : DropdownMenuItemClassBinding(),
      'DropdownButtonHideUnderline' : DropdownButtonHideUnderlineClassBinding(),
      'DropdownButton' : DropdownButtonClassBinding(),
      'DropdownButtonFormField' : DropdownButtonFormFieldClassBinding(),
      'TextFormField' : TextFormFieldClassBinding(),
      'Slider' : SliderClassBinding(),
      'UnderlineTabIndicator' : UnderlineTabIndicatorClassBinding(),
      'ButtonTheme' : ButtonThemeClassBinding(),
      'ButtonThemeData' : ButtonThemeDataClassBinding(),
      'ButtonTextTheme' : ButtonTextThemeClassBinding(),
      'ButtonBarLayoutBehavior' : ButtonBarLayoutBehaviorClassBinding(),
      'MaterialPointArcTween' : MaterialPointArcTweenClassBinding(),
      'MaterialRectArcTween' : MaterialRectArcTweenClassBinding(),
      'MaterialRectCenterArcTween' : MaterialRectCenterArcTweenClassBinding(),
      'LinearProgressIndicator' : LinearProgressIndicatorClassBinding(),
      'CircularProgressIndicator' : CircularProgressIndicatorClassBinding(),
      'RefreshProgressIndicator' : RefreshProgressIndicatorClassBinding(),
      'ListTileTheme' : ListTileThemeClassBinding(),
      'ListTile' : ListTileClassBinding(),
      'ListTileStyle' : ListTileStyleClassBinding(),
      'ListTileControlAffinity' : ListTileControlAffinityClassBinding(),
      'ExpansionTile' : ExpansionTileClassBinding(),
      'BottomSheet' : BottomSheetClassBinding(),
      'MaterialTextSelectionControls' : MaterialTextSelectionControlsClassBinding(),
      'DividerThemeData' : DividerThemeDataClassBinding(),
      'DividerTheme' : DividerThemeClassBinding(),
      'DataTableThemeData' : DataTableThemeDataClassBinding(),
      'DataTableTheme' : DataTableThemeClassBinding(),
      'DefaultMaterialLocalizations' : DefaultMaterialLocalizationsClassBinding(),
      'Typography' : TypographyClassBinding(),
      'ScriptCategory' : ScriptCategoryClassBinding(),
      'OutlinedButton' : OutlinedButtonClassBinding(),
      'Divider' : DividerClassBinding(),
      'VerticalDivider' : VerticalDividerClassBinding(),
      'SliderTheme' : SliderThemeClassBinding(),
      'SliderThemeData' : SliderThemeDataClassBinding(),
      'RectangularSliderTrackShape' : RectangularSliderTrackShapeClassBinding(),
      'RoundedRectSliderTrackShape' : RoundedRectSliderTrackShapeClassBinding(),
      'RectangularRangeSliderTrackShape' : RectangularRangeSliderTrackShapeClassBinding(),
      'RoundedRectRangeSliderTrackShape' : RoundedRectRangeSliderTrackShapeClassBinding(),
      'RoundSliderTickMarkShape' : RoundSliderTickMarkShapeClassBinding(),
      'RoundRangeSliderTickMarkShape' : RoundRangeSliderTickMarkShapeClassBinding(),
      'RoundSliderThumbShape' : RoundSliderThumbShapeClassBinding(),
      'RoundRangeSliderThumbShape' : RoundRangeSliderThumbShapeClassBinding(),
      'RoundSliderOverlayShape' : RoundSliderOverlayShapeClassBinding(),
      'RectangularSliderValueIndicatorShape' : RectangularSliderValueIndicatorShapeClassBinding(),
      'RectangularRangeSliderValueIndicatorShape' : RectangularRangeSliderValueIndicatorShapeClassBinding(),
      'PaddleSliderValueIndicatorShape' : PaddleSliderValueIndicatorShapeClassBinding(),
      'PaddleRangeSliderValueIndicatorShape' : PaddleRangeSliderValueIndicatorShapeClassBinding(),
      'RangeValues' : RangeValuesClassBinding(),
      'RangeLabels' : RangeLabelsClassBinding(),
      'ShowValueIndicator' : ShowValueIndicatorClassBinding(),
      'Thumb' : ThumbClassBinding(),
      'ChipTheme' : ChipThemeClassBinding(),
      'ChipThemeData' : ChipThemeDataClassBinding(),
      'MaterialSlice' : MaterialSliceClassBinding(),
      'MaterialGap' : MaterialGapClassBinding(),
      'MergeableMaterial' : MergeableMaterialClassBinding(),
      'Drawer' : DrawerClassBinding(),
      'DrawerController' : DrawerControllerClassBinding(),
      'DrawerControllerState' : DrawerControllerStateClassBinding(),
      'DrawerAlignment' : DrawerAlignmentClassBinding(),
      'DateUtils' : DateUtilsClassBinding(),
      'DateTimeRange' : DateTimeRangeClassBinding(),
      'DatePickerEntryMode' : DatePickerEntryModeClassBinding(),
      'DatePickerMode' : DatePickerModeClassBinding(),
      'SnackBarThemeData' : SnackBarThemeDataClassBinding(),
      'SnackBarBehavior' : SnackBarBehaviorClassBinding(),
      'AnimatedIcon' : AnimatedIconClassBinding(),
      'ThemeData' : ThemeDataClassBinding(),
      'MaterialBasedCupertinoThemeData' : MaterialBasedCupertinoThemeDataClassBinding(),
      'VisualDensity' : VisualDensityClassBinding(),
      'MaterialTapTargetSize' : MaterialTapTargetSizeClassBinding(),
      'FlexibleSpaceBar' : FlexibleSpaceBarClassBinding(),
      'FlexibleSpaceBarSettings' : FlexibleSpaceBarSettingsClassBinding(),
      'CollapseMode' : CollapseModeClassBinding(),
      'StretchMode' : StretchModeClassBinding(),
      'Switch' : SwitchClassBinding(),
      'Scrollbar' : ScrollbarClassBinding(),
      'ButtonStyle' : ButtonStyleClassBinding(),
      'BottomNavigationBar' : BottomNavigationBarClassBinding(),
      'BottomNavigationBarType' : BottomNavigationBarTypeClassBinding(),
      'MaterialApp' : MaterialAppClassBinding(),
      'ThemeMode' : ThemeModeClassBinding(),
      'Icons' : IconsClassBinding(),
      'Autocomplete' : AutocompleteClassBinding(),
      'InkSplash' : InkSplashClassBinding(),
      'ExpansionPanel' : ExpansionPanelClassBinding(),
      'ExpansionPanelRadio' : ExpansionPanelRadioClassBinding(),
      'ExpansionPanelList' : ExpansionPanelListClassBinding(),
      'ButtonBarThemeData' : ButtonBarThemeDataClassBinding(),
      'ButtonBarTheme' : ButtonBarThemeClassBinding(),
      'Theme' : ThemeClassBinding(),
      'ThemeDataTween' : ThemeDataTweenClassBinding(),
      'AnimatedTheme' : AnimatedThemeClassBinding(),
      'IconButton' : IconButtonClassBinding(),
      'OutlineButton' : OutlineButtonClassBinding(),
      'ToggleButtons' : ToggleButtonsClassBinding(),
      'FlatButton' : FlatButtonClassBinding(),
      'RawKeyEventDataLinux' : RawKeyEventDataLinuxClassBinding(),
      'GLFWKeyHelper' : GLFWKeyHelperClassBinding(),
      'GtkKeyHelper' : GtkKeyHelperClassBinding(),
      'BasicMessageChannel' : BasicMessageChannelClassBinding(),
      'MethodChannel' : MethodChannelClassBinding(),
      'OptionalMethodChannel' : OptionalMethodChannelClassBinding(),
      'EventChannel' : EventChannelClassBinding(),
      'LogicalKeyboardKey' : LogicalKeyboardKeyClassBinding(),
      'PhysicalKeyboardKey' : PhysicalKeyboardKeyClassBinding(),
      'RawKeyEventDataAndroid' : RawKeyEventDataAndroidClassBinding(),
      'RawKeyEventDataWeb' : RawKeyEventDataWebClassBinding(),
      'TextSelection' : TextSelectionClassBinding(),
      'BinaryMessages' : BinaryMessagesClassBinding(),
      'RawKeyEventDataIos' : RawKeyEventDataIosClassBinding(),
      'SystemSound' : SystemSoundClassBinding(),
      'SystemSoundType' : SystemSoundTypeClassBinding(),
      'SystemNavigator' : SystemNavigatorClassBinding(),
      'HapticFeedback' : HapticFeedbackClassBinding(),
      'ClipboardData' : ClipboardDataClassBinding(),
      'Clipboard' : ClipboardClassBinding(),
      'FontLoader' : FontLoaderClassBinding(),
      'TextInputType' : TextInputTypeClassBinding(),
      'TextInputConfiguration' : TextInputConfigurationClassBinding(),
      'RawFloatingCursorPoint' : RawFloatingCursorPointClassBinding(),
      'TextEditingValue' : TextEditingValueClassBinding(),
      'TextInput' : TextInputClassBinding(),
      'SmartDashesType' : SmartDashesTypeClassBinding(),
      'SmartQuotesType' : SmartQuotesTypeClassBinding(),
      'TextInputAction' : TextInputActionClassBinding(),
      'TextCapitalization' : TextCapitalizationClassBinding(),
      'FloatingCursorDragState' : FloatingCursorDragStateClassBinding(),
      'NetworkAssetBundle' : NetworkAssetBundleClassBinding(),
      'PlatformAssetBundle' : PlatformAssetBundleClassBinding(),
      'FilteringTextInputFormatter' : FilteringTextInputFormatterClassBinding(),
      'BlacklistingTextInputFormatter' : BlacklistingTextInputFormatterClassBinding(),
      'WhitelistingTextInputFormatter' : WhitelistingTextInputFormatterClassBinding(),
      'LengthLimitingTextInputFormatter' : LengthLimitingTextInputFormatterClassBinding(),
      'MaxLengthEnforcement' : MaxLengthEnforcementClassBinding(),
      'RawKeyEventDataMacOs' : RawKeyEventDataMacOsClassBinding(),
      'ApplicationSwitcherDescription' : ApplicationSwitcherDescriptionClassBinding(),
      'SystemUiOverlayStyle' : SystemUiOverlayStyleClassBinding(),
      'SystemChrome' : SystemChromeClassBinding(),
      'DeviceOrientation' : DeviceOrientationClassBinding(),
      'SystemUiOverlay' : SystemUiOverlayClassBinding(),
      'SystemChannels' : SystemChannelsClassBinding(),
      'RawKeyEventDataFuchsia' : RawKeyEventDataFuchsiaClassBinding(),
      'RawKeyEventDataWindows' : RawKeyEventDataWindowsClassBinding(),
      'RawKeyDownEvent' : RawKeyDownEventClassBinding(),
      'RawKeyUpEvent' : RawKeyUpEventClassBinding(),
      'RawKeyboard' : RawKeyboardClassBinding(),
      'KeyboardSide' : KeyboardSideClassBinding(),
      'ModifierKey' : ModifierKeyClassBinding(),
      'PlatformViewsService' : PlatformViewsServiceClassBinding(),
      'AndroidPointerProperties' : AndroidPointerPropertiesClassBinding(),
      'AndroidPointerCoords' : AndroidPointerCoordsClassBinding(),
      'AndroidMotionEvent' : AndroidMotionEventClassBinding(),
      'RestorationManager' : RestorationManagerClassBinding(),
      'RestorationBucket' : RestorationBucketClassBinding(),
      'BinaryCodec' : BinaryCodecClassBinding(),
      'StringCodec' : StringCodecClassBinding(),
      'JSONMessageCodec' : JSONMessageCodecClassBinding(),
      'JSONMethodCodec' : JSONMethodCodecClassBinding(),
      'StandardMessageCodec' : StandardMessageCodecClassBinding(),
      'StandardMethodCodec' : StandardMethodCodecClassBinding(),
      'AutofillHints' : AutofillHintsClassBinding(),
      'AutofillConfiguration' : AutofillConfigurationClassBinding(),
      'MethodCall' : MethodCallClassBinding(),
      'PlatformException' : PlatformExceptionClassBinding(),
      'MissingPluginException' : MissingPluginExceptionClassBinding(),
      'DeferredComponent' : DeferredComponentClassBinding(),
      'SingleChildScrollView' : SingleChildScrollViewClassBinding(),
      'BoxConstraintsTween' : BoxConstraintsTweenClassBinding(),
      'DecorationTween' : DecorationTweenClassBinding(),
      'EdgeInsetsTween' : EdgeInsetsTweenClassBinding(),
      'EdgeInsetsGeometryTween' : EdgeInsetsGeometryTweenClassBinding(),
      'BorderRadiusTween' : BorderRadiusTweenClassBinding(),
      'BorderTween' : BorderTweenClassBinding(),
      'Matrix4Tween' : Matrix4TweenClassBinding(),
      'TextStyleTween' : TextStyleTweenClassBinding(),
      'AnimatedContainer' : AnimatedContainerClassBinding(),
      'AnimatedPadding' : AnimatedPaddingClassBinding(),
      'AnimatedAlign' : AnimatedAlignClassBinding(),
      'AnimatedPositioned' : AnimatedPositionedClassBinding(),
      'AnimatedPositionedDirectional' : AnimatedPositionedDirectionalClassBinding(),
      'AnimatedOpacity' : AnimatedOpacityClassBinding(),
      'SliverAnimatedOpacity' : SliverAnimatedOpacityClassBinding(),
      'AnimatedDefaultTextStyle' : AnimatedDefaultTextStyleClassBinding(),
      'AnimatedPhysicalModel' : AnimatedPhysicalModelClassBinding(),
      'AnimatedCrossFade' : AnimatedCrossFadeClassBinding(),
      'CrossFadeState' : CrossFadeStateClassBinding(),
      'GridPaper' : GridPaperClassBinding(),
      'TweenAnimationBuilder' : TweenAnimationBuilderClassBinding(),
      'WidgetSpan' : WidgetSpanClassBinding(),
      'FixedScrollMetrics' : FixedScrollMetricsClassBinding(),
      'SlideTransition' : SlideTransitionClassBinding(),
      'ScaleTransition' : ScaleTransitionClassBinding(),
      'RotationTransition' : RotationTransitionClassBinding(),
      'SizeTransition' : SizeTransitionClassBinding(),
      'FadeTransition' : FadeTransitionClassBinding(),
      'SliverFadeTransition' : SliverFadeTransitionClassBinding(),
      'RelativeRectTween' : RelativeRectTweenClassBinding(),
      'PositionedTransition' : PositionedTransitionClassBinding(),
      'RelativePositionedTransition' : RelativePositionedTransitionClassBinding(),
      'DecoratedBoxTransition' : DecoratedBoxTransitionClassBinding(),
      'AlignTransition' : AlignTransitionClassBinding(),
      'DefaultTextStyleTransition' : DefaultTextStyleTransitionClassBinding(),
      'AnimatedBuilder' : AnimatedBuilderClassBinding(),
      'SliverPersistentHeader' : SliverPersistentHeaderClassBinding(),
      'PageStorageKey' : PageStorageKeyClassBinding(),
      'PageStorageBucket' : PageStorageBucketClassBinding(),
      'PageStorage' : PageStorageClassBinding(),
      'RouteInformation' : RouteInformationClassBinding(),
      'Router' : RouterClassBinding(),
      'RootBackButtonDispatcher' : RootBackButtonDispatcherClassBinding(),
      'ChildBackButtonDispatcher' : ChildBackButtonDispatcherClassBinding(),
      'PlatformRouteInformationProvider' : PlatformRouteInformationProviderClassBinding(),
      'LocalHistoryEntry' : LocalHistoryEntryClassBinding(),
      'RouteObserver' : RouteObserverClassBinding(),
      'RawDialogRoute' : RawDialogRouteClassBinding(),
      'Directionality' : DirectionalityClassBinding(),
      'Opacity' : OpacityClassBinding(),
      'ShaderMask' : ShaderMaskClassBinding(),
      'BackdropFilter' : BackdropFilterClassBinding(),
      'CustomPaint' : CustomPaintClassBinding(),
      'ClipRect' : ClipRectClassBinding(),
      'ClipRRect' : ClipRRectClassBinding(),
      'ClipOval' : ClipOvalClassBinding(),
      'ClipPath' : ClipPathClassBinding(),
      'PhysicalModel' : PhysicalModelClassBinding(),
      'PhysicalShape' : PhysicalShapeClassBinding(),
      'Transform' : TransformClassBinding(),
      'CompositedTransformTarget' : CompositedTransformTargetClassBinding(),
      'CompositedTransformFollower' : CompositedTransformFollowerClassBinding(),
      'FittedBox' : FittedBoxClassBinding(),
      'FractionalTranslation' : FractionalTranslationClassBinding(),
      'RotatedBox' : RotatedBoxClassBinding(),
      'Padding' : PaddingClassBinding(),
      'Align' : AlignClassBinding(),
      'Center' : CenterClassBinding(),
      'CustomSingleChildLayout' : CustomSingleChildLayoutClassBinding(),
      'LayoutId' : LayoutIdClassBinding(),
      'CustomMultiChildLayout' : CustomMultiChildLayoutClassBinding(),
      'SizedBox' : SizedBoxClassBinding(),
      'ConstrainedBox' : ConstrainedBoxClassBinding(),
      'UnconstrainedBox' : UnconstrainedBoxClassBinding(),
      'FractionallySizedBox' : FractionallySizedBoxClassBinding(),
      'LimitedBox' : LimitedBoxClassBinding(),
      'OverflowBox' : OverflowBoxClassBinding(),
      'SizedOverflowBox' : SizedOverflowBoxClassBinding(),
      'Offstage' : OffstageClassBinding(),
      'AspectRatio' : AspectRatioClassBinding(),
      'IntrinsicWidth' : IntrinsicWidthClassBinding(),
      'IntrinsicHeight' : IntrinsicHeightClassBinding(),
      'Baseline' : BaselineClassBinding(),
      'SliverToBoxAdapter' : SliverToBoxAdapterClassBinding(),
      'SliverPadding' : SliverPaddingClassBinding(),
      'ListBody' : ListBodyClassBinding(),
      'Stack' : StackClassBinding(),
      'IndexedStack' : IndexedStackClassBinding(),
      'Positioned' : PositionedClassBinding(),
      'PositionedDirectional' : PositionedDirectionalClassBinding(),
      'Flex' : FlexClassBinding(),
      'Row' : RowClassBinding(),
      'Column' : ColumnClassBinding(),
      'Flexible' : FlexibleClassBinding(),
      'Expanded' : ExpandedClassBinding(),
      'Wrap' : WrapClassBinding(),
      'Flow' : FlowClassBinding(),
      'RichText' : RichTextClassBinding(),
      'RawImage' : RawImageClassBinding(),
      'DefaultAssetBundle' : DefaultAssetBundleClassBinding(),
      'WidgetToRenderBoxAdapter' : WidgetToRenderBoxAdapterClassBinding(),
      'Listener' : ListenerClassBinding(),
      'MouseRegion' : MouseRegionClassBinding(),
      'RepaintBoundary' : RepaintBoundaryClassBinding(),
      'IgnorePointer' : IgnorePointerClassBinding(),
      'AbsorbPointer' : AbsorbPointerClassBinding(),
      'MetaData' : MetaDataClassBinding(),
      'Semantics' : SemanticsClassBinding(),
      'MergeSemantics' : MergeSemanticsClassBinding(),
      'BlockSemantics' : BlockSemanticsClassBinding(),
      'ExcludeSemantics' : ExcludeSemanticsClassBinding(),
      'IndexedSemantics' : IndexedSemanticsClassBinding(),
      'KeyedSubtree' : KeyedSubtreeClassBinding(),
      'Builder' : BuilderClassBinding(),
      'StatefulBuilder' : StatefulBuilderClassBinding(),
      'ColoredBox' : ColoredBoxClassBinding(),
      'DisposableBuildContext' : DisposableBuildContextClassBinding(),
      'GestureRecognizerFactoryWithHandlers' : GestureRecognizerFactoryWithHandlersClassBinding(),
      'GestureDetector' : GestureDetectorClassBinding(),
      'RawGestureDetector' : RawGestureDetectorClassBinding(),
      'RawGestureDetectorState' : RawGestureDetectorStateClassBinding(),
      'RestorableNum' : RestorableNumClassBinding(),
      'RestorableDouble' : RestorableDoubleClassBinding(),
      'RestorableInt' : RestorableIntClassBinding(),
      'RestorableString' : RestorableStringClassBinding(),
      'RestorableBool' : RestorableBoolClassBinding(),
      'RestorableBoolN' : RestorableBoolNClassBinding(),
      'RestorableNumN' : RestorableNumNClassBinding(),
      'RestorableDoubleN' : RestorableDoubleNClassBinding(),
      'RestorableIntN' : RestorableIntNClassBinding(),
      'RestorableStringN' : RestorableStringNClassBinding(),
      'RestorableTextEditingController' : RestorableTextEditingControllerClassBinding(),
      'StreamBuilder' : StreamBuilderClassBinding(),
      'FutureBuilder' : FutureBuilderClassBinding(),
      'ConnectionState' : ConnectionStateClassBinding(),
      'DefaultTextStyle' : DefaultTextStyleClassBinding(),
      'DefaultTextHeightBehavior' : DefaultTextHeightBehaviorClassBinding(),
      'Text' : TextClassBinding(),
      'ActionListener' : ActionListenerClassBinding(),
      'CallbackAction' : CallbackActionClassBinding(),
      'ActionDispatcher' : ActionDispatcherClassBinding(),
      'Actions' : ActionsClassBinding(),
      'FocusableActionDetector' : FocusableActionDetectorClassBinding(),
      'DoNothingAction' : DoNothingActionClassBinding(),
      'ActivateIntent' : ActivateIntentClassBinding(),
      'ButtonActivateIntent' : ButtonActivateIntentClassBinding(),
      'SelectIntent' : SelectIntentClassBinding(),
      'DismissIntent' : DismissIntentClassBinding(),
      'PrioritizedIntents' : PrioritizedIntentsClassBinding(),
      'PrioritizedAction' : PrioritizedActionClassBinding(),
      'Form' : FormClassBinding(),
      'FormState' : FormStateClassBinding(),
      'FormField' : FormFieldClassBinding(),
      'FormFieldState' : FormFieldStateClassBinding(),
      'AutovalidateMode' : AutovalidateModeClassBinding(),
      'Image' : ImageClassBinding(),
      'IconThemeData' : IconThemeDataClassBinding(),
      'Texture' : TextureClassBinding(),
      'NestedScrollView' : NestedScrollViewClassBinding(),
      'NestedScrollViewState' : NestedScrollViewStateClassBinding(),
      'SliverOverlapAbsorberHandle' : SliverOverlapAbsorberHandleClassBinding(),
      'SliverOverlapAbsorber' : SliverOverlapAbsorberClassBinding(),
      'RenderSliverOverlapAbsorber' : RenderSliverOverlapAbsorberClassBinding(),
      'SliverOverlapInjector' : SliverOverlapInjectorClassBinding(),
      'RenderSliverOverlapInjector' : RenderSliverOverlapInjectorClassBinding(),
      'NestedScrollViewViewport' : NestedScrollViewViewportClassBinding(),
      'RenderNestedScrollViewViewport' : RenderNestedScrollViewViewportClassBinding(),
      'NavigationToolbar' : NavigationToolbarClassBinding(),
      'ReorderableList' : ReorderableListClassBinding(),
      'ReorderableListState' : ReorderableListStateClassBinding(),
      'SliverReorderableList' : SliverReorderableListClassBinding(),
      'SliverReorderableListState' : SliverReorderableListStateClassBinding(),
      'ReorderableDragStartListener' : ReorderableDragStartListenerClassBinding(),
      'ReorderableDelayedDragStartListener' : ReorderableDelayedDragStartListenerClassBinding(),
      'PageRouteBuilder' : PageRouteBuilderClassBinding(),
      'ScrollController' : ScrollControllerClassBinding(),
      'TrackingScrollController' : TrackingScrollControllerClassBinding(),
      'SliverLayoutBuilder' : SliverLayoutBuilderClassBinding(),
      'RouteSettings' : RouteSettingsClassBinding(),
      'NavigatorObserver' : NavigatorObserverClassBinding(),
      'HeroControllerScope' : HeroControllerScopeClassBinding(),
      'DefaultTransitionDelegate' : DefaultTransitionDelegateClassBinding(),
      'Navigator' : NavigatorClassBinding(),
      'NavigatorState' : NavigatorStateClassBinding(),
      'RestorableRouteFuture' : RestorableRouteFutureClassBinding(),
      'RoutePopDisposition' : RoutePopDispositionClassBinding(),
      'PreferredSize' : PreferredSizeClassBinding(),
      'ValueListenableBuilder' : ValueListenableBuilderClassBinding(),
      'MediaQueryData' : MediaQueryDataClassBinding(),
      'MediaQuery' : MediaQueryClassBinding(),
      'Orientation' : OrientationClassBinding(),
      'NavigationMode' : NavigationModeClassBinding(),
      'DraggableScrollableSheet' : DraggableScrollableSheetClassBinding(),
      'DraggableScrollableNotification' : DraggableScrollableNotificationClassBinding(),
      'DraggableScrollableActuator' : DraggableScrollableActuatorClassBinding(),
      'DecoratedBox' : DecoratedBoxClassBinding(),
      'Container' : ContainerClassBinding(),
      'ScrollAwareImageProvider' : ScrollAwareImageProviderClassBinding(),
      'TextEditingController' : TextEditingControllerClassBinding(),
      'ToolbarOptions' : ToolbarOptionsClassBinding(),
      'EditableText' : EditableTextClassBinding(),
      'EditableTextState' : EditableTextStateClassBinding(),
      'Placeholder' : PlaceholderClassBinding(),
      'Icon' : IconClassBinding(),
      'BottomNavigationBarItem' : BottomNavigationBarItemClassBinding(),
      'LayoutBuilder' : LayoutBuilderClassBinding(),
      'PrimaryScrollController' : PrimaryScrollControllerClassBinding(),
      'ScrollPositionAlignmentPolicy' : ScrollPositionAlignmentPolicyClassBinding(),
      'ImageIcon' : ImageIconClassBinding(),
      'Scrollable' : ScrollableClassBinding(),
      'ScrollableState' : ScrollableStateClassBinding(),
      'ScrollIncrementDetails' : ScrollIncrementDetailsClassBinding(),
      'ScrollIntent' : ScrollIntentClassBinding(),
      'ScrollAction' : ScrollActionClassBinding(),
      'ScrollIncrementType' : ScrollIncrementTypeClassBinding(),
      'OrientationBuilder' : OrientationBuilderClassBinding(),
      'FocusNode' : FocusNodeClassBinding(),
      'FocusScopeNode' : FocusScopeNodeClassBinding(),
      'FocusManager' : FocusManagerClassBinding(),
      'KeyEventResult' : KeyEventResultClassBinding(),
      'UnfocusDisposition' : UnfocusDispositionClassBinding(),
      'FocusHighlightMode' : FocusHighlightModeClassBinding(),
      'FocusHighlightStrategy' : FocusHighlightStrategyClassBinding(),
      'WidgetOrderTraversalPolicy' : WidgetOrderTraversalPolicyClassBinding(),
      'ReadingOrderTraversalPolicy' : ReadingOrderTraversalPolicyClassBinding(),
      'NumericFocusOrder' : NumericFocusOrderClassBinding(),
      'LexicalFocusOrder' : LexicalFocusOrderClassBinding(),
      'OrderedTraversalPolicy' : OrderedTraversalPolicyClassBinding(),
      'FocusTraversalOrder' : FocusTraversalOrderClassBinding(),
      'FocusTraversalGroup' : FocusTraversalGroupClassBinding(),
      'RequestFocusIntent' : RequestFocusIntentClassBinding(),
      'RequestFocusAction' : RequestFocusActionClassBinding(),
      'NextFocusIntent' : NextFocusIntentClassBinding(),
      'NextFocusAction' : NextFocusActionClassBinding(),
      'PreviousFocusIntent' : PreviousFocusIntentClassBinding(),
      'PreviousFocusAction' : PreviousFocusActionClassBinding(),
      'DirectionalFocusIntent' : DirectionalFocusIntentClassBinding(),
      'DirectionalFocusAction' : DirectionalFocusActionClassBinding(),
      'TraversalDirection' : TraversalDirectionClassBinding(),
      'ColorFiltered' : ColorFilteredClassBinding(),
      'Title' : TitleClassBinding(),
      'AnimatedSwitcher' : AnimatedSwitcherClassBinding(),
      'SliverPrototypeExtentList' : SliverPrototypeExtentListClassBinding(),
      'TableRow' : TableRowClassBinding(),
      'Table' : TableClassBinding(),
      'TableCell' : TableCellClassBinding(),
      'InheritedModelElement' : InheritedModelElementClassBinding(),
      'DualTransitionBuilder' : DualTransitionBuilderClassBinding(),
      'Visibility' : VisibilityClassBinding(),
      'SliverVisibility' : SliverVisibilityClassBinding(),
      'AnnotatedRegion' : AnnotatedRegionClassBinding(),
      'BannerPainter' : BannerPainterClassBinding(),
      'Banner' : BannerClassBinding(),
      'CheckedModeBanner' : CheckedModeBannerClassBinding(),
      'BannerLocation' : BannerLocationClassBinding(),
      'NotificationListener' : NotificationListenerClassBinding(),
      'LayoutChangedNotification' : LayoutChangedNotificationClassBinding(),
      'PerformanceOverlay' : PerformanceOverlayClassBinding(),
      'PageController' : PageControllerClassBinding(),
      'PageMetrics' : PageMetricsClassBinding(),
      'PageScrollPhysics' : PageScrollPhysicsClassBinding(),
      'PageView' : PageViewClassBinding(),
      'KeySet' : KeySetClassBinding(),
      'LogicalKeySet' : LogicalKeySetClassBinding(),
      'ShortcutMapProperty' : ShortcutMapPropertyClassBinding(),
      'ShortcutManager' : ShortcutManagerClassBinding(),
      'Shortcuts' : ShortcutsClassBinding(),
      'ImageFiltered' : ImageFilteredClassBinding(),
      'Draggable' : DraggableClassBinding(),
      'LongPressDraggable' : LongPressDraggableClassBinding(),
      'DraggableDetails' : DraggableDetailsClassBinding(),
      'DragTargetDetails' : DragTargetDetailsClassBinding(),
      'DragTarget' : DragTargetClassBinding(),
      'DragAnchor' : DragAnchorClassBinding(),
      'GlowingOverscrollIndicator' : GlowingOverscrollIndicatorClassBinding(),
      'OverscrollIndicatorNotification' : OverscrollIndicatorNotificationClassBinding(),
      'Hero' : HeroClassBinding(),
      'HeroController' : HeroControllerClassBinding(),
      'HeroMode' : HeroModeClassBinding(),
      'HeroFlightDirection' : HeroFlightDirectionClassBinding(),
      'SizeChangedLayoutNotification' : SizeChangedLayoutNotificationClassBinding(),
      'SizeChangedLayoutNotifier' : SizeChangedLayoutNotifierClassBinding(),
      'WidgetInspector' : WidgetInspectorClassBinding(),
      'InspectorSelection' : InspectorSelectionClassBinding(),
      'DevToolsDeepLinkProperty' : DevToolsDeepLinkPropertyClassBinding(),
      'InspectorSerializationDelegate' : InspectorSerializationDelegateClassBinding(),
      'Viewport' : ViewportClassBinding(),
      'ShrinkWrappingViewport' : ShrinkWrappingViewportClassBinding(),
      'AutomaticKeepAlive' : AutomaticKeepAliveClassBinding(),
      'KeepAliveNotification' : KeepAliveNotificationClassBinding(),
      'KeepAliveHandle' : KeepAliveHandleClassBinding(),
      'UniqueKey' : UniqueKeyClassBinding(),
      'ObjectKey' : ObjectKeyClassBinding(),
      'LabeledGlobalKey' : LabeledGlobalKeyClassBinding(),
      'GlobalObjectKey' : GlobalObjectKeyClassBinding(),
      'TypeMatcher' : TypeMatcherClassBinding(),
      'BuildOwner' : BuildOwnerClassBinding(),
      'ErrorWidget' : ErrorWidgetClassBinding(),
      'StatelessElement' : StatelessElementClassBinding(),
      'StatefulElement' : StatefulElementClassBinding(),
      'ParentDataElement' : ParentDataElementClassBinding(),
      'InheritedElement' : InheritedElementClassBinding(),
      'LeafRenderObjectElement' : LeafRenderObjectElementClassBinding(),
      'SingleChildRenderObjectElement' : SingleChildRenderObjectElementClassBinding(),
      'MultiChildRenderObjectElement' : MultiChildRenderObjectElementClassBinding(),
      'DebugCreator' : DebugCreatorClassBinding(),
      'IndexedSlot' : IndexedSlotClassBinding(),
      'ScrollBehavior' : ScrollBehaviorClassBinding(),
      'ScrollConfiguration' : ScrollConfigurationClassBinding(),
      'IconTheme' : IconThemeClassBinding(),
      'SemanticsDebugger' : SemanticsDebuggerClassBinding(),
      'ToolbarItemsParentData' : ToolbarItemsParentDataClassBinding(),
      'TextSelectionOverlay' : TextSelectionOverlayClassBinding(),
      'TextSelectionGestureDetectorBuilder' : TextSelectionGestureDetectorBuilderClassBinding(),
      'TextSelectionGestureDetector' : TextSelectionGestureDetectorClassBinding(),
      'ClipboardStatusNotifier' : ClipboardStatusNotifierClassBinding(),
      'TextSelectionHandleType' : TextSelectionHandleTypeClassBinding(),
      'ClipboardStatus' : ClipboardStatusClassBinding(),
      'TickerMode' : TickerModeClassBinding(),
      'RestorationScope' : RestorationScopeClassBinding(),
      'UnmanagedRestorationScope' : UnmanagedRestorationScopeClassBinding(),
      'RootRestorationScope' : RootRestorationScopeClassBinding(),
      'AnimatedList' : AnimatedListClassBinding(),
      'AnimatedListState' : AnimatedListStateClassBinding(),
      'SliverAnimatedList' : SliverAnimatedListClassBinding(),
      'SliverAnimatedListState' : SliverAnimatedListStateClassBinding(),
      'ScrollPhysics' : ScrollPhysicsClassBinding(),
      'RangeMaintainingScrollPhysics' : RangeMaintainingScrollPhysicsClassBinding(),
      'BouncingScrollPhysics' : BouncingScrollPhysicsClassBinding(),
      'ClampingScrollPhysics' : ClampingScrollPhysicsClassBinding(),
      'AlwaysScrollableScrollPhysics' : AlwaysScrollableScrollPhysicsClassBinding(),
      'NeverScrollableScrollPhysics' : NeverScrollableScrollPhysicsClassBinding(),
      'IconData' : IconDataClassBinding(),
      'IconDataProperty' : IconDataPropertyClassBinding(),
      'OverflowBar' : OverflowBarClassBinding(),
      'OverflowBarAlignment' : OverflowBarAlignmentClassBinding(),
      'FadeInImage' : FadeInImageClassBinding(),
      'Focus' : FocusClassBinding(),
      'FocusScope' : FocusScopeClassBinding(),
      'ExcludeFocus' : ExcludeFocusClassBinding(),
      'ModalBarrier' : ModalBarrierClassBinding(),
      'AnimatedModalBarrier' : AnimatedModalBarrierClassBinding(),
      'InteractiveViewer' : InteractiveViewerClassBinding(),
      'TransformationController' : TransformationControllerClassBinding(),
      'AutofillGroup' : AutofillGroupClassBinding(),
      'AutofillGroupState' : AutofillGroupStateClassBinding(),
      'AutofillContextAction' : AutofillContextActionClassBinding(),
      'IdleScrollActivity' : IdleScrollActivityClassBinding(),
      'HoldScrollActivity' : HoldScrollActivityClassBinding(),
      'ScrollDragController' : ScrollDragControllerClassBinding(),
      'DragScrollActivity' : DragScrollActivityClassBinding(),
      'BallisticScrollActivity' : BallisticScrollActivityClassBinding(),
      'DrivenScrollActivity' : DrivenScrollActivityClassBinding(),
      'ListWheelChildListDelegate' : ListWheelChildListDelegateClassBinding(),
      'ListWheelChildLoopingListDelegate' : ListWheelChildLoopingListDelegateClassBinding(),
      'ListWheelChildBuilderDelegate' : ListWheelChildBuilderDelegateClassBinding(),
      'FixedExtentScrollController' : FixedExtentScrollControllerClassBinding(),
      'FixedExtentMetrics' : FixedExtentMetricsClassBinding(),
      'FixedExtentScrollPhysics' : FixedExtentScrollPhysicsClassBinding(),
      'ListWheelScrollView' : ListWheelScrollViewClassBinding(),
      'ListWheelElement' : ListWheelElementClassBinding(),
      'ListWheelViewport' : ListWheelViewportClassBinding(),
      'SliverChildBuilderDelegate' : SliverChildBuilderDelegateClassBinding(),
      'SliverChildListDelegate' : SliverChildListDelegateClassBinding(),
      'SliverList' : SliverListClassBinding(),
      'SliverFixedExtentList' : SliverFixedExtentListClassBinding(),
      'SliverGrid' : SliverGridClassBinding(),
      'SliverMultiBoxAdaptorElement' : SliverMultiBoxAdaptorElementClassBinding(),
      'SliverOpacity' : SliverOpacityClassBinding(),
      'SliverIgnorePointer' : SliverIgnorePointerClassBinding(),
      'SliverOffstage' : SliverOffstageClassBinding(),
      'KeepAlive' : KeepAliveClassBinding(),
      'Dismissible' : DismissibleClassBinding(),
      'DismissDirection' : DismissDirectionClassBinding(),
      'ScrollPositionWithSingleContext' : ScrollPositionWithSingleContextClassBinding(),
      'WillPopScope' : WillPopScopeClassBinding(),
      'TextSelectionToolbarLayoutDelegate' : TextSelectionToolbarLayoutDelegateClassBinding(),
      'DesktopTextSelectionToolbarLayoutDelegate' : DesktopTextSelectionToolbarLayoutDelegateClassBinding(),
      'SafeArea' : SafeAreaClassBinding(),
      'SliverSafeArea' : SliverSafeAreaClassBinding(),
      'ScrollbarPainter' : ScrollbarPainterClassBinding(),
      'RawScrollbar' : RawScrollbarClassBinding(),
      'RawScrollbarState' : RawScrollbarStateClassBinding(),
      'AndroidView' : AndroidViewClassBinding(),
      'UiKitView' : UiKitViewClassBinding(),
      'HtmlElementView' : HtmlElementViewClassBinding(),
      'PlatformViewLink' : PlatformViewLinkClassBinding(),
      'PlatformViewSurface' : PlatformViewSurfaceClassBinding(),
      'AndroidViewSurface' : AndroidViewSurfaceClassBinding(),
      'WidgetsApp' : WidgetsAppClassBinding(),
      'RawAutocomplete' : RawAutocompleteClassBinding(),
      'ScrollStartNotification' : ScrollStartNotificationClassBinding(),
      'ScrollUpdateNotification' : ScrollUpdateNotificationClassBinding(),
      'OverscrollNotification' : OverscrollNotificationClassBinding(),
      'ScrollEndNotification' : ScrollEndNotificationClassBinding(),
      'UserScrollNotification' : UserScrollNotificationClassBinding(),
      'OverlayEntry' : OverlayEntryClassBinding(),
      'Overlay' : OverlayClassBinding(),
      'OverlayState' : OverlayStateClassBinding(),
      'BouncingScrollSimulation' : BouncingScrollSimulationClassBinding(),
      'ClampingScrollSimulation' : ClampingScrollSimulationClassBinding(),
      'RawKeyboardListener' : RawKeyboardListenerClassBinding(),
      'Spacer' : SpacerClassBinding(),
      'CustomScrollView' : CustomScrollViewClassBinding(),
      'ListView' : ListViewClassBinding(),
      'GridView' : GridViewClassBinding(),
      'ScrollViewKeyboardDismissBehavior' : ScrollViewKeyboardDismissBehaviorClassBinding(),
      'DefaultWidgetsLocalizations' : DefaultWidgetsLocalizationsClassBinding(),
      'Localizations' : LocalizationsClassBinding(),
      'SliverFillViewport' : SliverFillViewportClassBinding(),
      'SliverFillRemaining' : SliverFillRemainingClassBinding(),
      'AnimatedSize' : AnimatedSizeClassBinding(),
      'RenderObjectToWidgetAdapter' : RenderObjectToWidgetAdapterClassBinding(),
      'RenderObjectToWidgetElement' : RenderObjectToWidgetElementClassBinding(),
      'WidgetsFlutterBinding' : WidgetsFlutterBindingClassBinding(),
    };
    bindings.forEach((key, value) {
      interpreter.bindExternalNamespace(key, value);
    });
  }

  @mustCallSuper
  Future loadAutoBindingScripts(HT_Interpreter interpreter, String path) {
    var futures = <Future>[];
    futures.add(interpreter.evalf('$path/ui/window.ht'));
    futures.add(interpreter.evalf('$path/ui/channel_buffers.ht'));
    futures.add(interpreter.evalf('$path/ui/plugins.ht'));
    futures.add(interpreter.evalf('$path/ui/text.ht'));
    futures.add(interpreter.evalf('$path/ui/pointer.ht'));
    futures.add(interpreter.evalf('$path/ui/painting.ht'));
    futures.add(interpreter.evalf('$path/ui/semantics.ht'));
    futures.add(interpreter.evalf('$path/ui/geometry.ht'));
    futures.add(interpreter.evalf('$path/ui/compositing.ht'));
    futures.add(interpreter.evalf('$path/ui/platform_dispatcher.ht'));
    futures.add(interpreter.evalf('$path/math/point.ht'));
    futures.add(interpreter.evalf('$path/math/rectangle.ht'));
    futures.add(interpreter.evalf('$path/async/async_error.ht'));
    futures.add(interpreter.evalf('$path/async/future.ht'));
    futures.add(interpreter.evalf('$path/async/deferred_load.ht'));
    futures.add(interpreter.evalf('$path/async/stream.ht'));
    futures.add(interpreter.evalf('$path/convert/base64.ht'));
    futures.add(interpreter.evalf('$path/convert/ascii.ht'));
    futures.add(interpreter.evalf('$path/convert/utf.ht'));
    futures.add(interpreter.evalf('$path/convert/json.ht'));
    futures.add(interpreter.evalf('$path/convert/latin1.ht'));
    futures.add(interpreter.evalf('$path/convert/html_escape.ht'));
    futures.add(interpreter.evalf('$path/convert/line_splitter.ht'));
    futures.add(interpreter.evalf('$path/io/process.ht'));
    futures.add(interpreter.evalf('$path/io/string_transformer.ht'));
    futures.add(interpreter.evalf('$path/io/secure_server_socket.ht'));
    futures.add(interpreter.evalf('$path/io/stdio.ht'));
    futures.add(interpreter.evalf('$path/io/file_system_entity.ht'));
    futures.add(interpreter.evalf('$path/io/file.ht'));
    futures.add(interpreter.evalf('$path/io/socket.ht'));
    futures.add(interpreter.evalf('$path/io/common.ht'));
    futures.add(interpreter.evalf('$path/io/platform.ht'));
    futures.add(interpreter.evalf('$path/io/secure_socket.ht'));
    futures.add(interpreter.evalf('$path/io/data_transformer.ht'));
    futures.add(interpreter.evalf('$path/core/duration.ht'));
    futures.add(interpreter.evalf('$path/core/date_time.ht'));
    futures.add(interpreter.evalf('$path/core/stopwatch.ht'));
    futures.add(interpreter.evalf('$path/core/uri.ht'));
    futures.add(interpreter.evalf('$path/core/string_buffer.ht'));
    futures.add(interpreter.evalf('$path/scheduler/ticker.ht'));
    futures.add(interpreter.evalf('$path/scheduler/priority.ht'));
    futures.add(interpreter.evalf('$path/scheduler/binding.ht'));
    futures.add(interpreter.evalf('$path/animation/tween.ht'));
    futures.add(interpreter.evalf('$path/animation/tween_sequence.ht'));
    futures.add(interpreter.evalf('$path/animation/animation_controller.ht'));
    futures.add(interpreter.evalf('$path/animation/animation.ht'));
    futures.add(interpreter.evalf('$path/animation/curves.ht'));
    futures.add(interpreter.evalf('$path/animation/animations.ht'));
    futures.add(interpreter.evalf('$path/foundation/node.ht'));
    futures.add(interpreter.evalf('$path/foundation/serialization.ht'));
    futures.add(interpreter.evalf('$path/foundation/licenses.ht'));
    futures.add(interpreter.evalf('$path/foundation/observer_list.ht'));
    futures.add(interpreter.evalf('$path/foundation/synchronous_future.ht'));
    futures.add(interpreter.evalf('$path/foundation/unicode.ht'));
    futures.add(interpreter.evalf('$path/foundation/diagnostics.ht'));
    futures.add(interpreter.evalf('$path/foundation/platform.ht'));
    futures.add(interpreter.evalf('$path/foundation/stack_frame.ht'));
    futures.add(interpreter.evalf('$path/foundation/change_notifier.ht'));
    futures.add(interpreter.evalf('$path/foundation/key.ht'));
    futures.add(interpreter.evalf('$path/semantics/semantics_event.ht'));
    futures.add(interpreter.evalf('$path/semantics/semantics_service.ht'));
    futures.add(interpreter.evalf('$path/semantics/semantics.ht'));
    futures.add(interpreter.evalf('$path/painting/borders.ht'));
    futures.add(interpreter.evalf('$path/painting/box_border.ht'));
    futures.add(interpreter.evalf('$path/painting/image_provider.ht'));
    futures.add(interpreter.evalf('$path/painting/box_shadow.ht'));
    futures.add(interpreter.evalf('$path/painting/border_radius.ht'));
    futures.add(interpreter.evalf('$path/painting/continuous_rectangle_border.ht'));
    futures.add(interpreter.evalf('$path/painting/colors.ht'));
    futures.add(interpreter.evalf('$path/painting/image_resolution.ht'));
    futures.add(interpreter.evalf('$path/painting/circle_border.ht'));
    futures.add(interpreter.evalf('$path/painting/beveled_rectangle_border.ht'));
    futures.add(interpreter.evalf('$path/painting/gradient.ht'));
    futures.add(interpreter.evalf('$path/painting/shader_warm_up.ht'));
    futures.add(interpreter.evalf('$path/painting/alignment.ht'));
    futures.add(interpreter.evalf('$path/painting/text_span.ht'));
    futures.add(interpreter.evalf('$path/painting/debug.ht'));
    futures.add(interpreter.evalf('$path/painting/flutter_logo.ht'));
    futures.add(interpreter.evalf('$path/painting/basic_types.ht'));
    futures.add(interpreter.evalf('$path/painting/box_decoration.ht'));
    futures.add(interpreter.evalf('$path/painting/inline_span.ht'));
    futures.add(interpreter.evalf('$path/painting/fractional_offset.ht'));
    futures.add(interpreter.evalf('$path/painting/box_fit.ht'));
    futures.add(interpreter.evalf('$path/painting/notched_shapes.ht'));
    futures.add(interpreter.evalf('$path/painting/matrix_utils.ht'));
    futures.add(interpreter.evalf('$path/painting/stadium_border.ht'));
    futures.add(interpreter.evalf('$path/painting/text_painter.ht'));
    futures.add(interpreter.evalf('$path/painting/rounded_rectangle_border.ht'));
    futures.add(interpreter.evalf('$path/painting/shape_decoration.ht'));
    futures.add(interpreter.evalf('$path/painting/edge_insets.ht'));
    futures.add(interpreter.evalf('$path/painting/decoration_image.ht'));
    futures.add(interpreter.evalf('$path/painting/image_stream.ht'));
    futures.add(interpreter.evalf('$path/painting/image_cache.ht'));
    futures.add(interpreter.evalf('$path/gestures/lsq_solver.ht'));
    futures.add(interpreter.evalf('$path/gestures/eager.ht'));
    futures.add(interpreter.evalf('$path/gestures/team.ht'));
    futures.add(interpreter.evalf('$path/gestures/multitap.ht'));
    futures.add(interpreter.evalf('$path/gestures/velocity_tracker.ht'));
    futures.add(interpreter.evalf('$path/gestures/hit_test.ht'));
    futures.add(interpreter.evalf('$path/gestures/tap.ht'));
    futures.add(interpreter.evalf('$path/gestures/arena.ht'));
    futures.add(interpreter.evalf('$path/gestures/recognizer.ht'));
    futures.add(interpreter.evalf('$path/gestures/multidrag.ht'));
    futures.add(interpreter.evalf('$path/gestures/converter.ht'));
    futures.add(interpreter.evalf('$path/gestures/force_press.ht'));
    futures.add(interpreter.evalf('$path/gestures/pointer_signal_resolver.ht'));
    futures.add(interpreter.evalf('$path/gestures/long_press.ht'));
    futures.add(interpreter.evalf('$path/gestures/drag_details.ht'));
    futures.add(interpreter.evalf('$path/gestures/scale.ht'));
    futures.add(interpreter.evalf('$path/gestures/resampler.ht'));
    futures.add(interpreter.evalf('$path/gestures/events.ht'));
    futures.add(interpreter.evalf('$path/gestures/monodrag.ht'));
    futures.add(interpreter.evalf('$path/gestures/binding.ht'));
    futures.add(interpreter.evalf('$path/gestures/pointer_router.ht'));
    futures.add(interpreter.evalf('$path/rendering/mouse_tracking.ht'));
    futures.add(interpreter.evalf('$path/rendering/custom_paint.ht'));
    futures.add(interpreter.evalf('$path/rendering/sliver_persistent_header.ht'));
    futures.add(interpreter.evalf('$path/rendering/list_wheel_viewport.ht'));
    futures.add(interpreter.evalf('$path/rendering/image.ht'));
    futures.add(interpreter.evalf('$path/rendering/texture.ht'));
    futures.add(interpreter.evalf('$path/rendering/wrap.ht'));
    futures.add(interpreter.evalf('$path/rendering/table_border.ht'));
    futures.add(interpreter.evalf('$path/rendering/proxy_box.ht'));
    futures.add(interpreter.evalf('$path/rendering/viewport_offset.ht'));
    futures.add(interpreter.evalf('$path/rendering/sliver_multi_box_adaptor.ht'));
    futures.add(interpreter.evalf('$path/rendering/flow.ht'));
    futures.add(interpreter.evalf('$path/rendering/object.ht'));
    futures.add(interpreter.evalf('$path/rendering/flex.ht'));
    futures.add(interpreter.evalf('$path/rendering/sliver_fixed_extent_list.ht'));
    futures.add(interpreter.evalf('$path/rendering/table.ht'));
    futures.add(interpreter.evalf('$path/rendering/rotated_box.ht'));
    futures.add(interpreter.evalf('$path/rendering/shifted_box.ht'));
    futures.add(interpreter.evalf('$path/rendering/layout_helper.ht'));
    futures.add(interpreter.evalf('$path/rendering/proxy_sliver.ht'));
    futures.add(interpreter.evalf('$path/rendering/performance_overlay.ht'));
    futures.add(interpreter.evalf('$path/rendering/view.ht'));
    futures.add(interpreter.evalf('$path/rendering/sliver_grid.ht'));
    futures.add(interpreter.evalf('$path/rendering/viewport.ht'));
    futures.add(interpreter.evalf('$path/rendering/sliver_list.ht'));
    futures.add(interpreter.evalf('$path/rendering/sliver_padding.ht'));
    futures.add(interpreter.evalf('$path/rendering/sliver.ht'));
    futures.add(interpreter.evalf('$path/rendering/error.ht'));
    futures.add(interpreter.evalf('$path/rendering/stack.ht'));
    futures.add(interpreter.evalf('$path/rendering/list_body.ht'));
    futures.add(interpreter.evalf('$path/rendering/tweens.ht'));
    futures.add(interpreter.evalf('$path/rendering/layer.ht'));
    futures.add(interpreter.evalf('$path/rendering/platform_view.ht'));
    futures.add(interpreter.evalf('$path/rendering/editable.ht'));
    futures.add(interpreter.evalf('$path/rendering/paragraph.ht'));
    futures.add(interpreter.evalf('$path/rendering/sliver_fill.ht'));
    futures.add(interpreter.evalf('$path/rendering/animated_size.ht'));
    futures.add(interpreter.evalf('$path/rendering/binding.ht'));
    futures.add(interpreter.evalf('$path/rendering/custom_layout.ht'));
    futures.add(interpreter.evalf('$path/rendering/box.ht'));
    futures.add(interpreter.evalf('$path/physics/gravity_simulation.ht'));
    futures.add(interpreter.evalf('$path/physics/spring_simulation.ht'));
    futures.add(interpreter.evalf('$path/physics/friction_simulation.ht'));
    futures.add(interpreter.evalf('$path/physics/clamped_simulation.ht'));
    futures.add(interpreter.evalf('$path/physics/tolerance.ht'));
    futures.add(interpreter.evalf('$path/cupertino/tab_view.ht'));
    futures.add(interpreter.evalf('$path/cupertino/text_theme.ht'));
    futures.add(interpreter.evalf('$path/cupertino/text_field.ht'));
    futures.add(interpreter.evalf('$path/cupertino/form_row.ht'));
    futures.add(interpreter.evalf('$path/cupertino/text_selection_toolbar.ht'));
    futures.add(interpreter.evalf('$path/cupertino/text_selection_toolbar_button.ht'));
    futures.add(interpreter.evalf('$path/cupertino/segmented_control.ht'));
    futures.add(interpreter.evalf('$path/cupertino/icon_theme_data.ht'));
    futures.add(interpreter.evalf('$path/cupertino/colors.ht'));
    futures.add(interpreter.evalf('$path/cupertino/action_sheet.ht'));
    futures.add(interpreter.evalf('$path/cupertino/sliding_segmented_control.ht'));
    futures.add(interpreter.evalf('$path/cupertino/search_field.ht'));
    futures.add(interpreter.evalf('$path/cupertino/button.ht'));
    futures.add(interpreter.evalf('$path/cupertino/tab_scaffold.ht'));
    futures.add(interpreter.evalf('$path/cupertino/dialog.ht'));
    futures.add(interpreter.evalf('$path/cupertino/bottom_tab_bar.ht'));
    futures.add(interpreter.evalf('$path/cupertino/date_picker.ht'));
    futures.add(interpreter.evalf('$path/cupertino/refresh.ht'));
    futures.add(interpreter.evalf('$path/cupertino/picker.ht'));
    futures.add(interpreter.evalf('$path/cupertino/context_menu.ht'));
    futures.add(interpreter.evalf('$path/cupertino/route.ht'));
    futures.add(interpreter.evalf('$path/cupertino/thumb_painter.ht'));
    futures.add(interpreter.evalf('$path/cupertino/activity_indicator.ht'));
    futures.add(interpreter.evalf('$path/cupertino/slider.ht'));
    futures.add(interpreter.evalf('$path/cupertino/page_scaffold.ht'));
    futures.add(interpreter.evalf('$path/cupertino/text_selection.ht'));
    futures.add(interpreter.evalf('$path/cupertino/interface_level.ht'));
    futures.add(interpreter.evalf('$path/cupertino/form_section.ht'));
    futures.add(interpreter.evalf('$path/cupertino/text_form_field_row.ht'));
    futures.add(interpreter.evalf('$path/cupertino/context_menu_action.ht'));
    futures.add(interpreter.evalf('$path/cupertino/switch.ht'));
    futures.add(interpreter.evalf('$path/cupertino/scrollbar.ht'));
    futures.add(interpreter.evalf('$path/cupertino/app.ht'));
    futures.add(interpreter.evalf('$path/cupertino/icons.ht'));
    futures.add(interpreter.evalf('$path/cupertino/nav_bar.ht'));
    futures.add(interpreter.evalf('$path/cupertino/theme.ht'));
    futures.add(interpreter.evalf('$path/cupertino/localizations.ht'));
    futures.add(interpreter.evalf('$path/material/date_picker_deprecated.ht'));
    futures.add(interpreter.evalf('$path/material/text_button_theme.ht'));
    futures.add(interpreter.evalf('$path/material/drawer_header.ht'));
    futures.add(interpreter.evalf('$path/material/material_button.ht'));
    futures.add(interpreter.evalf('$path/material/grid_tile.ht'));
    futures.add(interpreter.evalf('$path/material/material.ht'));
    futures.add(interpreter.evalf('$path/material/text_theme.ht'));
    futures.add(interpreter.evalf('$path/material/ink_ripple.ht'));
    futures.add(interpreter.evalf('$path/material/elevated_button_theme.ht'));
    futures.add(interpreter.evalf('$path/material/banner_theme.ht'));
    futures.add(interpreter.evalf('$path/material/scaffold.ht'));
    futures.add(interpreter.evalf('$path/material/feedback.ht'));
    futures.add(interpreter.evalf('$path/material/switch_theme.ht'));
    futures.add(interpreter.evalf('$path/material/toggle_buttons_theme.ht'));
    futures.add(interpreter.evalf('$path/material/back_button.ht'));
    futures.add(interpreter.evalf('$path/material/text_selection_toolbar_text_button.ht'));
    futures.add(interpreter.evalf('$path/material/text_field.ht'));
    futures.add(interpreter.evalf('$path/material/navigation_rail_theme.ht'));
    futures.add(interpreter.evalf('$path/material/about.ht'));
    futures.add(interpreter.evalf('$path/material/time_picker_theme.ht'));
    futures.add(interpreter.evalf('$path/material/text_selection_toolbar.ht'));
    futures.add(interpreter.evalf('$path/material/text_selection_theme.ht'));
    futures.add(interpreter.evalf('$path/material/radio_list_tile.ht'));
    futures.add(interpreter.evalf('$path/material/refresh_indicator.ht'));
    futures.add(interpreter.evalf('$path/material/input_date_picker_form_field.ht'));
    futures.add(interpreter.evalf('$path/material/bottom_app_bar_theme.ht'));
    futures.add(interpreter.evalf('$path/material/tab_bar_theme.ht'));
    futures.add(interpreter.evalf('$path/material/outlined_button_theme.ht'));
    futures.add(interpreter.evalf('$path/material/grid_tile_bar.ht'));
    futures.add(interpreter.evalf('$path/material/elevation_overlay.ht'));
    futures.add(interpreter.evalf('$path/material/selectable_text.ht'));
    futures.add(interpreter.evalf('$path/material/circle_avatar.ht'));
    futures.add(interpreter.evalf('$path/material/ink_decoration.ht'));
    futures.add(interpreter.evalf('$path/material/button_bar.ht'));
    futures.add(interpreter.evalf('$path/material/page_transitions_theme.ht'));
    futures.add(interpreter.evalf('$path/material/app_bar_theme.ht'));
    futures.add(interpreter.evalf('$path/material/page.ht'));
    futures.add(interpreter.evalf('$path/material/colors.ht'));
    futures.add(interpreter.evalf('$path/material/snack_bar.ht'));
    futures.add(interpreter.evalf('$path/material/input_decorator.ht'));
    futures.add(interpreter.evalf('$path/material/reorderable_list.ht'));
    futures.add(interpreter.evalf('$path/material/color_scheme.ht'));
    futures.add(interpreter.evalf('$path/material/time.ht'));
    futures.add(interpreter.evalf('$path/material/card.ht'));
    futures.add(interpreter.evalf('$path/material/button.ht'));
    futures.add(interpreter.evalf('$path/material/popup_menu_theme.ht'));
    futures.add(interpreter.evalf('$path/material/data_table.ht'));
    futures.add(interpreter.evalf('$path/material/tab_controller.ht'));
    futures.add(interpreter.evalf('$path/material/navigation_rail.ht'));
    futures.add(interpreter.evalf('$path/material/tooltip_theme.ht'));
    futures.add(interpreter.evalf('$path/material/text_button.ht'));
    futures.add(interpreter.evalf('$path/material/raised_button.ht'));
    futures.add(interpreter.evalf('$path/material/dialog.ht'));
    futures.add(interpreter.evalf('$path/material/ink_well.ht'));
    futures.add(interpreter.evalf('$path/material/checkbox.ht'));
    futures.add(interpreter.evalf('$path/material/time_picker.ht'));
    futures.add(interpreter.evalf('$path/material/radio.ht'));
    futures.add(interpreter.evalf('$path/material/stepper.ht'));
    futures.add(interpreter.evalf('$path/material/checkbox_list_tile.ht'));
    futures.add(interpreter.evalf('$path/material/radio_theme.ht'));
    futures.add(interpreter.evalf('$path/material/tabs.ht'));
    futures.add(interpreter.evalf('$path/material/bottom_navigation_bar_theme.ht'));
    futures.add(interpreter.evalf('$path/material/floating_action_button.ht'));
    futures.add(interpreter.evalf('$path/material/checkbox_theme.ht'));
    futures.add(interpreter.evalf('$path/material/range_slider.ht'));
    futures.add(interpreter.evalf('$path/material/scrollbar_theme.ht'));
    futures.add(interpreter.evalf('$path/material/ink_highlight.ht'));
    futures.add(interpreter.evalf('$path/material/popup_menu.ht'));
    futures.add(interpreter.evalf('$path/material/expand_icon.ht'));
    futures.add(interpreter.evalf('$path/material/app_bar.ht'));
    futures.add(interpreter.evalf('$path/material/bottom_app_bar.ht'));
    futures.add(interpreter.evalf('$path/material/user_accounts_drawer_header.ht'));
    futures.add(interpreter.evalf('$path/material/banner.ht'));
    futures.add(interpreter.evalf('$path/material/calendar_date_picker.ht'));
    futures.add(interpreter.evalf('$path/material/input_border.ht'));
    futures.add(interpreter.evalf('$path/material/chip.ht'));
    futures.add(interpreter.evalf('$path/material/dialog_theme.ht'));
    futures.add(interpreter.evalf('$path/material/paginated_data_table.ht'));
    futures.add(interpreter.evalf('$path/material/material_state.ht'));
    futures.add(interpreter.evalf('$path/material/floating_action_button_theme.ht'));
    futures.add(interpreter.evalf('$path/material/flutter_logo.ht'));
    futures.add(interpreter.evalf('$path/material/card_theme.ht'));
    futures.add(interpreter.evalf('$path/material/bottom_sheet_theme.ht'));
    futures.add(interpreter.evalf('$path/material/tooltip.ht'));
    futures.add(interpreter.evalf('$path/material/elevated_button.ht'));
    futures.add(interpreter.evalf('$path/material/switch_list_tile.ht'));
    futures.add(interpreter.evalf('$path/material/dropdown.ht'));
    futures.add(interpreter.evalf('$path/material/text_form_field.ht'));
    futures.add(interpreter.evalf('$path/material/slider.ht'));
    futures.add(interpreter.evalf('$path/material/tab_indicator.ht'));
    futures.add(interpreter.evalf('$path/material/button_theme.ht'));
    futures.add(interpreter.evalf('$path/material/arc.ht'));
    futures.add(interpreter.evalf('$path/material/progress_indicator.ht'));
    futures.add(interpreter.evalf('$path/material/list_tile.ht'));
    futures.add(interpreter.evalf('$path/material/expansion_tile.ht'));
    futures.add(interpreter.evalf('$path/material/bottom_sheet.ht'));
    futures.add(interpreter.evalf('$path/material/text_selection.ht'));
    futures.add(interpreter.evalf('$path/material/divider_theme.ht'));
    futures.add(interpreter.evalf('$path/material/data_table_theme.ht'));
    futures.add(interpreter.evalf('$path/material/material_localizations.ht'));
    futures.add(interpreter.evalf('$path/material/typography.ht'));
    futures.add(interpreter.evalf('$path/material/outlined_button.ht'));
    futures.add(interpreter.evalf('$path/material/divider.ht'));
    futures.add(interpreter.evalf('$path/material/slider_theme.ht'));
    futures.add(interpreter.evalf('$path/material/chip_theme.ht'));
    futures.add(interpreter.evalf('$path/material/mergeable_material.ht'));
    futures.add(interpreter.evalf('$path/material/drawer.ht'));
    futures.add(interpreter.evalf('$path/material/date.ht'));
    futures.add(interpreter.evalf('$path/material/snack_bar_theme.ht'));
    futures.add(interpreter.evalf('$path/animated_icons/animated_icons.ht'));
    futures.add(interpreter.evalf('$path/material/theme_data.ht'));
    futures.add(interpreter.evalf('$path/material/flexible_space_bar.ht'));
    futures.add(interpreter.evalf('$path/material/switch.ht'));
    futures.add(interpreter.evalf('$path/material/scrollbar.ht'));
    futures.add(interpreter.evalf('$path/material/button_style.ht'));
    futures.add(interpreter.evalf('$path/material/bottom_navigation_bar.ht'));
    futures.add(interpreter.evalf('$path/material/app.ht'));
    futures.add(interpreter.evalf('$path/material/icons.ht'));
    futures.add(interpreter.evalf('$path/material/autocomplete.ht'));
    futures.add(interpreter.evalf('$path/material/ink_splash.ht'));
    futures.add(interpreter.evalf('$path/material/expansion_panel.ht'));
    futures.add(interpreter.evalf('$path/material/button_bar_theme.ht'));
    futures.add(interpreter.evalf('$path/material/theme.ht'));
    futures.add(interpreter.evalf('$path/material/icon_button.ht'));
    futures.add(interpreter.evalf('$path/material/outline_button.ht'));
    futures.add(interpreter.evalf('$path/material/toggle_buttons.ht'));
    futures.add(interpreter.evalf('$path/material/flat_button.ht'));
    futures.add(interpreter.evalf('$path/services/raw_keyboard_linux.ht'));
    futures.add(interpreter.evalf('$path/services/platform_channel.ht'));
    futures.add(interpreter.evalf('$path/services/keyboard_key.ht'));
    futures.add(interpreter.evalf('$path/services/raw_keyboard_android.ht'));
    futures.add(interpreter.evalf('$path/services/raw_keyboard_web.ht'));
    futures.add(interpreter.evalf('$path/services/text_editing.ht'));
    futures.add(interpreter.evalf('$path/services/platform_messages.ht'));
    futures.add(interpreter.evalf('$path/services/raw_keyboard_ios.ht'));
    futures.add(interpreter.evalf('$path/services/system_sound.ht'));
    futures.add(interpreter.evalf('$path/services/system_navigator.ht'));
    futures.add(interpreter.evalf('$path/services/haptic_feedback.ht'));
    futures.add(interpreter.evalf('$path/services/clipboard.ht'));
    futures.add(interpreter.evalf('$path/services/font_loader.ht'));
    futures.add(interpreter.evalf('$path/services/text_input.ht'));
    futures.add(interpreter.evalf('$path/services/asset_bundle.ht'));
    futures.add(interpreter.evalf('$path/services/text_formatter.ht'));
    futures.add(interpreter.evalf('$path/services/raw_keyboard_macos.ht'));
    futures.add(interpreter.evalf('$path/services/system_chrome.ht'));
    futures.add(interpreter.evalf('$path/services/system_channels.ht'));
    futures.add(interpreter.evalf('$path/services/raw_keyboard_fuchsia.ht'));
    futures.add(interpreter.evalf('$path/services/raw_keyboard_windows.ht'));
    futures.add(interpreter.evalf('$path/services/raw_keyboard.ht'));
    futures.add(interpreter.evalf('$path/services/platform_views.ht'));
    futures.add(interpreter.evalf('$path/services/restoration.ht'));
    futures.add(interpreter.evalf('$path/services/message_codecs.ht'));
    futures.add(interpreter.evalf('$path/services/autofill.ht'));
    futures.add(interpreter.evalf('$path/services/message_codec.ht'));
    futures.add(interpreter.evalf('$path/services/deferred_component.ht'));
    futures.add(interpreter.evalf('$path/widgets/single_child_scroll_view.ht'));
    futures.add(interpreter.evalf('$path/widgets/implicit_animations.ht'));
    futures.add(interpreter.evalf('$path/widgets/animated_cross_fade.ht'));
    futures.add(interpreter.evalf('$path/widgets/grid_paper.ht'));
    futures.add(interpreter.evalf('$path/widgets/tween_animation_builder.ht'));
    futures.add(interpreter.evalf('$path/widgets/widget_span.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_metrics.ht'));
    futures.add(interpreter.evalf('$path/widgets/transitions.ht'));
    futures.add(interpreter.evalf('$path/widgets/sliver_persistent_header.ht'));
    futures.add(interpreter.evalf('$path/widgets/page_storage.ht'));
    futures.add(interpreter.evalf('$path/widgets/router.ht'));
    futures.add(interpreter.evalf('$path/widgets/routes.ht'));
    futures.add(interpreter.evalf('$path/widgets/basic.ht'));
    futures.add(interpreter.evalf('$path/widgets/disposable_build_context.ht'));
    futures.add(interpreter.evalf('$path/widgets/gesture_detector.ht'));
    futures.add(interpreter.evalf('$path/widgets/restoration_properties.ht'));
    futures.add(interpreter.evalf('$path/widgets/async.ht'));
    futures.add(interpreter.evalf('$path/widgets/text.ht'));
    futures.add(interpreter.evalf('$path/widgets/actions.ht'));
    futures.add(interpreter.evalf('$path/widgets/form.ht'));
    futures.add(interpreter.evalf('$path/widgets/image.ht'));
    futures.add(interpreter.evalf('$path/widgets/icon_theme_data.ht'));
    futures.add(interpreter.evalf('$path/widgets/texture.ht'));
    futures.add(interpreter.evalf('$path/widgets/nested_scroll_view.ht'));
    futures.add(interpreter.evalf('$path/widgets/navigation_toolbar.ht'));
    futures.add(interpreter.evalf('$path/widgets/reorderable_list.ht'));
    futures.add(interpreter.evalf('$path/widgets/pages.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_controller.ht'));
    futures.add(interpreter.evalf('$path/widgets/sliver_layout_builder.ht'));
    futures.add(interpreter.evalf('$path/widgets/navigator.ht'));
    futures.add(interpreter.evalf('$path/widgets/preferred_size.ht'));
    futures.add(interpreter.evalf('$path/widgets/value_listenable_builder.ht'));
    futures.add(interpreter.evalf('$path/widgets/media_query.ht'));
    futures.add(interpreter.evalf('$path/widgets/draggable_scrollable_sheet.ht'));
    futures.add(interpreter.evalf('$path/widgets/container.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_aware_image_provider.ht'));
    futures.add(interpreter.evalf('$path/widgets/editable_text.ht'));
    futures.add(interpreter.evalf('$path/widgets/placeholder.ht'));
    futures.add(interpreter.evalf('$path/widgets/icon.ht'));
    futures.add(interpreter.evalf('$path/widgets/bottom_navigation_bar_item.ht'));
    futures.add(interpreter.evalf('$path/widgets/layout_builder.ht'));
    futures.add(interpreter.evalf('$path/widgets/primary_scroll_controller.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_position.ht'));
    futures.add(interpreter.evalf('$path/widgets/image_icon.ht'));
    futures.add(interpreter.evalf('$path/widgets/scrollable.ht'));
    futures.add(interpreter.evalf('$path/widgets/orientation_builder.ht'));
    futures.add(interpreter.evalf('$path/widgets/focus_manager.ht'));
    futures.add(interpreter.evalf('$path/widgets/focus_traversal.ht'));
    futures.add(interpreter.evalf('$path/widgets/color_filter.ht'));
    futures.add(interpreter.evalf('$path/widgets/title.ht'));
    futures.add(interpreter.evalf('$path/widgets/animated_switcher.ht'));
    futures.add(interpreter.evalf('$path/widgets/sliver_prototype_extent_list.ht'));
    futures.add(interpreter.evalf('$path/widgets/table.ht'));
    futures.add(interpreter.evalf('$path/widgets/inherited_model.ht'));
    futures.add(interpreter.evalf('$path/widgets/dual_transition_builder.ht'));
    futures.add(interpreter.evalf('$path/widgets/visibility.ht'));
    futures.add(interpreter.evalf('$path/widgets/annotated_region.ht'));
    futures.add(interpreter.evalf('$path/widgets/banner.ht'));
    futures.add(interpreter.evalf('$path/widgets/notification_listener.ht'));
    futures.add(interpreter.evalf('$path/widgets/performance_overlay.ht'));
    futures.add(interpreter.evalf('$path/widgets/page_view.ht'));
    futures.add(interpreter.evalf('$path/widgets/shortcuts.ht'));
    futures.add(interpreter.evalf('$path/widgets/image_filter.ht'));
    futures.add(interpreter.evalf('$path/widgets/drag_target.ht'));
    futures.add(interpreter.evalf('$path/widgets/overscroll_indicator.ht'));
    futures.add(interpreter.evalf('$path/widgets/heroes.ht'));
    futures.add(interpreter.evalf('$path/widgets/size_changed_layout_notifier.ht'));
    futures.add(interpreter.evalf('$path/widgets/widget_inspector.ht'));
    futures.add(interpreter.evalf('$path/widgets/viewport.ht'));
    futures.add(interpreter.evalf('$path/widgets/automatic_keep_alive.ht'));
    futures.add(interpreter.evalf('$path/widgets/framework.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_configuration.ht'));
    futures.add(interpreter.evalf('$path/widgets/icon_theme.ht'));
    futures.add(interpreter.evalf('$path/widgets/semantics_debugger.ht'));
    futures.add(interpreter.evalf('$path/widgets/text_selection.ht'));
    futures.add(interpreter.evalf('$path/widgets/ticker_provider.ht'));
    futures.add(interpreter.evalf('$path/widgets/restoration.ht'));
    futures.add(interpreter.evalf('$path/widgets/animated_list.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_physics.ht'));
    futures.add(interpreter.evalf('$path/widgets/icon_data.ht'));
    futures.add(interpreter.evalf('$path/widgets/overflow_bar.ht'));
    futures.add(interpreter.evalf('$path/widgets/fade_in_image.ht'));
    futures.add(interpreter.evalf('$path/widgets/focus_scope.ht'));
    futures.add(interpreter.evalf('$path/widgets/modal_barrier.ht'));
    futures.add(interpreter.evalf('$path/widgets/interactive_viewer.ht'));
    futures.add(interpreter.evalf('$path/widgets/autofill.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_activity.ht'));
    futures.add(interpreter.evalf('$path/widgets/list_wheel_scroll_view.ht'));
    futures.add(interpreter.evalf('$path/widgets/sliver.ht'));
    futures.add(interpreter.evalf('$path/widgets/dismissible.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_position_with_single_context.ht'));
    futures.add(interpreter.evalf('$path/widgets/will_pop_scope.ht'));
    futures.add(interpreter.evalf('$path/widgets/text_selection_toolbar_layout_delegate.ht'));
    futures.add(interpreter.evalf('$path/widgets/desktop_text_selection_toolbar_layout_delegate.ht'));
    futures.add(interpreter.evalf('$path/widgets/safe_area.ht'));
    futures.add(interpreter.evalf('$path/widgets/scrollbar.ht'));
    futures.add(interpreter.evalf('$path/widgets/platform_view.ht'));
    futures.add(interpreter.evalf('$path/widgets/app.ht'));
    futures.add(interpreter.evalf('$path/widgets/autocomplete.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_notification.ht'));
    futures.add(interpreter.evalf('$path/widgets/overlay.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_simulation.ht'));
    futures.add(interpreter.evalf('$path/widgets/raw_keyboard_listener.ht'));
    futures.add(interpreter.evalf('$path/widgets/spacer.ht'));
    futures.add(interpreter.evalf('$path/widgets/scroll_view.ht'));
    futures.add(interpreter.evalf('$path/widgets/localizations.ht'));
    futures.add(interpreter.evalf('$path/widgets/sliver_fill.ht'));
    futures.add(interpreter.evalf('$path/widgets/animated_size.ht'));
    futures.add(interpreter.evalf('$path/widgets/binding.ht'));
    return Future.wait(futures);
  }
}