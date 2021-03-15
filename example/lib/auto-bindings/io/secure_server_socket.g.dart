import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class SecureServerSocketClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'bind':
        return (address, port, context, {backlog = 0, v6Only = false, requestClientCertificate = false, requireClientCertificate = false, supportedProtocols, shared = false}) => SecureServerSocket.bind(address, port, context, backlog : backlog, v6Only : v6Only, requestClientCertificate : requestClientCertificate, requireClientCertificate : requireClientCertificate, supportedProtocols : supportedProtocols, shared : shared);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class RawSecureServerSocketClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'bind':
        return (address, port, context, {backlog = 0, v6Only = false, requestClientCertificate = false, requireClientCertificate = false, supportedProtocols, shared = false}) => RawSecureServerSocket.bind(address, port, context, backlog : backlog, v6Only : v6Only, requestClientCertificate : requestClientCertificate, requireClientCertificate : requireClientCertificate, supportedProtocols : supportedProtocols, shared : shared);
      default:
        throw HTErr_Undefined(id);
    }
  }
}


