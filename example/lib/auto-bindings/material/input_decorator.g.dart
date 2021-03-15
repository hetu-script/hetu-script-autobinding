import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FloatingLabelBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'never':
        return FloatingLabelBehavior.never;
      case 'auto':
        return FloatingLabelBehavior.auto;
      case 'always':
        return FloatingLabelBehavior.always;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InputDecoratorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InputDecorator':
        return ({key, decoration, baseStyle, textAlign, textAlignVertical, isFocused = false, isHovering = false, expands = false, isEmpty = false, child}) => InputDecoratorObjectBinding(InputDecorator(key : key, decoration : decoration, baseStyle : baseStyle, textAlign : textAlign, textAlignVertical : textAlignVertical, isFocused : isFocused, isHovering : isHovering, expands : expands, isEmpty : isEmpty, child : child));
      case 'containerOf':
        return (context) => InputDecorator.containerOf(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InputDecoratorObjectBinding extends HT_ExternObject<InputDecorator> {
  InputDecoratorObjectBinding(InputDecorator value) : super(value);

  @override
  final typeid = HT_TypeId('InputDecorator');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decoration':
        return externObject.decoration;
      case 'baseStyle':
        return externObject.baseStyle;
      case 'textAlign':
        return externObject.textAlign;
      case 'textAlignVertical':
        return externObject.textAlignVertical;
      case 'isFocused':
        return externObject.isFocused;
      case 'isHovering':
        return externObject.isHovering;
      case 'expands':
        return externObject.expands;
      case 'isEmpty':
        return externObject.isEmpty;
      case 'child':
        return externObject.child;
      case 'createState':
        return externObject.createState;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class InputDecorationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InputDecoration':
        return ({icon, labelText, labelStyle, helperText, helperStyle, helperMaxLines, hintText, hintStyle, hintTextDirection, hintMaxLines, errorText, errorStyle, errorMaxLines, hasFloatingPlaceholder = true, floatingLabelBehavior, isCollapsed = false, isDense, contentPadding, prefixIcon, prefixIconConstraints, prefix, prefixText, prefixStyle, suffixIcon, suffix, suffixText, suffixStyle, suffixIconConstraints, counter, counterText, counterStyle, filled, fillColor, focusColor, hoverColor, errorBorder, focusedBorder, focusedErrorBorder, disabledBorder, enabledBorder, border, enabled = true, semanticCounterText, alignLabelWithHint}) => InputDecorationObjectBinding(InputDecoration(icon : icon, labelText : labelText, labelStyle : labelStyle, helperText : helperText, helperStyle : helperStyle, helperMaxLines : helperMaxLines, hintText : hintText, hintStyle : hintStyle, hintTextDirection : hintTextDirection, hintMaxLines : hintMaxLines, errorText : errorText, errorStyle : errorStyle, errorMaxLines : errorMaxLines, hasFloatingPlaceholder : hasFloatingPlaceholder, floatingLabelBehavior : floatingLabelBehavior, isCollapsed : isCollapsed, isDense : isDense, contentPadding : contentPadding, prefixIcon : prefixIcon, prefixIconConstraints : prefixIconConstraints, prefix : prefix, prefixText : prefixText, prefixStyle : prefixStyle, suffixIcon : suffixIcon, suffix : suffix, suffixText : suffixText, suffixStyle : suffixStyle, suffixIconConstraints : suffixIconConstraints, counter : counter, counterText : counterText, counterStyle : counterStyle, filled : filled, fillColor : fillColor, focusColor : focusColor, hoverColor : hoverColor, errorBorder : errorBorder, focusedBorder : focusedBorder, focusedErrorBorder : focusedErrorBorder, disabledBorder : disabledBorder, enabledBorder : enabledBorder, border : border, enabled : enabled, semanticCounterText : semanticCounterText, alignLabelWithHint : alignLabelWithHint));
      case 'InputDecoration.collapsed':
        return ({hintText, hasFloatingPlaceholder = true, floatingLabelBehavior, hintStyle, hintTextDirection, filled = false, fillColor, focusColor, hoverColor, border = InputBorder.none, enabled = true}) => InputDecorationObjectBinding(InputDecoration.collapsed(hintText : hintText, hasFloatingPlaceholder : hasFloatingPlaceholder, floatingLabelBehavior : floatingLabelBehavior, hintStyle : hintStyle, hintTextDirection : hintTextDirection, filled : filled, fillColor : fillColor, focusColor : focusColor, hoverColor : hoverColor, border : border, enabled : enabled));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InputDecorationObjectBinding extends HT_ExternObject<InputDecoration> {
  InputDecorationObjectBinding(InputDecoration value) : super(value);

  @override
  final typeid = HT_TypeId('InputDecoration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'icon':
        return externObject.icon;
      case 'labelText':
        return externObject.labelText;
      case 'labelStyle':
        return externObject.labelStyle;
      case 'helperText':
        return externObject.helperText;
      case 'helperStyle':
        return externObject.helperStyle;
      case 'helperMaxLines':
        return externObject.helperMaxLines;
      case 'hintText':
        return externObject.hintText;
      case 'hintStyle':
        return externObject.hintStyle;
      case 'hintTextDirection':
        return externObject.hintTextDirection;
      case 'hintMaxLines':
        return externObject.hintMaxLines;
      case 'errorText':
        return externObject.errorText;
      case 'errorStyle':
        return externObject.errorStyle;
      case 'errorMaxLines':
        return externObject.errorMaxLines;
      case 'hasFloatingPlaceholder':
        return externObject.hasFloatingPlaceholder;
      case 'floatingLabelBehavior':
        return externObject.floatingLabelBehavior;
      case 'isDense':
        return externObject.isDense;
      case 'contentPadding':
        return externObject.contentPadding;
      case 'isCollapsed':
        return externObject.isCollapsed;
      case 'prefixIcon':
        return externObject.prefixIcon;
      case 'prefixIconConstraints':
        return externObject.prefixIconConstraints;
      case 'prefix':
        return externObject.prefix;
      case 'prefixText':
        return externObject.prefixText;
      case 'prefixStyle':
        return externObject.prefixStyle;
      case 'suffixIcon':
        return externObject.suffixIcon;
      case 'suffix':
        return externObject.suffix;
      case 'suffixText':
        return externObject.suffixText;
      case 'suffixStyle':
        return externObject.suffixStyle;
      case 'suffixIconConstraints':
        return externObject.suffixIconConstraints;
      case 'counterText':
        return externObject.counterText;
      case 'counter':
        return externObject.counter;
      case 'counterStyle':
        return externObject.counterStyle;
      case 'filled':
        return externObject.filled;
      case 'fillColor':
        return externObject.fillColor;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'errorBorder':
        return externObject.errorBorder;
      case 'focusedBorder':
        return externObject.focusedBorder;
      case 'focusedErrorBorder':
        return externObject.focusedErrorBorder;
      case 'disabledBorder':
        return externObject.disabledBorder;
      case 'enabledBorder':
        return externObject.enabledBorder;
      case 'border':
        return externObject.border;
      case 'enabled':
        return externObject.enabled;
      case 'semanticCounterText':
        return externObject.semanticCounterText;
      case 'alignLabelWithHint':
        return externObject.alignLabelWithHint;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'applyDefaults':
        return externObject.applyDefaults;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class InputDecorationThemeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InputDecorationTheme':
        return ({labelStyle, helperStyle, helperMaxLines, hintStyle, errorStyle, errorMaxLines, hasFloatingPlaceholder = true, floatingLabelBehavior = FloatingLabelBehavior.auto, isDense = false, contentPadding, isCollapsed = false, prefixStyle, suffixStyle, counterStyle, filled = false, fillColor, focusColor, hoverColor, errorBorder, focusedBorder, focusedErrorBorder, disabledBorder, enabledBorder, border, alignLabelWithHint = false}) => InputDecorationThemeObjectBinding(InputDecorationTheme(labelStyle : labelStyle, helperStyle : helperStyle, helperMaxLines : helperMaxLines, hintStyle : hintStyle, errorStyle : errorStyle, errorMaxLines : errorMaxLines, hasFloatingPlaceholder : hasFloatingPlaceholder, floatingLabelBehavior : floatingLabelBehavior, isDense : isDense, contentPadding : contentPadding, isCollapsed : isCollapsed, prefixStyle : prefixStyle, suffixStyle : suffixStyle, counterStyle : counterStyle, filled : filled, fillColor : fillColor, focusColor : focusColor, hoverColor : hoverColor, errorBorder : errorBorder, focusedBorder : focusedBorder, focusedErrorBorder : focusedErrorBorder, disabledBorder : disabledBorder, enabledBorder : enabledBorder, border : border, alignLabelWithHint : alignLabelWithHint));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class InputDecorationThemeObjectBinding extends HT_ExternObject<InputDecorationTheme> {
  InputDecorationThemeObjectBinding(InputDecorationTheme value) : super(value);

  @override
  final typeid = HT_TypeId('InputDecorationTheme');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'labelStyle':
        return externObject.labelStyle;
      case 'helperStyle':
        return externObject.helperStyle;
      case 'helperMaxLines':
        return externObject.helperMaxLines;
      case 'hintStyle':
        return externObject.hintStyle;
      case 'errorStyle':
        return externObject.errorStyle;
      case 'errorMaxLines':
        return externObject.errorMaxLines;
      case 'hasFloatingPlaceholder':
        return externObject.hasFloatingPlaceholder;
      case 'floatingLabelBehavior':
        return externObject.floatingLabelBehavior;
      case 'isDense':
        return externObject.isDense;
      case 'contentPadding':
        return externObject.contentPadding;
      case 'isCollapsed':
        return externObject.isCollapsed;
      case 'prefixStyle':
        return externObject.prefixStyle;
      case 'suffixStyle':
        return externObject.suffixStyle;
      case 'counterStyle':
        return externObject.counterStyle;
      case 'filled':
        return externObject.filled;
      case 'fillColor':
        return externObject.fillColor;
      case 'focusColor':
        return externObject.focusColor;
      case 'hoverColor':
        return externObject.hoverColor;
      case 'errorBorder':
        return externObject.errorBorder;
      case 'focusedBorder':
        return externObject.focusedBorder;
      case 'focusedErrorBorder':
        return externObject.focusedErrorBorder;
      case 'disabledBorder':
        return externObject.disabledBorder;
      case 'enabledBorder':
        return externObject.enabledBorder;
      case 'border':
        return externObject.border;
      case 'alignLabelWithHint':
        return externObject.alignLabelWithHint;
      case 'hashCode':
        return externObject.hashCode;
      case 'copyWith':
        return externObject.copyWith;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

