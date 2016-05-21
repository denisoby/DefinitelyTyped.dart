@JS('net')
library net;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('Socket')
class Socket{
 /*  extends stream.Duplex */
 external bool write(Buffer buffer);
// external bool write(Buffer buffer, [Function cb]);
// external bool write(String str, [Function cb]);
// external bool write(String str, [String encoding, Function cb]);
// external bool write(String str, [String encoding, String fd]);
 external void connect(num port, [String host, Function connectionListener]);
// external void connect(String path, [Function connectionListener]);
 external num get bufferSize;
 external void setEncoding([String encoding]);
// external void write(dynamic data, [String encoding, Function callback]);
 external void destroy();
 external void pause();
 external void resume();
 external void setTimeout(num timeout, [Function callback]);
 external void setNoDelay([bool noDelay]);
 external void setKeepAlive([bool enable, num initialDelay]);
 external dynamic /*todoTypeLiteral*/ address();
 external void unref();
 external void ref();
 external String get remoteAddress;
 external String get remoteFamily;
 external num get remotePort;
 external String get localAddress;
 external num get localPort;
 external num get bytesRead;
 external num get bytesWritten;
 external void end();
// external void end(Buffer buffer, [Function cb]);
// external void end(String str, [Function cb]);
// external void end(String str, [String encoding, Function cb]);
// external void end([dynamic data, String encoding]);
}

@JS('ListenOptions')
class ListenOptions{
 external num get port;
 external String get host;
 external num get backlog;
 external String get path;
 external bool get exclusive;
}

@JS('Server')
class Server{
 /*  extends Socket */
 external Server listen(num port, [String hostname, num backlog, Function listeningListener]);
// external Server listen(num port, [String hostname, Function listeningListener]);
// external Server listen(num port, [num backlog, Function listeningListener]);
// external Server listen(num port, [Function listeningListener]);
// external Server listen(String path, [num backlog, Function listeningListener]);
// external Server listen(String path, [Function listeningListener]);
// external Server listen(dynamic handle, [num backlog, Function listeningListener]);
// external Server listen(dynamic handle, [Function listeningListener]);
// external Server listen(ListenOptions options, [Function listeningListener]);
 external Server close([Function callback]);
 external dynamic /*todoTypeLiteral*/ address();
 external void getConnections( void cb(Error error, num count));
 external Server ref();
 external Server unref();
 external num get maxConnections;
 external num get connections;
}

 external Server createServer([ void connectionListener(Socket socket)]);
// external Server createServer([dynamic /*todoTypeLiteral*/ options,  void connectionListener(Socket socket)]);
 external Socket connect(dynamic /*todoTypeLiteral*/ options, [Function connectionListener]);
// external Socket connect(num port, [String host, Function connectionListener]);
// external Socket connect(String path, [Function connectionListener]);
 external Socket createConnection(dynamic /*todoTypeLiteral*/ options, [Function connectionListener]);
// external Socket createConnection(num port, [String host, Function connectionListener]);
// external Socket createConnection(String path, [Function connectionListener]);
 external num isIP(String input);
 external bool isIPv4(String input);
 external bool isIPv6(String input);
