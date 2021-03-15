import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

class DrawerAlignmentClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'start':
        return DrawerAlignment.start;
      case 'end':
        return DrawerAlignment.end;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DrawerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Drawer':
        return ({key, elevation = 16.0, child, semanticLabel}) => DrawerObjectBinding(Drawer(key : key, elevation : elevation, child : child, semanticLabel : semanticLabel));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DrawerObjectBinding extends HT_ExternObject<Drawer> {
  DrawerObjectBinding(Drawer value) : super(value);

  @override
  final typeid = HT_TypeId('Drawer');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'elevation':
        return externObject.elevation;
      case 'child':
        return externObject.child;
      case 'semanticLabel':
        return externObject.semanticLabel;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DrawerControllerClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DrawerController':
        return ({key, child, alignment, isDrawerOpen = false, drawerCallback, dragStartBehavior = DragStartBehavior.start, scrimColor, edgeDragWidth, enableOpenDragGesture = true}) => DrawerControllerObjectBinding(DrawerController(key : key, child : child, alignment : alignment, isDrawerOpen : isDrawerOpen, drawerCallback : drawerCallback, dragStartBehavior : dragStartBehavior, scrimColor : scrimColor, edgeDragWidth : edgeDragWidth, enableOpenDragGesture : enableOpenDragGesture));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DrawerControllerObjectBinding extends HT_ExternObject<DrawerController> {
  DrawerControllerObjectBinding(DrawerController value) : super(value);

  @override
  final typeid = HT_TypeId('DrawerController');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'child':
        return externObject.child;
      case 'alignment':
        return externObject.alignment;
      case 'drawerCallback':
        return externObject.drawerCallback;
      case 'dragStartBehavior':
        return externObject.dragStartBehavior;
      case 'scrimColor':
        return externObject.scrimColor;
      case 'enableOpenDragGesture':
        return externObject.enableOpenDragGesture;
      case 'edgeDragWidth':
        return externObject.edgeDragWidth;
      case 'isDrawerOpen':
        return externObject.isDrawerOpen;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class DrawerControllerStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DrawerControllerState':
        return () => DrawerControllerStateObjectBinding(DrawerControllerState());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DrawerControllerStateObjectBinding extends HT_ExternObject<DrawerControllerState> {
  DrawerControllerStateObjectBinding(DrawerControllerState value) : super(value);

  @override
  final typeid = HT_TypeId('DrawerControllerState');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'initState':
        return externObject.initState;
      case 'dispose':
        return externObject.dispose;
      case 'didUpdateWidget':
        return externObject.didUpdateWidget;
      case 'open':
        return externObject.open;
      case 'close':
        return externObject.close;
      case 'build':
        return externObject.build;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

