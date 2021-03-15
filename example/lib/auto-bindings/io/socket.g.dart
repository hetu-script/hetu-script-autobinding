import 'package:hetu_script/hetu_script.dart';
import 'dart:io';


class InternetAddressTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'InternetAddressType.IPv4':
        return InternetAddressType.IPv4;
      case 'InternetAddressType.IPv6':
        return InternetAddressType.IPv6;
      case 'InternetAddressType.unix':
        return InternetAddressType.unix;
      case 'InternetAddressType.any':
        return InternetAddressType.any;
      case 'InternetAddressType.IP_V4':
        return InternetAddressType.IP_V4;
      case 'InternetAddressType.IP_V6':
        return InternetAddressType.IP_V6;
      case 'InternetAddressType.ANY':
        return InternetAddressType.ANY;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class SocketDirectionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SocketDirection.receive':
        return SocketDirection.receive;
      case 'SocketDirection.send':
        return SocketDirection.send;
      case 'SocketDirection.both':
        return SocketDirection.both;
      case 'SocketDirection.RECEIVE':
        return SocketDirection.RECEIVE;
      case 'SocketDirection.SEND':
        return SocketDirection.SEND;
      case 'SocketDirection.BOTH':
        return SocketDirection.BOTH;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class SocketOptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SocketOption.tcpNoDelay':
        return SocketOption.tcpNoDelay;
      case 'SocketOption.TCP_NODELAY':
        return SocketOption.TCP_NODELAY;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class RawSocketOptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawSocketOption':
        return (level, option, value) => RawSocketOptionObjectBinding(RawSocketOption(level, option, value));
      case 'levelSocket':
        return () => RawSocketOption.levelSocket;
      case 'levelIPv4':
        return () => RawSocketOption.levelIPv4;
      case 'IPv4MulticastInterface':
        return () => RawSocketOption.IPv4MulticastInterface;
      case 'levelIPv6':
        return () => RawSocketOption.levelIPv6;
      case 'IPv6MulticastInterface':
        return () => RawSocketOption.IPv6MulticastInterface;
      case 'levelTcp':
        return () => RawSocketOption.levelTcp;
      case 'levelUdp':
        return () => RawSocketOption.levelUdp;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class RawSocketOptionObjectBinding extends HT_ExternObject<RawSocketOption> {
  RawSocketOptionObjectBinding(RawSocketOption value) : super(value);

  @override
  final typeid = HT_TypeId('RawSocketOption');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'level':
        return externObject.level;
      case 'option':
        return externObject.option;
      case 'value':
        return externObject.value;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class RawSocketEventClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'RawSocketEvent.read':
        return RawSocketEvent.read;
      case 'RawSocketEvent.write':
        return RawSocketEvent.write;
      case 'RawSocketEvent.readClosed':
        return RawSocketEvent.readClosed;
      case 'RawSocketEvent.closed':
        return RawSocketEvent.closed;
      case 'RawSocketEvent.READ':
        return RawSocketEvent.READ;
      case 'RawSocketEvent.WRITE':
        return RawSocketEvent.WRITE;
      case 'RawSocketEvent.READ_CLOSED':
        return RawSocketEvent.READ_CLOSED;
      case 'RawSocketEvent.CLOSED':
        return RawSocketEvent.CLOSED;
      default:
        throw HTErr_Undefined(id);
    }
  }
}


class DatagramClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Datagram':
        return (data, address, port) => DatagramObjectBinding(Datagram(data, address, port));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DatagramObjectBinding extends HT_ExternObject<Datagram> {
  DatagramObjectBinding(Datagram value) : super(value);

  @override
  final typeid = HT_TypeId('Datagram');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'data':
        return externObject.data;
      case 'address':
        return externObject.address;
      case 'port':
        return externObject.port;
      default:
        throw HTErr_Undefined(id);
    }
  }

  @override
  void assign(String id, dynamic value) {
    switch (id) {
      case 'data':
        externObject.data = value;
        break;
      case 'address':
        externObject.address = value;
        break;
      case 'port':
        externObject.port = value;
        break;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SocketExceptionClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'SocketException':
        return (message, {osError, address, port}) => SocketExceptionObjectBinding(SocketException(message, osError : osError, address : address, port : port));
      case 'SocketException.closed':
        return () => SocketExceptionObjectBinding(SocketException.closed());
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class SocketExceptionObjectBinding extends HT_ExternObject<SocketException> {
  SocketExceptionObjectBinding(SocketException value) : super(value);

  @override
  final typeid = HT_TypeId('SocketException');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'message':
        return externObject.message;
      case 'osError':
        return externObject.osError;
      case 'address':
        return externObject.address;
      case 'port':
        return externObject.port;
      case 'toString':
        return externObject.toString;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

