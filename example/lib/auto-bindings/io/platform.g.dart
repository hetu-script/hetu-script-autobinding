import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class PlatformClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Platform':
        return () => PlatformObjectBinding(Platform());
      case 'numberOfProcessors':
        return () => Platform.numberOfProcessors;
      case 'pathSeparator':
        return () => Platform.pathSeparator;
      case 'localeName':
        return () => Platform.localeName;
      case 'operatingSystem':
        return () => Platform.operatingSystem;
      case 'operatingSystemVersion':
        return () => Platform.operatingSystemVersion;
      case 'localHostname':
        return () => Platform.localHostname;
      case 'environment':
        return () => Platform.environment;
      case 'executable':
        return () => Platform.executable;
      case 'resolvedExecutable':
        return () => Platform.resolvedExecutable;
      case 'script':
        return () => Platform.script;
      case 'executableArguments':
        return () => Platform.executableArguments;
      case 'packageRoot':
        return () => Platform.packageRoot;
      case 'packageConfig':
        return () => Platform.packageConfig;
      case 'version':
        return () => Platform.version;
      case 'Platform.isLinux':
        return Platform.isLinux;
      case 'Platform.isMacOS':
        return Platform.isMacOS;
      case 'Platform.isWindows':
        return Platform.isWindows;
      case 'Platform.isAndroid':
        return Platform.isAndroid;
      case 'Platform.isIOS':
        return Platform.isIOS;
      case 'Platform.isFuchsia':
        return Platform.isFuchsia;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class PlatformObjectBinding extends HT_ExternObject<Platform> {
  PlatformObjectBinding(Platform value) : super(value);

  @override
  final typeid = HT_TypeId('Platform');


}

