import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

class ScriptCategoryClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'englishLike':
        return ScriptCategory.englishLike;
      case 'dense':
        return ScriptCategory.dense;
      case 'tall':
        return ScriptCategory.tall;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TypographyClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'lerp':
        return (a, b, t) => Typography.lerp(a, b, t);
      case 'Typography.blackMountainView':
        return Typography.blackMountainView;
      case 'Typography.whiteMountainView':
        return Typography.whiteMountainView;
      case 'Typography.blackRedmond':
        return Typography.blackRedmond;
      case 'Typography.whiteRedmond':
        return Typography.whiteRedmond;
      case 'Typography.blackHelsinki':
        return Typography.blackHelsinki;
      case 'Typography.whiteHelsinki':
        return Typography.whiteHelsinki;
      case 'Typography.blackCupertino':
        return Typography.blackCupertino;
      case 'Typography.whiteCupertino':
        return Typography.whiteCupertino;
      case 'Typography.blackRedwoodCity':
        return Typography.blackRedwoodCity;
      case 'Typography.whiteRedwoodCity':
        return Typography.whiteRedwoodCity;
      case 'Typography.englishLike2014':
        return Typography.englishLike2014;
      case 'Typography.englishLike2018':
        return Typography.englishLike2018;
      case 'Typography.dense2014':
        return Typography.dense2014;
      case 'Typography.dense2018':
        return Typography.dense2018;
      case 'Typography.tall2014':
        return Typography.tall2014;
      case 'Typography.tall2018':
        return Typography.tall2018;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


