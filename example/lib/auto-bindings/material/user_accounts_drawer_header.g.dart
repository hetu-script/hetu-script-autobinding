import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class UserAccountsDrawerHeaderClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'UserAccountsDrawerHeader':
        return ({key, decoration, margin = const EdgeInsets.only(bottom: 8.0), currentAccountPicture, otherAccountsPictures, accountName, accountEmail, onDetailsPressed, arrowColor = Colors.white}) => UserAccountsDrawerHeaderObjectBinding(UserAccountsDrawerHeader(key : key, decoration : decoration, margin : margin, currentAccountPicture : currentAccountPicture, otherAccountsPictures : otherAccountsPictures, accountName : accountName, accountEmail : accountEmail, onDetailsPressed : onDetailsPressed, arrowColor : arrowColor));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class UserAccountsDrawerHeaderObjectBinding extends HT_ExternObject<UserAccountsDrawerHeader> {
  UserAccountsDrawerHeaderObjectBinding(UserAccountsDrawerHeader value) : super(value);

  @override
  final typeid = HT_TypeId('UserAccountsDrawerHeader');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'decoration':
        return externObject.decoration;
      case 'margin':
        return externObject.margin;
      case 'currentAccountPicture':
        return externObject.currentAccountPicture;
      case 'otherAccountsPictures':
        return externObject.otherAccountsPictures;
      case 'accountName':
        return externObject.accountName;
      case 'accountEmail':
        return externObject.accountEmail;
      case 'onDetailsPressed':
        return externObject.onDetailsPressed;
      case 'arrowColor':
        return externObject.arrowColor;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

