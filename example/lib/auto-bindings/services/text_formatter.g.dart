import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/services.dart';
import 'dart:math'as math;
import 'package:flutter/foundation.dart';

class MaxLengthEnforcementClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'none':
        return MaxLengthEnforcement.none;
      case 'enforced':
        return MaxLengthEnforcement.enforced;
      case 'truncateAfterCompositionEnds':
        return MaxLengthEnforcement.truncateAfterCompositionEnds;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FilteringTextInputFormatterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FilteringTextInputFormatter':
        return (filterPattern, {allow, replacementString = ''}) => FilteringTextInputFormatterObjectBinding(FilteringTextInputFormatter(filterPattern, allow : allow, replacementString : replacementString));
      case 'FilteringTextInputFormatter.allow':
        return (filterPattern, {replacementString = ''}) => FilteringTextInputFormatterObjectBinding(FilteringTextInputFormatter.allow(filterPattern, replacementString : replacementString));
      case 'FilteringTextInputFormatter.deny':
        return (filterPattern, {replacementString = ''}) => FilteringTextInputFormatterObjectBinding(FilteringTextInputFormatter.deny(filterPattern, replacementString : replacementString));
      case 'FilteringTextInputFormatter.singleLineFormatter':
        return FilteringTextInputFormatter.singleLineFormatter;
      case 'FilteringTextInputFormatter.digitsOnly':
        return FilteringTextInputFormatter.digitsOnly;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FilteringTextInputFormatterObjectBinding extends HT_ExternObject<FilteringTextInputFormatter> {
  FilteringTextInputFormatterObjectBinding(FilteringTextInputFormatter value) : super(value);

  @override
  final typeid = HT_TypeId('FilteringTextInputFormatter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'filterPattern':
        return externObject.filterPattern;
      case 'allow':
        return externObject.allow;
      case 'replacementString':
        return externObject.replacementString;
      case 'formatEditUpdate':
        return externObject.formatEditUpdate;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class BlacklistingTextInputFormatterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'BlacklistingTextInputFormatter':
        return (blacklistedPattern, {replacementString = ''}) => BlacklistingTextInputFormatterObjectBinding(BlacklistingTextInputFormatter(blacklistedPattern, replacementString : replacementString));
      case 'BlacklistingTextInputFormatter.singleLineFormatter':
        return BlacklistingTextInputFormatter.singleLineFormatter;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class BlacklistingTextInputFormatterObjectBinding extends HT_ExternObject<BlacklistingTextInputFormatter> {
  BlacklistingTextInputFormatterObjectBinding(BlacklistingTextInputFormatter value) : super(value);

  @override
  final typeid = HT_TypeId('BlacklistingTextInputFormatter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'blacklistedPattern':
        return externObject.blacklistedPattern;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class WhitelistingTextInputFormatterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'WhitelistingTextInputFormatter':
        return (whitelistedPattern) => WhitelistingTextInputFormatterObjectBinding(WhitelistingTextInputFormatter(whitelistedPattern));
      case 'WhitelistingTextInputFormatter.digitsOnly':
        return WhitelistingTextInputFormatter.digitsOnly;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class WhitelistingTextInputFormatterObjectBinding extends HT_ExternObject<WhitelistingTextInputFormatter> {
  WhitelistingTextInputFormatterObjectBinding(WhitelistingTextInputFormatter value) : super(value);

  @override
  final typeid = HT_TypeId('WhitelistingTextInputFormatter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'whitelistedPattern':
        return externObject.whitelistedPattern;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LengthLimitingTextInputFormatterClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LengthLimitingTextInputFormatter':
        return (maxLength, {maxLengthEnforcement}) => LengthLimitingTextInputFormatterObjectBinding(LengthLimitingTextInputFormatter(maxLength, maxLengthEnforcement : maxLengthEnforcement));
      case 'getDefaultMaxLengthEnforcement':
        return ([platform]) => LengthLimitingTextInputFormatter.getDefaultMaxLengthEnforcement(platform);
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LengthLimitingTextInputFormatterObjectBinding extends HT_ExternObject<LengthLimitingTextInputFormatter> {
  LengthLimitingTextInputFormatterObjectBinding(LengthLimitingTextInputFormatter value) : super(value);

  @override
  final typeid = HT_TypeId('LengthLimitingTextInputFormatter');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'maxLength':
        return externObject.maxLength;
      case 'maxLengthEnforcement':
        return externObject.maxLengthEnforcement;
      case 'formatEditUpdate':
        return externObject.formatEditUpdate;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

