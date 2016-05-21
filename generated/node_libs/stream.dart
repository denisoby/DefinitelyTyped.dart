@JS('stream')
library stream;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('Stream')
class Stream{
 /*  extends events.EventEmitter */
 external dynamic /*generic*/  pipe(dynamic /*generic*/  destination, [dynamic /*todoTypeLiteral*/ options]);
}

@JS('ReadableOptions')
class ReadableOptions{
 external num get highWaterMark;
 external String get encoding;
 external bool get objectMode;
}

@JS('Readable')
class Readable{
 /*  extends events.EventEmitter */
 /*  implements NodeJS.ReadableStream */
/*todo Constructor*/
 external void _read(num size);
 external dynamic read([num size]);
 external void setEncoding(String encoding);
 external void pause();
 external void resume();
 external dynamic /*generic*/  pipe(dynamic /*generic*/  destination, [dynamic /*todoTypeLiteral*/ options]);
 external void unpipe([dynamic /*generic*/  destination]);
 external void unshift(dynamic chunk);
 external NodeJS.ReadableStream wrap(NodeJS.ReadableStream oldStream);
 external bool push(dynamic chunk, [String encoding]);
}

@JS('WritableOptions')
class WritableOptions{
 external num get highWaterMark;
 external bool get decodeStrings;
 external bool get objectMode;
}

@JS('Writable')
class Writable{
 /*  extends events.EventEmitter */
 /*  implements NodeJS.WritableStream */
/*todo Constructor*/
 external void _write(dynamic chunk, String encoding, Function callback);
 external bool write(dynamic chunk, [Function cb]);
// external bool write(dynamic chunk, [String encoding, Function cb]);
 external void end();
// external void end(dynamic chunk, [Function cb]);
// external void end(dynamic chunk, [String encoding, Function cb]);
}

@JS('DuplexOptions')
class DuplexOptions{
 /*  extends ReadableOptions, WritableOptions */
 external bool get allowHalfOpen;
}

@JS('Duplex')
class Duplex{
 /*  extends Readable */
 /*  implements NodeJS.ReadWriteStream */
/*todo Constructor*/
 external void _write(dynamic chunk, String encoding, Function callback);
 external bool write(dynamic chunk, [Function cb]);
// external bool write(dynamic chunk, [String encoding, Function cb]);
 external void end();
// external void end(dynamic chunk, [Function cb]);
// external void end(dynamic chunk, [String encoding, Function cb]);
}

@JS('TransformOptions')
class TransformOptions{
 /*  extends ReadableOptions, WritableOptions */
}

@JS('Transform')
class Transform{
 /*  extends events.EventEmitter */
 /*  implements NodeJS.ReadWriteStream */
/*todo Constructor*/
 external void _transform(dynamic chunk, String encoding, Function callback);
 external void _flush(Function callback);
 external dynamic read([num size]);
 external void setEncoding(String encoding);
 external void pause();
 external void resume();
 external dynamic /*generic*/  pipe(dynamic /*generic*/  destination, [dynamic /*todoTypeLiteral*/ options]);
 external void unpipe([dynamic /*generic*/  destination]);
 external void unshift(dynamic chunk);
 external NodeJS.ReadableStream wrap(NodeJS.ReadableStream oldStream);
 external bool push(dynamic chunk, [String encoding]);
 external bool write(dynamic chunk, [Function cb]);
// external bool write(dynamic chunk, [String encoding, Function cb]);
 external void end();
// external void end(dynamic chunk, [Function cb]);
// external void end(dynamic chunk, [String encoding, Function cb]);
}

@JS('PassThrough')
class PassThrough{
 /*  extends Transform */
}

