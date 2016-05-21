@JS('tls')
library tls;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('TlsOptions')
class TlsOptions{
 external String get host;
 external num get port;
 external dynamic get pfx;
 external dynamic get key;
 external String get passphrase;
 external dynamic get cert;
 external dynamic get ca;
 external dynamic get crl;
 external String get ciphers;
 external dynamic get honorCipherOrder;
 external bool get requestCert;
 external bool get rejectUnauthorized;
 external dynamic get NPNProtocols;
 external  dynamic SNICallback(String servername); get SNICallback;
}

@JS('ConnectionOptions')
class ConnectionOptions{
 external String get host;
 external num get port;
 external net.Socket get socket;
 external dynamic get pfx;
 external dynamic get key;
 external String get passphrase;
 external dynamic get cert;
 external dynamic get ca;
 external bool get rejectUnauthorized;
 external dynamic get NPNProtocols;
 external String get servername;
}

@JS('Server')
class Server{
 /*  extends net.Server */
 external Server close();
 external dynamic /*todoTypeLiteral*/ address();
 external void addContext(String hostName, dynamic /*todoTypeLiteral*/ credentials);
 external num get maxConnections;
 external num get connections;
}

@JS('ClearTextStream')
class ClearTextStream{
 /*  extends stream.Duplex */
 external bool get authorized;
 external Error get authorizationError;
 external dynamic getPeerCertificate();
 external dynamic /*todoTypeLiteral*/ get getCipher;
 external dynamic /*todoTypeLiteral*/ get address;
 external String get remoteAddress;
 external num get remotePort;
}

@JS('SecurePair')
class SecurePair{
 external dynamic get encrypted;
 external dynamic get cleartext;
}

@JS('SecureContextOptions')
class SecureContextOptions{
 external dynamic get pfx;
 external dynamic get key;
 external String get passphrase;
 external dynamic get cert;
 external dynamic get ca;
 external dynamic get crl;
 external String get ciphers;
 external bool get honorCipherOrder;
}

@JS('SecureContext')
class SecureContext{
 external dynamic get context;
}

 external Server createServer(TlsOptions options, [ void secureConnectionListener(ClearTextStream cleartextStream)]);
 external ClearTextStream connect(TlsOptions options, [ void secureConnectionListener()]);
// external ClearTextStream connect(num port, [String host, ConnectionOptions options,  void secureConnectListener()]);
// external ClearTextStream connect(num port, [ConnectionOptions options,  void secureConnectListener()]);
 external SecurePair createSecurePair([crypto.Credentials credentials, bool isServer, bool requestCert, bool rejectUnauthorized]);
 external SecureContext createSecureContext(SecureContextOptions details);
