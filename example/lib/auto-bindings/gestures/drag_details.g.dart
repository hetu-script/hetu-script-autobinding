import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';


class DragDownDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DragDownDetails':
        return ({globalPosition = Offset.zero, localPosition}) => DragDownDetailsObjectBinding(DragDownDetails(globalPosition : globalPosition, localPosition : localPosition));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DragDownDetailsObjectBinding extends HT_ExternObject<DragDownDetails> {
  DragDownDetailsObjectBinding(DragDownDetails value) : super(value);

  @override
  final typeid = HT_TypeId('DragDownDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'globalPosition':
        return externObject.globalPosition;
      case 'localPosition':
        return externObject.localPosition;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DragStartDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DragStartDetails':
        return ({sourceTimeStamp, globalPosition = Offset.zero, localPosition, kind}) => DragStartDetailsObjectBinding(DragStartDetails(sourceTimeStamp : sourceTimeStamp, globalPosition : globalPosition, localPosition : localPosition, kind : kind));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DragStartDetailsObjectBinding extends HT_ExternObject<DragStartDetails> {
  DragStartDetailsObjectBinding(DragStartDetails value) : super(value);

  @override
  final typeid = HT_TypeId('DragStartDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'sourceTimeStamp':
        return externObject.sourceTimeStamp;
      case 'globalPosition':
        return externObject.globalPosition;
      case 'localPosition':
        return externObject.localPosition;
      case 'kind':
        return externObject.kind;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DragUpdateDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DragUpdateDetails':
        return ({sourceTimeStamp, delta = Offset.zero, primaryDelta, globalPosition, localPosition}) => DragUpdateDetailsObjectBinding(DragUpdateDetails(sourceTimeStamp : sourceTimeStamp, delta : delta, primaryDelta : primaryDelta, globalPosition : globalPosition, localPosition : localPosition));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DragUpdateDetailsObjectBinding extends HT_ExternObject<DragUpdateDetails> {
  DragUpdateDetailsObjectBinding(DragUpdateDetails value) : super(value);

  @override
  final typeid = HT_TypeId('DragUpdateDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'sourceTimeStamp':
        return externObject.sourceTimeStamp;
      case 'delta':
        return externObject.delta;
      case 'primaryDelta':
        return externObject.primaryDelta;
      case 'globalPosition':
        return externObject.globalPosition;
      case 'localPosition':
        return externObject.localPosition;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DragEndDetailsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DragEndDetails':
        return ({velocity = Velocity.zero, primaryVelocity}) => DragEndDetailsObjectBinding(DragEndDetails(velocity : velocity, primaryVelocity : primaryVelocity));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DragEndDetailsObjectBinding extends HT_ExternObject<DragEndDetails> {
  DragEndDetailsObjectBinding(DragEndDetails value) : super(value);

  @override
  final typeid = HT_TypeId('DragEndDetails');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'velocity':
        return externObject.velocity;
      case 'primaryVelocity':
        return externObject.primaryVelocity;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

