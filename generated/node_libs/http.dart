@JS('http')
library http;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('RequestOptions')
class RequestOptions{
 external String get protocol;
 external String get host;
 external String get hostname;
 external num get family;
 external num get port;
 external String get localAddress;
 external String get socketPath;
 external String get method;
 external String get path;
 external dynamic /*todoTypeLiteral*/ get headers;
 external String get auth;
 external dynamic /*todoUnionType*/ get agent;
}

@JS('Server')
class Server{
 /*  extends events.EventEmitter, net.Server */
 external void setTimeout(num msecs, Function callback);
 external num get maxHeadersCount;
 external num get timeout;
}

@JS('ServerRequest')
class ServerRequest{
 /*  extends IncomingMessage */
 external net.Socket get connection;
}

@JS('ServerResponse')
class ServerResponse{
 /*  extends events.EventEmitter, stream.Writable */
 external bool write(Buffer buffer);
// external bool write(Buffer buffer, [Function cb]);
// external bool write(String str, [Function cb]);
// external bool write(String str, [String encoding, Function cb]);
// external bool write(String str, [String encoding, String fd]);
 external void writeContinue();
 external void writeHead(num statusCode, [String reasonPhrase, dynamic headers]);
// external void writeHead(num statusCode, [dynamic headers]);
 external num get statusCode;
 external String get statusMessage;
 external bool get headersSent;
 external void setHeader(String name, dynamic /*todoUnionType*/ value);
 external bool get sendDate;
 external String getHeader(String name);
 external void removeHeader(String name);
// external dynamic write(dynamic chunk, [String encoding]);
 external void addTrailers(dynamic headers);
 external void end();
// external void end(Buffer buffer, [Function cb]);
// external void end(String str, [Function cb]);
// external void end(String str, [String encoding, Function cb]);
// external void end([dynamic data, String encoding]);
}

@JS('ClientRequest')
class ClientRequest{
 /*  extends events.EventEmitter, stream.Writable */
 external bool write(Buffer buffer);
// external bool write(Buffer buffer, [Function cb]);
// external bool write(String str, [Function cb]);
// external bool write(String str, [String encoding, Function cb]);
// external bool write(String str, [String encoding, String fd]);
// external void write(dynamic chunk, [String encoding]);
 external void abort();
 external void setTimeout(num timeout, [Function callback]);
 external void setNoDelay([bool noDelay]);
 external void setSocketKeepAlive([bool enable, num initialDelay]);
 external void setHeader(String name, dynamic /*todoUnionType*/ value);
 external String getHeader(String name);
 external void removeHeader(String name);
 external void addTrailers(dynamic headers);
 external void end();
// external void end(Buffer buffer, [Function cb]);
// external void end(String str, [Function cb]);
// external void end(String str, [String encoding, Function cb]);
// external void end([dynamic data, String encoding]);
}

@JS('IncomingMessage')
class IncomingMessage{
 /*  extends events.EventEmitter, stream.Readable */
 external String get httpVersion;
 external dynamic get headers;
 external List<String> get rawHeaders;
 external dynamic get trailers;
 external dynamic get rawTrailers;
 external NodeJS.Timer setTimeout(num msecs, Function callback);
 external String get method;
 external String get url;
 external num get statusCode;
 external String get statusMessage;
 external net.Socket get socket;
}

@JS('ClientResponse')
class ClientResponse{
 /*  extends IncomingMessage */
}

@JS('AgentOptions')
class AgentOptions{
 external bool get keepAlive;
 external num get keepAliveMsecs;
 external num get maxSockets;
 external num get maxFreeSockets;
}

@JS('Agent')
class Agent{
/*todo Constructor*/
 external void destroy();
}

 external Server createServer([ void requestListener(IncomingMessage request, ServerResponse response)]);
 external dynamic createClient([num port, String host]);
 external ClientRequest request(RequestOptions options, [ void callback(IncomingMessage res)]);
 external ClientRequest get(dynamic options, [ void callback(IncomingMessage res)]);
