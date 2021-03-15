import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';


class LicenseParagraphClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LicenseParagraph':
        return (text, indent) => LicenseParagraphObjectBinding(LicenseParagraph(text, indent));
      case 'LicenseParagraph.centeredIndent':
        return LicenseParagraph.centeredIndent;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LicenseParagraphObjectBinding extends HT_ExternObject<LicenseParagraph> {
  LicenseParagraphObjectBinding(LicenseParagraph value) : super(value);

  @override
  final typeid = HT_TypeId('LicenseParagraph');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'text':
        return externObject.text;
      case 'indent':
        return externObject.indent;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LicenseEntryWithLineBreaksClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LicenseEntryWithLineBreaks':
        return (packages, text) => LicenseEntryWithLineBreaksObjectBinding(LicenseEntryWithLineBreaks(packages, text));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LicenseEntryWithLineBreaksObjectBinding extends HT_ExternObject<LicenseEntryWithLineBreaks> {
  LicenseEntryWithLineBreaksObjectBinding(LicenseEntryWithLineBreaks value) : super(value);

  @override
  final typeid = HT_TypeId('LicenseEntryWithLineBreaks');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'packages':
        return externObject.packages;
      case 'text':
        return externObject.text;
      case 'paragraphs':
        return externObject.paragraphs;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LicenseRegistryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'addLicense':
        return (collector) => LicenseRegistry.addLicense(collector);
      case 'licenses':
        return () => LicenseRegistry.licenses;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


