import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class TlsExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'TlsException':
        return ([message = "", osError]) => TlsExceptionObjectBinding(TlsException(message, osError));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class TlsExceptionObjectBinding extends HT_ExternObject<TlsException> {
  TlsExceptionObjectBinding(TlsException value) : super(value);

  @override
  final typeid = HT_TypeId('TlsException');


}

class HandshakeExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'HandshakeException':
        return ([message = "", osError]) => HandshakeExceptionObjectBinding(HandshakeException(message, osError));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class HandshakeExceptionObjectBinding extends HT_ExternObject<HandshakeException> {
  HandshakeExceptionObjectBinding(HandshakeException value) : super(value);

  @override
  final typeid = HT_TypeId('HandshakeException');


}

class CertificateExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'CertificateException':
        return ([message = "", osError]) => CertificateExceptionObjectBinding(CertificateException(message, osError));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class CertificateExceptionObjectBinding extends HT_ExternObject<CertificateException> {
  CertificateExceptionObjectBinding(CertificateException value) : super(value);

  @override
  final typeid = HT_TypeId('CertificateException');


}

