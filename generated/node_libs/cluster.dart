@JS('cluster')
library cluster;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('ClusterSettings')
class ClusterSettings{
 external String get exec;
 external List<String> get args;
 external bool get silent;
}

@JS('Address')
class Address{
 external String get address;
 external num get port;
 external String get addressType;
}

@JS('Worker')
class Worker{
 /*  extends events.EventEmitter */
 external void send(dynamic message, [dynamic sendHandle]);
 external void kill([String signal]);
 external void destroy([String signal]);
 external void disconnect();
 external bool isConnected();
 external bool isDead();
}

 external void setupMaster([ClusterSettings settings]);
 external Worker fork([dynamic env]);
 external void disconnect([Function callback]);
 external void addListener(String event, Function listener);
 external void on(dynamic /*todo StringLiteralType 'disconnect'*/ event,  void listener(Worker worker));
// external void on(dynamic /*todo StringLiteralType 'exit'*/ event,  void listener(Worker worker, num code, String signal));
// external void on(dynamic /*todo StringLiteralType 'fork'*/ event,  void listener(Worker worker));
// external void on(dynamic /*todo StringLiteralType 'listening'*/ event,  void listener(Worker worker, dynamic address));
// external void on(dynamic /*todo StringLiteralType 'message'*/ event,  void listener(Worker worker, dynamic message));
// external void on(dynamic /*todo StringLiteralType 'online'*/ event,  void listener(Worker worker));
// external void on(dynamic /*todo StringLiteralType 'setup'*/ event,  void listener(dynamic settings));
// external dynamic on(String event, Function listener);
 external void once(String event, Function listener);
 external void removeListener(String event, Function listener);
 external void removeAllListeners([String event]);
 external void setMaxListeners(num n);
 external List<Function> listeners(String event);
 external bool emit(String event, List<dynamic> args);
