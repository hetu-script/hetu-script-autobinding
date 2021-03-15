import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class ProcessInfoClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ProcessInfo':
        return () => ProcessInfoObjectBinding(ProcessInfo());
      case 'currentRss':
        return () => ProcessInfo.currentRss;
      case 'maxRss':
        return () => ProcessInfo.maxRss;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ProcessInfoObjectBinding extends HT_ExternObject<ProcessInfo> {
  ProcessInfoObjectBinding(ProcessInfo value) : super(value);

  @override
  final typeid = HT_TypeId('ProcessInfo');


}

class ProcessStartModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'values':
        return () => ProcessStartMode.values;
      case 'ProcessStartMode.normal':
        return ProcessStartMode.normal;
      case 'ProcessStartMode.NORMAL':
        return ProcessStartMode.NORMAL;
      case 'ProcessStartMode.inheritStdio':
        return ProcessStartMode.inheritStdio;
      case 'ProcessStartMode.INHERIT_STDIO':
        return ProcessStartMode.INHERIT_STDIO;
      case 'ProcessStartMode.detached':
        return ProcessStartMode.detached;
      case 'ProcessStartMode.DETACHED':
        return ProcessStartMode.DETACHED;
      case 'ProcessStartMode.detachedWithStdio':
        return ProcessStartMode.detachedWithStdio;
      case 'ProcessStartMode.DETACHED_WITH_STDIO':
        return ProcessStartMode.DETACHED_WITH_STDIO;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class ProcessResultClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ProcessResult':
        return (pid, exitCode, stdout, stderr) => ProcessResultObjectBinding(ProcessResult(pid, exitCode, stdout, stderr));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ProcessResultObjectBinding extends HT_ExternObject<ProcessResult> {
  ProcessResultObjectBinding(ProcessResult value) : super(value);

  @override
  final typeid = HT_TypeId('ProcessResult');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'exitCode':
        return externObject.exitCode;
      case 'stdout':
        return externObject.stdout;
      case 'stderr':
        return externObject.stderr;
      case 'pid':
        return externObject.pid;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ProcessSignalClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ProcessSignal.sighup':
        return ProcessSignal.sighup;
      case 'ProcessSignal.sigint':
        return ProcessSignal.sigint;
      case 'ProcessSignal.sigquit':
        return ProcessSignal.sigquit;
      case 'ProcessSignal.sigill':
        return ProcessSignal.sigill;
      case 'ProcessSignal.sigtrap':
        return ProcessSignal.sigtrap;
      case 'ProcessSignal.sigabrt':
        return ProcessSignal.sigabrt;
      case 'ProcessSignal.sigbus':
        return ProcessSignal.sigbus;
      case 'ProcessSignal.sigfpe':
        return ProcessSignal.sigfpe;
      case 'ProcessSignal.sigkill':
        return ProcessSignal.sigkill;
      case 'ProcessSignal.sigusr1':
        return ProcessSignal.sigusr1;
      case 'ProcessSignal.sigsegv':
        return ProcessSignal.sigsegv;
      case 'ProcessSignal.sigusr2':
        return ProcessSignal.sigusr2;
      case 'ProcessSignal.sigpipe':
        return ProcessSignal.sigpipe;
      case 'ProcessSignal.sigalrm':
        return ProcessSignal.sigalrm;
      case 'ProcessSignal.sigterm':
        return ProcessSignal.sigterm;
      case 'ProcessSignal.sigchld':
        return ProcessSignal.sigchld;
      case 'ProcessSignal.sigcont':
        return ProcessSignal.sigcont;
      case 'ProcessSignal.sigstop':
        return ProcessSignal.sigstop;
      case 'ProcessSignal.sigtstp':
        return ProcessSignal.sigtstp;
      case 'ProcessSignal.sigttin':
        return ProcessSignal.sigttin;
      case 'ProcessSignal.sigttou':
        return ProcessSignal.sigttou;
      case 'ProcessSignal.sigurg':
        return ProcessSignal.sigurg;
      case 'ProcessSignal.sigxcpu':
        return ProcessSignal.sigxcpu;
      case 'ProcessSignal.sigxfsz':
        return ProcessSignal.sigxfsz;
      case 'ProcessSignal.sigvtalrm':
        return ProcessSignal.sigvtalrm;
      case 'ProcessSignal.sigprof':
        return ProcessSignal.sigprof;
      case 'ProcessSignal.sigwinch':
        return ProcessSignal.sigwinch;
      case 'ProcessSignal.sigpoll':
        return ProcessSignal.sigpoll;
      case 'ProcessSignal.sigsys':
        return ProcessSignal.sigsys;
      case 'ProcessSignal.SIGHUP':
        return ProcessSignal.SIGHUP;
      case 'ProcessSignal.SIGINT':
        return ProcessSignal.SIGINT;
      case 'ProcessSignal.SIGQUIT':
        return ProcessSignal.SIGQUIT;
      case 'ProcessSignal.SIGILL':
        return ProcessSignal.SIGILL;
      case 'ProcessSignal.SIGTRAP':
        return ProcessSignal.SIGTRAP;
      case 'ProcessSignal.SIGABRT':
        return ProcessSignal.SIGABRT;
      case 'ProcessSignal.SIGBUS':
        return ProcessSignal.SIGBUS;
      case 'ProcessSignal.SIGFPE':
        return ProcessSignal.SIGFPE;
      case 'ProcessSignal.SIGKILL':
        return ProcessSignal.SIGKILL;
      case 'ProcessSignal.SIGUSR1':
        return ProcessSignal.SIGUSR1;
      case 'ProcessSignal.SIGSEGV':
        return ProcessSignal.SIGSEGV;
      case 'ProcessSignal.SIGUSR2':
        return ProcessSignal.SIGUSR2;
      case 'ProcessSignal.SIGPIPE':
        return ProcessSignal.SIGPIPE;
      case 'ProcessSignal.SIGALRM':
        return ProcessSignal.SIGALRM;
      case 'ProcessSignal.SIGTERM':
        return ProcessSignal.SIGTERM;
      case 'ProcessSignal.SIGCHLD':
        return ProcessSignal.SIGCHLD;
      case 'ProcessSignal.SIGCONT':
        return ProcessSignal.SIGCONT;
      case 'ProcessSignal.SIGSTOP':
        return ProcessSignal.SIGSTOP;
      case 'ProcessSignal.SIGTSTP':
        return ProcessSignal.SIGTSTP;
      case 'ProcessSignal.SIGTTIN':
        return ProcessSignal.SIGTTIN;
      case 'ProcessSignal.SIGTTOU':
        return ProcessSignal.SIGTTOU;
      case 'ProcessSignal.SIGURG':
        return ProcessSignal.SIGURG;
      case 'ProcessSignal.SIGXCPU':
        return ProcessSignal.SIGXCPU;
      case 'ProcessSignal.SIGXFSZ':
        return ProcessSignal.SIGXFSZ;
      case 'ProcessSignal.SIGVTALRM':
        return ProcessSignal.SIGVTALRM;
      case 'ProcessSignal.SIGPROF':
        return ProcessSignal.SIGPROF;
      case 'ProcessSignal.SIGWINCH':
        return ProcessSignal.SIGWINCH;
      case 'ProcessSignal.SIGPOLL':
        return ProcessSignal.SIGPOLL;
      case 'ProcessSignal.SIGSYS':
        return ProcessSignal.SIGSYS;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class SignalExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SignalException':
        return (message, [osError]) => SignalExceptionObjectBinding(SignalException(message, osError));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SignalExceptionObjectBinding extends HT_ExternObject<SignalException> {
  SignalExceptionObjectBinding(SignalException value) : super(value);

  @override
  final typeid = HT_TypeId('SignalException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'osError':
        return externObject.osError;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class ProcessExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'ProcessException':
        return (executable, arguments, [message = "", errorCode = 0]) => ProcessExceptionObjectBinding(ProcessException(executable, arguments, message, errorCode));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class ProcessExceptionObjectBinding extends HT_ExternObject<ProcessException> {
  ProcessExceptionObjectBinding(ProcessException value) : super(value);

  @override
  final typeid = HT_TypeId('ProcessException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'executable':
        return externObject.executable;
      case 'arguments':
        return externObject.arguments;
      case 'message':
        return externObject.message;
      case 'errorCode':
        return externObject.errorCode;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

