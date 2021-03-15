import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class FileModeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FileMode.read':
        return FileMode.read;
      case 'FileMode.READ':
        return FileMode.READ;
      case 'FileMode.write':
        return FileMode.write;
      case 'FileMode.WRITE':
        return FileMode.WRITE;
      case 'FileMode.append':
        return FileMode.append;
      case 'FileMode.APPEND':
        return FileMode.APPEND;
      case 'FileMode.writeOnly':
        return FileMode.writeOnly;
      case 'FileMode.WRITE_ONLY':
        return FileMode.WRITE_ONLY;
      case 'FileMode.writeOnlyAppend':
        return FileMode.writeOnlyAppend;
      case 'FileMode.WRITE_ONLY_APPEND':
        return FileMode.WRITE_ONLY_APPEND;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class FileLockClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FileLock.shared':
        return FileLock.shared;
      case 'FileLock.SHARED':
        return FileLock.SHARED;
      case 'FileLock.exclusive':
        return FileLock.exclusive;
      case 'FileLock.EXCLUSIVE':
        return FileLock.EXCLUSIVE;
      case 'FileLock.blockingShared':
        return FileLock.blockingShared;
      case 'FileLock.BLOCKING_SHARED':
        return FileLock.BLOCKING_SHARED;
      case 'FileLock.blockingExclusive':
        return FileLock.blockingExclusive;
      case 'FileLock.BLOCKING_EXCLUSIVE':
        return FileLock.BLOCKING_EXCLUSIVE;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class FileSystemExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FileSystemException':
        return ([message = "", path = "", osError]) => FileSystemExceptionObjectBinding(FileSystemException(message, path, osError));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class FileSystemExceptionObjectBinding extends HT_ExternObject<FileSystemException> {
  FileSystemExceptionObjectBinding(FileSystemException value) : super(value);

  @override
  final typeid = HT_TypeId('FileSystemException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'path':
        return externObject.path;
      case 'osError':
        return externObject.osError;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

