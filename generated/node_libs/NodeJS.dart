@JS('NodeJS')
library NodeJS;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('ErrnoException')
class ErrnoException{
 /*  extends Error */
 external num get errno;
 external String get code;
 external String get path;
 external String get syscall;
 external String get stack;
}

@JS('EventEmitter')
class EventEmitter{
 external /*todo type ThisType*/ dynamic addListener(String event, Function listener);
 external /*todo type ThisType*/ dynamic on(String event, Function listener);
 external /*todo type ThisType*/ dynamic once(String event, Function listener);
 external /*todo type ThisType*/ dynamic removeListener(String event, Function listener);
 external /*todo type ThisType*/ dynamic removeAllListeners([String event]);
 external /*todo type ThisType*/ dynamic setMaxListeners(num n);
 external num getMaxListeners();
 external List<Function> listeners(String event);
 external bool emit(String event, List<dynamic> args);
 external num listenerCount(String type);
}

@JS('ReadableStream')
class ReadableStream{
 /*  extends EventEmitter */
 external bool get readable;
 external dynamic /*todoUnionType*/ read([num size]);
 external void setEncoding(String encoding);
 external void pause();
 external void resume();
 external dynamic /*generic*/  pipe(dynamic /*generic*/  destination, [dynamic /*todoTypeLiteral*/ options]);
 external void unpipe([dynamic /*generic*/  destination]);
 external void unshift(String chunk);
// external void unshift(Buffer chunk);
 external ReadableStream wrap(ReadableStream oldStream);
}

@JS('WritableStream')
class WritableStream{
 /*  extends EventEmitter */
 external bool get writable;
 external bool write(dynamic /*todoUnionType*/ buffer, [Function cb]);
// external bool write(String str, [String encoding, Function cb]);
 external void end();
// external void end(Buffer buffer, [Function cb]);
// external void end(String str, [Function cb]);
// external void end(String str, [String encoding, Function cb]);
}

@JS('ReadWriteStream')
class ReadWriteStream{
 /*  extends ReadableStream, WritableStream */
}

@JS('Events')
class Events{
 /*  extends EventEmitter */
}

@JS('Domain')
class Domain{
 /*  extends Events */
 external void run(Function fn);
 external void add(Events emitter);
 external void remove(Events emitter);
 external dynamic bind( dynamic cb(Error err, dynamic data));
 external dynamic intercept( dynamic cb(dynamic data));
 external void dispose();
 external /*todo type ThisType*/ dynamic addListener(String event, Function listener);
 external /*todo type ThisType*/ dynamic on(String event, Function listener);
 external /*todo type ThisType*/ dynamic once(String event, Function listener);
 external /*todo type ThisType*/ dynamic removeListener(String event, Function listener);
 external /*todo type ThisType*/ dynamic removeAllListeners([String event]);
}

@JS('MemoryUsage')
class MemoryUsage{
 external num get rss;
 external num get heapTotal;
 external num get heapUsed;
}

@JS('Process')
class Process{
 /*  extends EventEmitter */
 external WritableStream get stdout;
 external WritableStream get stderr;
 external ReadableStream get stdin;
 external List<String> get argv;
 external List<String> get execArgv;
 external String get execPath;
 external void abort();
 external void chdir(String directory);
 external String cwd();
 external dynamic get env;
 external void exit([num code]);
 external num getgid();
 external void setgid(num id);
// external void setgid(String id);
 external num getuid();
 external void setuid(num id);
// external void setuid(String id);
 external String get version;
 external dynamic /*todoTypeLiteral*/ get versions;
 external dynamic /*todoTypeLiteral*/ get config;
 external void kill(num pid, [dynamic /*todoUnionType*/ signal]);
 external num get pid;
 external String get title;
 external String get arch;
 external String get platform;
 external MemoryUsage memoryUsage();
 external void nextTick(Function callback);
 external num umask([num mask]);
 external num uptime();
 external List<num> hrtime([List<num> time]);
 external Domain get domain;
 external void send(dynamic message, [dynamic sendHandle]);
 external void disconnect();
 external bool get connected;
}

@JS('Global')
class Global{
 external dynamic /*todo TypeQuery Array*/ get Array;
 external dynamic /*todo TypeQuery ArrayBuffer*/ get ArrayBuffer;
 external dynamic /*todo TypeQuery Boolean*/ get Boolean;
 external dynamic /*todo TypeQuery Buffer*/ get Buffer;
 external dynamic /*todo TypeQuery DataView*/ get DataView;
 external dynamic /*todo TypeQuery Date*/ get Date;
 external dynamic /*todo TypeQuery Error*/ get Error;
 external dynamic /*todo TypeQuery EvalError*/ get EvalError;
 external dynamic /*todo TypeQuery Float32Array*/ get Float32Array;
 external dynamic /*todo TypeQuery Float64Array*/ get Float64Array;
 external dynamic /*todo TypeQuery Function*/ get Function;
 external Global get GLOBAL;
 external dynamic /*todo TypeQuery Infinity*/ get Infinity;
 external dynamic /*todo TypeQuery Int16Array*/ get Int16Array;
 external dynamic /*todo TypeQuery Int32Array*/ get Int32Array;
 external dynamic /*todo TypeQuery Int8Array*/ get Int8Array;
 external dynamic /*todo TypeQuery Intl*/ get Intl;
 external dynamic /*todo TypeQuery JSON*/ get JSON;
 external MapConstructor get Map;
 external dynamic /*todo TypeQuery Math*/ get Math;
 external dynamic /*todo TypeQuery NaN*/ get NaN;
 external dynamic /*todo TypeQuery Number*/ get Number;
 external dynamic /*todo TypeQuery Object*/ get Object;
 external Function get Promise;
 external dynamic /*todo TypeQuery RangeError*/ get RangeError;
 external dynamic /*todo TypeQuery ReferenceError*/ get ReferenceError;
 external dynamic /*todo TypeQuery RegExp*/ get RegExp;
 external SetConstructor get Set;
 external dynamic /*todo TypeQuery String*/ get String;
 external Function get Symbol;
 external dynamic /*todo TypeQuery SyntaxError*/ get SyntaxError;
 external dynamic /*todo TypeQuery TypeError*/ get TypeError;
 external dynamic /*todo TypeQuery URIError*/ get URIError;
 external dynamic /*todo TypeQuery Uint16Array*/ get Uint16Array;
 external dynamic /*todo TypeQuery Uint32Array*/ get Uint32Array;
 external dynamic /*todo TypeQuery Uint8Array*/ get Uint8Array;
 external Function get Uint8ClampedArray;
 external WeakMapConstructor get WeakMap;
 external WeakSetConstructor get WeakSet;
 external  void clearImmediate(dynamic immediateId); get clearImmediate;
 external  void clearInterval(NodeJS.Timer intervalId); get clearInterval;
 external  void clearTimeout(NodeJS.Timer timeoutId); get clearTimeout;
 external dynamic /*todo TypeQuery console*/ get console;
 external dynamic /*todo TypeQuery decodeURI*/ get decodeURI;
 external dynamic /*todo TypeQuery decodeURIComponent*/ get decodeURIComponent;
 external dynamic /*todo TypeQuery encodeURI*/ get encodeURI;
 external dynamic /*todo TypeQuery encodeURIComponent*/ get encodeURIComponent;
 external  String escape(String str); get escape;
 external dynamic /*todo TypeQuery eval*/ get eval;
 external Global get global;
 external dynamic /*todo TypeQuery isFinite*/ get isFinite;
 external dynamic /*todo TypeQuery isNaN*/ get isNaN;
 external dynamic /*todo TypeQuery parseFloat*/ get parseFloat;
 external dynamic /*todo TypeQuery parseInt*/ get parseInt;
 external Process get process;
 external Global get root;
 external  dynamic setImmediate( void callback(List<dynamic> args), List<dynamic> args); get setImmediate;
 external  NodeJS.Timer setInterval( void callback(List<dynamic> args), num ms, List<dynamic> args); get setInterval;
 external  NodeJS.Timer setTimeout( void callback(List<dynamic> args), num ms, List<dynamic> args); get setTimeout;
 external dynamic /*todo TypeQuery undefined*/ get undefined;
 external  String unescape(String str); get unescape;
 external  void gc(); get gc;
 external dynamic get v8debug;
}

@JS('Timer')
class Timer{
 external void ref();
 external void unref();
}

