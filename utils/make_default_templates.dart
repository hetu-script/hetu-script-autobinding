import 'package:mustache_template/mustache.dart';
import 'package:path/path.dart' as path;
import 'dart:async';
import 'dart:io';

Future<List<FileSystemEntity>> dirContents(Directory dir) {
  var files = <FileSystemEntity>[];
  var completer = Completer<List<FileSystemEntity>>();
  var lister = dir.list(recursive: true);
  lister.listen((file) {
    var fileName = path.basename(file.path);
    if (file.statSync().type == FileSystemEntityType.file &&
        fileName.endsWith('.mustache')) {
      files.add(file);
    }
  }, onDone: () => completer.complete(files));
  return completer.future;
}

void renderTemplate(
    String content, Map<String, dynamic> templateVars, String opath) async {
  ;
  var template = Template(content, lenient: true, htmlEscapeValues: false);
  var output = template.renderString(templateVars);
  var dirName = path.dirname(opath);
  await Directory(dirName).create(recursive: true);
  final file = File(opath);
  await file.writeAsString(output);
}

var defaultTemplate = """
///
///This file is generated.
///

{{#list}}
var {{name}} = '''{{content}}''';

{{/list}}
""";

void makeDefaultTemplates() async {
  var files = await dirContents(Directory('bin/template/'));
  var list = [];
  for (var f in files) {
    var fileName = path.basenameWithoutExtension(f.path);
    var file = File(f.path);
    var content = await file.readAsString();
    list.add({
      'name': fileName,
      'content': content,
    });
  }
  var templateVars = {'list': list};
  renderTemplate(defaultTemplate, templateVars, 'lib/default_templates.dart');
}

void main(List<String> args) {
  makeDefaultTemplates();
}
