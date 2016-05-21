@JS('https')
library https;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('ServerOptions')
class ServerOptions{
 external dynamic get pfx;
 external dynamic get key;
 external String get passphrase;
 external dynamic get cert;
 external dynamic get ca;
 external dynamic get crl;
 external String get ciphers;
 external bool get honorCipherOrder;
 external bool get requestCert;
 external bool get rejectUnauthorized;
 external dynamic get NPNProtocols;
 external  dynamic SNICallback(String servername); get SNICallback;
}

@JS('RequestOptions')
class RequestOptions{
 /*  extends http.RequestOptions */
 external dynamic get pfx;
 external dynamic get key;
 external String get passphrase;
 external dynamic get cert;
 external dynamic get ca;
 external String get ciphers;
 external bool get rejectUnauthorized;
 external String get secureProtocol;
}

@JS('Agent')
class Agent{
 external num get maxSockets;
 external dynamic get sockets;
 external dynamic get requests;
}

@JS('Server')
class Server{
 /*  extends tls.Server */
}

 external Server createServer(ServerOptions options, [Function requestListener]);
 external http.ClientRequest request(RequestOptions options, [ void callback(http.IncomingMessage res)]);
 external http.ClientRequest get(RequestOptions options, [ void callback(http.IncomingMessage res)]);
