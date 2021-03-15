import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class FeedbackClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'forTap':
        return (context) => Feedback.forTap(context);
      case 'wrapForTap':
        return (callback, context) => Feedback.wrapForTap(callback, context);
      case 'forLongPress':
        return (context) => Feedback.forLongPress(context);
      case 'wrapForLongPress':
        return (callback, context) => Feedback.wrapForLongPress(callback, context);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


