import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui'as ui;
import 'package:flutter/foundation.dart';


class DefaultTextStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultTextStyle':
        return ({key, style, textAlign, softWrap = true, overflow = TextOverflow.clip, maxLines, textWidthBasis = TextWidthBasis.parent, textHeightBehavior, child}) => DefaultTextStyleObjectBinding(DefaultTextStyle(key : key, style : style, textAlign : textAlign, softWrap : softWrap, overflow : overflow, maxLines : maxLines, textWidthBasis : textWidthBasis, textHeightBehavior : textHeightBehavior, child : child));
      case 'DefaultTextStyle.fallback':
        return ({key}) => DefaultTextStyleObjectBinding(DefaultTextStyle.fallback(key : key));
      case 'merge':
        return ({key, style, textAlign, softWrap, overflow, maxLines, textWidthBasis, child}) => DefaultTextStyle.merge(key : key, style : style, textAlign : textAlign, softWrap : softWrap, overflow : overflow, maxLines : maxLines, textWidthBasis : textWidthBasis, child : child);
      case 'of':
        return (context) => DefaultTextStyle.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultTextStyleObjectBinding extends HT_ExternObject<DefaultTextStyle> {
  DefaultTextStyleObjectBinding(DefaultTextStyle value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultTextStyle');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'style':
        return externObject.style;
      case 'textAlign':
        return externObject.textAlign;
      case 'softWrap':
        return externObject.softWrap;
      case 'overflow':
        return externObject.overflow;
      case 'maxLines':
        return externObject.maxLines;
      case 'textWidthBasis':
        return externObject.textWidthBasis;
      case 'textHeightBehavior':
        return externObject.textHeightBehavior;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      case 'wrap':
        return externObject.wrap;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DefaultTextHeightBehaviorClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultTextHeightBehavior':
        return ({key, textHeightBehavior, child}) => DefaultTextHeightBehaviorObjectBinding(DefaultTextHeightBehavior(key : key, textHeightBehavior : textHeightBehavior, child : child));
      case 'of':
        return (context) => DefaultTextHeightBehavior.of(context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultTextHeightBehaviorObjectBinding extends HT_ExternObject<DefaultTextHeightBehavior> {
  DefaultTextHeightBehaviorObjectBinding(DefaultTextHeightBehavior value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultTextHeightBehavior');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'textHeightBehavior':
        return externObject.textHeightBehavior;
      case 'updateShouldNotify':
        return externObject.updateShouldNotify;
      case 'wrap':
        return externObject.wrap;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Text':
        return (data, {key, style, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior}) => TextObjectBinding(Text(data, key : key, style : style, strutStyle : strutStyle, textAlign : textAlign, textDirection : textDirection, locale : locale, softWrap : softWrap, overflow : overflow, textScaleFactor : textScaleFactor, maxLines : maxLines, semanticsLabel : semanticsLabel, textWidthBasis : textWidthBasis, textHeightBehavior : textHeightBehavior));
      case 'Text.rich':
        return (textSpan, {key, style, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior}) => TextObjectBinding(Text.rich(textSpan, key : key, style : style, strutStyle : strutStyle, textAlign : textAlign, textDirection : textDirection, locale : locale, softWrap : softWrap, overflow : overflow, textScaleFactor : textScaleFactor, maxLines : maxLines, semanticsLabel : semanticsLabel, textWidthBasis : textWidthBasis, textHeightBehavior : textHeightBehavior));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextObjectBinding extends HT_ExternObject<Text> {
  TextObjectBinding(Text value) : super(value);

  @override
  final typeid = HT_TypeId('Text');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'textSpan':
        return externObject.textSpan;
      case 'style':
        return externObject.style;
      case 'strutStyle':
        return externObject.strutStyle;
      case 'textAlign':
        return externObject.textAlign;
      case 'textDirection':
        return externObject.textDirection;
      case 'locale':
        return externObject.locale;
      case 'softWrap':
        return externObject.softWrap;
      case 'overflow':
        return externObject.overflow;
      case 'textScaleFactor':
        return externObject.textScaleFactor;
      case 'maxLines':
        return externObject.maxLines;
      case 'semanticsLabel':
        return externObject.semanticsLabel;
      case 'textWidthBasis':
        return externObject.textWidthBasis;
      case 'textHeightBehavior':
        return externObject.textHeightBehavior;
      case 'build':
        return externObject.build;
      case 'debugFillProperties':
        return externObject.debugFillProperties;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

