import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/foundation.dart';
import 'dart:ui';


class StackFrameClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'StackFrame':
        return ({number, column, line, packageScheme, package, packagePath, className = '', method, isConstructor = false, source}) => StackFrameObjectBinding(StackFrame(number : number, column : column, line : line, packageScheme : packageScheme, package : package, packagePath : packagePath, className : className, method : method, isConstructor : isConstructor, source : source));
      case 'fromStackTrace':
        return (stack) => StackFrame.fromStackTrace(stack);
      case 'fromStackString':
        return (stack) => StackFrame.fromStackString(stack);
      case 'fromStackTraceLine':
        return (line) => StackFrame.fromStackTraceLine(line);
      case 'StackFrame.asynchronousSuspension':
        return StackFrame.asynchronousSuspension;
      case 'StackFrame.stackOverFlowElision':
        return StackFrame.stackOverFlowElision;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StackFrameObjectBinding extends HT_ExternObject<StackFrame> {
  StackFrameObjectBinding(StackFrame value) : super(value);

  @override
  final typeid = HT_TypeId('StackFrame');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'source':
        return externObject.source;
      case 'number':
        return externObject.number;
      case 'packageScheme':
        return externObject.packageScheme;
      case 'package':
        return externObject.package;
      case 'packagePath':
        return externObject.packagePath;
      case 'line':
        return externObject.line;
      case 'column':
        return externObject.column;
      case 'className':
        return externObject.className;
      case 'method':
        return externObject.method;
      case 'isConstructor':
        return externObject.isConstructor;
      case 'hashCode':
        return externObject.hashCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

