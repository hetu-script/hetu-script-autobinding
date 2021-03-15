import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';


class AboutListTileClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AboutListTile':
        return ({key, icon, child, applicationName, applicationVersion, applicationIcon, applicationLegalese, aboutBoxChildren, dense}) => AboutListTileObjectBinding(AboutListTile(key : key, icon : icon, child : child, applicationName : applicationName, applicationVersion : applicationVersion, applicationIcon : applicationIcon, applicationLegalese : applicationLegalese, aboutBoxChildren : aboutBoxChildren, dense : dense));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AboutListTileObjectBinding extends HT_ExternObject<AboutListTile> {
  AboutListTileObjectBinding(AboutListTile value) : super(value);

  @override
  final typeid = HT_TypeId('AboutListTile');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'icon':
        return externObject.icon;
      case 'child':
        return externObject.child;
      case 'applicationName':
        return externObject.applicationName;
      case 'applicationVersion':
        return externObject.applicationVersion;
      case 'applicationIcon':
        return externObject.applicationIcon;
      case 'applicationLegalese':
        return externObject.applicationLegalese;
      case 'aboutBoxChildren':
        return externObject.aboutBoxChildren;
      case 'dense':
        return externObject.dense;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class AboutDialogClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'AboutDialog':
        return ({key, applicationName, applicationVersion, applicationIcon, applicationLegalese, children}) => AboutDialogObjectBinding(AboutDialog(key : key, applicationName : applicationName, applicationVersion : applicationVersion, applicationIcon : applicationIcon, applicationLegalese : applicationLegalese, children : children));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class AboutDialogObjectBinding extends HT_ExternObject<AboutDialog> {
  AboutDialogObjectBinding(AboutDialog value) : super(value);

  @override
  final typeid = HT_TypeId('AboutDialog');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'applicationName':
        return externObject.applicationName;
      case 'applicationVersion':
        return externObject.applicationVersion;
      case 'applicationIcon':
        return externObject.applicationIcon;
      case 'applicationLegalese':
        return externObject.applicationLegalese;
      case 'children':
        return externObject.children;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class LicensePageClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'LicensePage':
        return ({key, applicationName, applicationVersion, applicationIcon, applicationLegalese}) => LicensePageObjectBinding(LicensePage(key : key, applicationName : applicationName, applicationVersion : applicationVersion, applicationIcon : applicationIcon, applicationLegalese : applicationLegalese));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class LicensePageObjectBinding extends HT_ExternObject<LicensePage> {
  LicensePageObjectBinding(LicensePage value) : super(value);

  @override
  final typeid = HT_TypeId('LicensePage');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'applicationName':
        return externObject.applicationName;
      case 'applicationVersion':
        return externObject.applicationVersion;
      case 'applicationIcon':
        return externObject.applicationIcon;
      case 'applicationLegalese':
        return externObject.applicationLegalese;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

