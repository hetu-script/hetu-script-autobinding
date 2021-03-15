import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';
import 'dart:math'as math;
const kNoDefaultValue = _NoDefaultValue();
class _NoDefaultValue {const _NoDefaultValue();}

class DiagnosticLevelClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'hidden':
        return DiagnosticLevel.hidden;
      case 'fine':
        return DiagnosticLevel.fine;
      case 'debug':
        return DiagnosticLevel.debug;
      case 'info':
        return DiagnosticLevel.info;
      case 'warning':
        return DiagnosticLevel.warning;
      case 'hint':
        return DiagnosticLevel.hint;
      case 'summary':
        return DiagnosticLevel.summary;
      case 'error':
        return DiagnosticLevel.error;
      case 'off':
        return DiagnosticLevel.off;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class DiagnosticsTreeStyleClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'none':
        return DiagnosticsTreeStyle.none;
      case 'sparse':
        return DiagnosticsTreeStyle.sparse;
      case 'offstage':
        return DiagnosticsTreeStyle.offstage;
      case 'dense':
        return DiagnosticsTreeStyle.dense;
      case 'transition':
        return DiagnosticsTreeStyle.transition;
      case 'error':
        return DiagnosticsTreeStyle.error;
      case 'whitespace':
        return DiagnosticsTreeStyle.whitespace;
      case 'flat':
        return DiagnosticsTreeStyle.flat;
      case 'singleLine':
        return DiagnosticsTreeStyle.singleLine;
      case 'errorProperty':
        return DiagnosticsTreeStyle.errorProperty;
      case 'shallow':
        return DiagnosticsTreeStyle.shallow;
      case 'truncateChildren':
        return DiagnosticsTreeStyle.truncateChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextTreeConfigurationClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextTreeConfiguration':
        return ({prefixLineOne, prefixOtherLines, prefixLastChildLineOne, prefixOtherLinesRootNode, linkCharacter, propertyPrefixIfChildren, propertyPrefixNoChildren, lineBreak = '\n', lineBreakProperties = true, afterName = ':', afterDescriptionIfBody = '', afterDescription = '', beforeProperties = '', afterProperties = '', mandatoryAfterProperties = '', propertySeparator = '', bodyIndent = '', footer = '', showChildren = true, addBlankLineIfNoChildren = true, isNameOnOwnLine = false, isBlankLineBetweenPropertiesAndChildren = true, beforeName = '', suffixLineOne = '', mandatoryFooter = ''}) => TextTreeConfigurationObjectBinding(TextTreeConfiguration(prefixLineOne : prefixLineOne, prefixOtherLines : prefixOtherLines, prefixLastChildLineOne : prefixLastChildLineOne, prefixOtherLinesRootNode : prefixOtherLinesRootNode, linkCharacter : linkCharacter, propertyPrefixIfChildren : propertyPrefixIfChildren, propertyPrefixNoChildren : propertyPrefixNoChildren, lineBreak : lineBreak, lineBreakProperties : lineBreakProperties, afterName : afterName, afterDescriptionIfBody : afterDescriptionIfBody, afterDescription : afterDescription, beforeProperties : beforeProperties, afterProperties : afterProperties, mandatoryAfterProperties : mandatoryAfterProperties, propertySeparator : propertySeparator, bodyIndent : bodyIndent, footer : footer, showChildren : showChildren, addBlankLineIfNoChildren : addBlankLineIfNoChildren, isNameOnOwnLine : isNameOnOwnLine, isBlankLineBetweenPropertiesAndChildren : isBlankLineBetweenPropertiesAndChildren, beforeName : beforeName, suffixLineOne : suffixLineOne, mandatoryFooter : mandatoryFooter));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextTreeConfigurationObjectBinding extends HT_ExternObject<TextTreeConfiguration> {
  TextTreeConfigurationObjectBinding(TextTreeConfiguration value) : super(value);

  @override
  final typeid = HT_TypeId('TextTreeConfiguration');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'prefixLineOne':
        return externObject.prefixLineOne;
      case 'suffixLineOne':
        return externObject.suffixLineOne;
      case 'prefixOtherLines':
        return externObject.prefixOtherLines;
      case 'prefixLastChildLineOne':
        return externObject.prefixLastChildLineOne;
      case 'prefixOtherLinesRootNode':
        return externObject.prefixOtherLinesRootNode;
      case 'propertyPrefixIfChildren':
        return externObject.propertyPrefixIfChildren;
      case 'propertyPrefixNoChildren':
        return externObject.propertyPrefixNoChildren;
      case 'linkCharacter':
        return externObject.linkCharacter;
      case 'childLinkSpace':
        return externObject.childLinkSpace;
      case 'lineBreak':
        return externObject.lineBreak;
      case 'lineBreakProperties':
        return externObject.lineBreakProperties;
      case 'beforeName':
        return externObject.beforeName;
      case 'afterName':
        return externObject.afterName;
      case 'afterDescriptionIfBody':
        return externObject.afterDescriptionIfBody;
      case 'afterDescription':
        return externObject.afterDescription;
      case 'beforeProperties':
        return externObject.beforeProperties;
      case 'afterProperties':
        return externObject.afterProperties;
      case 'mandatoryAfterProperties':
        return externObject.mandatoryAfterProperties;
      case 'propertySeparator':
        return externObject.propertySeparator;
      case 'bodyIndent':
        return externObject.bodyIndent;
      case 'showChildren':
        return externObject.showChildren;
      case 'addBlankLineIfNoChildren':
        return externObject.addBlankLineIfNoChildren;
      case 'isNameOnOwnLine':
        return externObject.isNameOnOwnLine;
      case 'footer':
        return externObject.footer;
      case 'mandatoryFooter':
        return externObject.mandatoryFooter;
      case 'isBlankLineBetweenPropertiesAndChildren':
        return externObject.isBlankLineBetweenPropertiesAndChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class TextTreeRendererClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TextTreeRenderer':
        return ({minLevel = DiagnosticLevel.debug, wrapWidth = 100, wrapWidthProperties = 65, maxDescendentsTruncatableNode = -1}) => TextTreeRendererObjectBinding(TextTreeRenderer(minLevel : minLevel, wrapWidth : wrapWidth, wrapWidthProperties : wrapWidthProperties, maxDescendentsTruncatableNode : maxDescendentsTruncatableNode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TextTreeRendererObjectBinding extends HT_ExternObject<TextTreeRenderer> {
  TextTreeRendererObjectBinding(TextTreeRenderer value) : super(value);

  @override
  final typeid = HT_TypeId('TextTreeRenderer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'render':
        return externObject.render;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class MessagePropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'MessageProperty':
        return (name, message, {style = DiagnosticsTreeStyle.singleLine, level = DiagnosticLevel.info}) => MessagePropertyObjectBinding(MessageProperty(name, message, style : style, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class MessagePropertyObjectBinding extends HT_ExternObject<MessageProperty> {
  MessagePropertyObjectBinding(MessageProperty value) : super(value);

  @override
  final typeid = HT_TypeId('MessageProperty');


}

class StringPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StringProperty':
        return (name, value, {description, tooltip, showName = true, defaultValue = kNoDefaultValue, quoted = true, ifEmpty, style = DiagnosticsTreeStyle.singleLine, level = DiagnosticLevel.info}) => StringPropertyObjectBinding(StringProperty(name, value, description : description, tooltip : tooltip, showName : showName, defaultValue : defaultValue, quoted : quoted, ifEmpty : ifEmpty, style : style, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StringPropertyObjectBinding extends HT_ExternObject<StringProperty> {
  StringPropertyObjectBinding(StringProperty value) : super(value);

  @override
  final typeid = HT_TypeId('StringProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'quoted':
        return externObject.quoted;
      case 'toJsonMap':
        return externObject.toJsonMap;
      case 'valueToString':
        return externObject.valueToString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DoublePropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DoubleProperty':
        return (name, value, {ifNull, unit, tooltip, defaultValue = kNoDefaultValue, showName = true, style = DiagnosticsTreeStyle.singleLine, level = DiagnosticLevel.info}) => DoublePropertyObjectBinding(DoubleProperty(name, value, ifNull : ifNull, unit : unit, tooltip : tooltip, defaultValue : defaultValue, showName : showName, style : style, level : level));
      case 'DoubleProperty.lazy':
        return (name, computeValue, {ifNull, showName = true, unit, tooltip, defaultValue = kNoDefaultValue, level = DiagnosticLevel.info}) => DoublePropertyObjectBinding(DoubleProperty.lazy(name, computeValue, ifNull : ifNull, showName : showName, unit : unit, tooltip : tooltip, defaultValue : defaultValue, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DoublePropertyObjectBinding extends HT_ExternObject<DoubleProperty> {
  DoublePropertyObjectBinding(DoubleProperty value) : super(value);

  @override
  final typeid = HT_TypeId('DoubleProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'numberToString':
        return externObject.numberToString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class IntPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IntProperty':
        return (name, value, {ifNull, showName = true, unit, defaultValue = kNoDefaultValue, style = DiagnosticsTreeStyle.singleLine, level = DiagnosticLevel.info}) => IntPropertyObjectBinding(IntProperty(name, value, ifNull : ifNull, showName : showName, unit : unit, defaultValue : defaultValue, style : style, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IntPropertyObjectBinding extends HT_ExternObject<IntProperty> {
  IntPropertyObjectBinding(IntProperty value) : super(value);

  @override
  final typeid = HT_TypeId('IntProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'numberToString':
        return externObject.numberToString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class PercentPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'PercentProperty':
        return (name, fraction, {ifNull, showName = true, tooltip, unit, level = DiagnosticLevel.info}) => PercentPropertyObjectBinding(PercentProperty(name, fraction, ifNull : ifNull, showName : showName, tooltip : tooltip, unit : unit, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PercentPropertyObjectBinding extends HT_ExternObject<PercentProperty> {
  PercentPropertyObjectBinding(PercentProperty value) : super(value);

  @override
  final typeid = HT_TypeId('PercentProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'valueToString':
        return externObject.valueToString;
      case 'numberToString':
        return externObject.numberToString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FlagPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlagProperty':
        return (name, {value, ifTrue, ifFalse, showName = false, defaultValue, level = DiagnosticLevel.info}) => FlagPropertyObjectBinding(FlagProperty(name, value : value, ifTrue : ifTrue, ifFalse : ifFalse, showName : showName, defaultValue : defaultValue, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlagPropertyObjectBinding extends HT_ExternObject<FlagProperty> {
  FlagPropertyObjectBinding(FlagProperty value) : super(value);

  @override
  final typeid = HT_TypeId('FlagProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ifTrue':
        return externObject.ifTrue;
      case 'ifFalse':
        return externObject.ifFalse;
      case 'showName':
        return externObject.showName;
      case 'level':
        return externObject.level;
      case 'toJsonMap':
        return externObject.toJsonMap;
      case 'valueToString':
        return externObject.valueToString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class IterablePropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'IterableProperty':
        return (name, value, {defaultValue = kNoDefaultValue, ifNull, ifEmpty = '[]', style = DiagnosticsTreeStyle.singleLine, showName = true, showSeparator = true, level = DiagnosticLevel.info}) => IterablePropertyObjectBinding(IterableProperty(name, value, defaultValue : defaultValue, ifNull : ifNull, ifEmpty : ifEmpty, style : style, showName : showName, showSeparator : showSeparator, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class IterablePropertyObjectBinding extends HT_ExternObject<IterableProperty> {
  IterablePropertyObjectBinding(IterableProperty value) : super(value);

  @override
  final typeid = HT_TypeId('IterableProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'level':
        return externObject.level;
      case 'valueToString':
        return externObject.valueToString;
      case 'toJsonMap':
        return externObject.toJsonMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class EnumPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'EnumProperty':
        return (name, value, {defaultValue = kNoDefaultValue, level = DiagnosticLevel.info}) => EnumPropertyObjectBinding(EnumProperty(name, value, defaultValue : defaultValue, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class EnumPropertyObjectBinding extends HT_ExternObject<EnumProperty> {
  EnumPropertyObjectBinding(EnumProperty value) : super(value);

  @override
  final typeid = HT_TypeId('EnumProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'valueToString':
        return externObject.valueToString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ObjectFlagPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ObjectFlagProperty':
        return (name, value, {ifPresent, ifNull, showName = false, level = DiagnosticLevel.info}) => ObjectFlagPropertyObjectBinding(ObjectFlagProperty(name, value, ifPresent : ifPresent, ifNull : ifNull, showName : showName, level : level));
      case 'ObjectFlagProperty.has':
        return (name, value, {level = DiagnosticLevel.info}) => ObjectFlagPropertyObjectBinding(ObjectFlagProperty.has(name, value, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ObjectFlagPropertyObjectBinding extends HT_ExternObject<ObjectFlagProperty> {
  ObjectFlagPropertyObjectBinding(ObjectFlagProperty value) : super(value);

  @override
  final typeid = HT_TypeId('ObjectFlagProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ifPresent':
        return externObject.ifPresent;
      case 'showName':
        return externObject.showName;
      case 'level':
        return externObject.level;
      case 'valueToString':
        return externObject.valueToString;
      case 'toJsonMap':
        return externObject.toJsonMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class FlagsSummaryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FlagsSummary':
        return (name, value, {ifEmpty, showName = true, showSeparator = true, level = DiagnosticLevel.info}) => FlagsSummaryObjectBinding(FlagsSummary(name, value, ifEmpty : ifEmpty, showName : showName, showSeparator : showSeparator, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FlagsSummaryObjectBinding extends HT_ExternObject<FlagsSummary> {
  FlagsSummaryObjectBinding(FlagsSummary value) : super(value);

  @override
  final typeid = HT_TypeId('FlagsSummary');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'level':
        return externObject.level;
      case 'valueToString':
        return externObject.valueToString;
      case 'toJsonMap':
        return externObject.toJsonMap;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DiagnosticsPropertyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DiagnosticsProperty':
        return (name, value, {description, ifNull, ifEmpty, showName = true, showSeparator = true, defaultValue = kNoDefaultValue, tooltip, missingIfNull = false, linePrefix, expandableValue = false, allowWrap = true, allowNameWrap = true, style = DiagnosticsTreeStyle.singleLine, level = DiagnosticLevel.info}) => DiagnosticsPropertyObjectBinding(DiagnosticsProperty(name, value, description : description, ifNull : ifNull, ifEmpty : ifEmpty, showName : showName, showSeparator : showSeparator, defaultValue : defaultValue, tooltip : tooltip, missingIfNull : missingIfNull, linePrefix : linePrefix, expandableValue : expandableValue, allowWrap : allowWrap, allowNameWrap : allowNameWrap, style : style, level : level));
      case 'DiagnosticsProperty.lazy':
        return (name, computeValue, {description, ifNull, ifEmpty, showName = true, showSeparator = true, defaultValue = kNoDefaultValue, tooltip, missingIfNull = false, expandableValue = false, allowWrap = true, allowNameWrap = true, style = DiagnosticsTreeStyle.singleLine, level = DiagnosticLevel.info}) => DiagnosticsPropertyObjectBinding(DiagnosticsProperty.lazy(name, computeValue, description : description, ifNull : ifNull, ifEmpty : ifEmpty, showName : showName, showSeparator : showSeparator, defaultValue : defaultValue, tooltip : tooltip, missingIfNull : missingIfNull, expandableValue : expandableValue, allowWrap : allowWrap, allowNameWrap : allowNameWrap, style : style, level : level));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DiagnosticsPropertyObjectBinding extends HT_ExternObject<DiagnosticsProperty> {
  DiagnosticsPropertyObjectBinding(DiagnosticsProperty value) : super(value);

  @override
  final typeid = HT_TypeId('DiagnosticsProperty');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'expandableValue':
        return externObject.expandableValue;
      case 'allowWrap':
        return externObject.allowWrap;
      case 'allowNameWrap':
        return externObject.allowNameWrap;
      case 'ifNull':
        return externObject.ifNull;
      case 'ifEmpty':
        return externObject.ifEmpty;
      case 'tooltip':
        return externObject.tooltip;
      case 'missingIfNull':
        return externObject.missingIfNull;
      case 'defaultValue':
        return externObject.defaultValue;
      case 'propertyType':
        return externObject.propertyType;
      case 'value':
        return externObject.value;
      case 'exception':
        return externObject.exception;
      case 'level':
        return externObject.level;
      case 'toJsonMap':
        return externObject.toJsonMap;
      case 'valueToString':
        return externObject.valueToString;
      case 'toDescription':
        return externObject.toDescription;
      case 'getProperties':
        return externObject.getProperties;
      case 'getChildren':
        return externObject.getChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DiagnosticableNodeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DiagnosticableNode':
        return ({name, value, style}) => DiagnosticableNodeObjectBinding(DiagnosticableNode<Diagnosticable>(name : name, value : value, style : style));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DiagnosticableNodeObjectBinding extends HT_ExternObject<DiagnosticableNode> {
  DiagnosticableNodeObjectBinding(DiagnosticableNode value) : super(value);

  @override
  final typeid = HT_TypeId('DiagnosticableNode');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'value':
        return externObject.value;
      case 'builder':
        return externObject.builder;
      case 'style':
        return externObject.style;
      case 'emptyBodyDescription':
        return externObject.emptyBodyDescription;
      case 'getProperties':
        return externObject.getProperties;
      case 'getChildren':
        return externObject.getChildren;
      case 'toDescription':
        return externObject.toDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DiagnosticableTreeNodeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DiagnosticableTreeNode':
        return ({name, value, style}) => DiagnosticableTreeNodeObjectBinding(DiagnosticableTreeNode(name : name, value : value, style : style));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DiagnosticableTreeNodeObjectBinding extends HT_ExternObject<DiagnosticableTreeNode> {
  DiagnosticableTreeNodeObjectBinding(DiagnosticableTreeNode value) : super(value);

  @override
  final typeid = HT_TypeId('DiagnosticableTreeNode');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'getChildren':
        return externObject.getChildren;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DiagnosticPropertiesBuilderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DiagnosticPropertiesBuilder':
        return () => DiagnosticPropertiesBuilderObjectBinding(DiagnosticPropertiesBuilder());
      case 'DiagnosticPropertiesBuilder.fromProperties':
        return (properties) => DiagnosticPropertiesBuilderObjectBinding(DiagnosticPropertiesBuilder.fromProperties(properties));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DiagnosticPropertiesBuilderObjectBinding extends HT_ExternObject<DiagnosticPropertiesBuilder> {
  DiagnosticPropertiesBuilderObjectBinding(DiagnosticPropertiesBuilder value) : super(value);

  @override
  final typeid = HT_TypeId('DiagnosticPropertiesBuilder');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'properties':
        return externObject.properties;
      case 'defaultDiagnosticsTreeStyle':
        return externObject.defaultDiagnosticsTreeStyle;
      case 'emptyBodyDescription':
        return externObject.emptyBodyDescription;
      case 'add':
        return externObject.add;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'defaultDiagnosticsTreeStyle':
        externObject.defaultDiagnosticsTreeStyle = value;
        break;
      case 'emptyBodyDescription':
        externObject.emptyBodyDescription = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DiagnosticsBlockClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DiagnosticsBlock':
        return ({name, style = DiagnosticsTreeStyle.whitespace, showName = true, showSeparator = true, linePrefix, value, description, level = DiagnosticLevel.info, allowTruncate = false, children = const <DiagnosticsNode>[], properties = const <DiagnosticsNode>[]}) => DiagnosticsBlockObjectBinding(DiagnosticsBlock(name : name, style : style, showName : showName, showSeparator : showSeparator, linePrefix : linePrefix, value : value, description : description, level : level, allowTruncate : allowTruncate, children : children, properties : properties));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DiagnosticsBlockObjectBinding extends HT_ExternObject<DiagnosticsBlock> {
  DiagnosticsBlockObjectBinding(DiagnosticsBlock value) : super(value);

  @override
  final typeid = HT_TypeId('DiagnosticsBlock');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'level':
        return externObject.level;
      case 'value':
        return externObject.value;
      case 'allowTruncate':
        return externObject.allowTruncate;
      case 'getChildren':
        return externObject.getChildren;
      case 'getProperties':
        return externObject.getProperties;
      case 'toDescription':
        return externObject.toDescription;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

