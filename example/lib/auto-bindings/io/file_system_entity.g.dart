import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class FileSystemEntityTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FileSystemEntityType.file':
        return FileSystemEntityType.file;
      case 'FileSystemEntityType.FILE':
        return FileSystemEntityType.FILE;
      case 'FileSystemEntityType.directory':
        return FileSystemEntityType.directory;
      case 'FileSystemEntityType.DIRECTORY':
        return FileSystemEntityType.DIRECTORY;
      case 'FileSystemEntityType.link':
        return FileSystemEntityType.link;
      case 'FileSystemEntityType.LINK':
        return FileSystemEntityType.LINK;
      case 'FileSystemEntityType.notFound':
        return FileSystemEntityType.notFound;
      case 'FileSystemEntityType.NOT_FOUND':
        return FileSystemEntityType.NOT_FOUND;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class FileStatClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'statSync':
        return (path) => FileStat.statSync(path);
      case 'stat':
        return (path) => FileStat.stat(path);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class FileSystemEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'FileSystemEvent.create':
        return FileSystemEvent.create;
      case 'FileSystemEvent.CREATE':
        return FileSystemEvent.CREATE;
      case 'FileSystemEvent.modify':
        return FileSystemEvent.modify;
      case 'FileSystemEvent.MODIFY':
        return FileSystemEvent.MODIFY;
      case 'FileSystemEvent.delete':
        return FileSystemEvent.delete;
      case 'FileSystemEvent.DELETE':
        return FileSystemEvent.DELETE;
      case 'FileSystemEvent.move':
        return FileSystemEvent.move;
      case 'FileSystemEvent.MOVE':
        return FileSystemEvent.MOVE;
      case 'FileSystemEvent.all':
        return FileSystemEvent.all;
      case 'FileSystemEvent.ALL':
        return FileSystemEvent.ALL;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


