import "package:js/js.dart";
import "node_libs/NodeJS.dart";
import "node_libs/buffer.dart";
import "node_libs/querystring.dart";
import "node_libs/events.dart";
import "node_libs/http.dart";
import "node_libs/cluster.dart";
import "node_libs/zlib.dart";
import "node_libs/os.dart";
import "node_libs/https.dart";
import "node_libs/punycode.dart";
import "node_libs/repl.dart";
import "node_libs/readline.dart";
import "node_libs/vm.dart";
import "node_libs/child_process.dart";
import "node_libs/url.dart";
import "node_libs/dns.dart";
import "node_libs/net.dart";
import "node_libs/dgram.dart";
import "node_libs/fs.dart";
import "node_libs/path.dart";
import "node_libs/posix.dart";
import "node_libs/win32.dart";
import "node_libs/string_decoder.dart";
import "node_libs/tls.dart";
import "node_libs/crypto.dart";
import "node_libs/stream.dart";
import "node_libs/util.dart";
import "node_libs/assert.dart";
import "node_libs/internal.dart";
import "node_libs/tty.dart";
import "node_libs/domain.dart";
import "node_libs/constants.dart";

@JS('Error')
class Error{
 external String get stack;
}

@JS('MapConstructor')
class MapConstructor{
}

@JS('WeakMapConstructor')
class WeakMapConstructor{
}

@JS('SetConstructor')
class SetConstructor{
}

@JS('WeakSetConstructor')
class WeakSetConstructor{
}

 external NodeJS.Timer setTimeout( void callback(List<dynamic> args), num ms, List<dynamic> args);
 external void clearTimeout(NodeJS.Timer timeoutId);
 external NodeJS.Timer setInterval( void callback(List<dynamic> args), num ms, List<dynamic> args);
 external void clearInterval(NodeJS.Timer intervalId);
 external dynamic setImmediate( void callback(List<dynamic> args), List<dynamic> args);
 external void clearImmediate(dynamic immediateId);
@JS('NodeRequireFunction')
class NodeRequireFunction{
}

@JS('NodeRequire')
class NodeRequire{
 /*  extends NodeRequireFunction */
 external String resolve(String id);
 external dynamic get cache;
 external dynamic get extensions;
 external dynamic get main;
}

@JS('NodeModule')
class NodeModule{
 external dynamic get exports;
 external NodeRequireFunction get require;
 external String get id;
 external String get filename;
 external bool get loaded;
 external dynamic get parent;
 external List<dynamic> get children;
}

@JS('Buffer')
class Buffer{
 /*  extends NodeBuffer */
}

@JS('NodeBuffer')
class NodeBuffer{
 /*  extends Uint8Array */
 external num write(String string, [num offset, num length, String encoding]);
// external String toString([String encoding, num start, num end]);
 external dynamic toJSON();
 external bool equals(Buffer otherBuffer);
 external num compare(Buffer otherBuffer);
 external num copy(Buffer targetBuffer, [num targetStart, num sourceStart, num sourceEnd]);
 external Buffer slice([num start, num end]);
 external num writeUIntLE(num value, num offset, num byteLength, [bool noAssert]);
 external num writeUIntBE(num value, num offset, num byteLength, [bool noAssert]);
 external num writeIntLE(num value, num offset, num byteLength, [bool noAssert]);
 external num writeIntBE(num value, num offset, num byteLength, [bool noAssert]);
 external num readUIntLE(num offset, num byteLength, [bool noAssert]);
 external num readUIntBE(num offset, num byteLength, [bool noAssert]);
 external num readIntLE(num offset, num byteLength, [bool noAssert]);
 external num readIntBE(num offset, num byteLength, [bool noAssert]);
 external num readUInt8(num offset, [bool noAssert]);
 external num readUInt16LE(num offset, [bool noAssert]);
 external num readUInt16BE(num offset, [bool noAssert]);
 external num readUInt32LE(num offset, [bool noAssert]);
 external num readUInt32BE(num offset, [bool noAssert]);
 external num readInt8(num offset, [bool noAssert]);
 external num readInt16LE(num offset, [bool noAssert]);
 external num readInt16BE(num offset, [bool noAssert]);
 external num readInt32LE(num offset, [bool noAssert]);
 external num readInt32BE(num offset, [bool noAssert]);
 external num readFloatLE(num offset, [bool noAssert]);
 external num readFloatBE(num offset, [bool noAssert]);
 external num readDoubleLE(num offset, [bool noAssert]);
 external num readDoubleBE(num offset, [bool noAssert]);
 external num writeUInt8(num value, num offset, [bool noAssert]);
 external num writeUInt16LE(num value, num offset, [bool noAssert]);
 external num writeUInt16BE(num value, num offset, [bool noAssert]);
 external num writeUInt32LE(num value, num offset, [bool noAssert]);
 external num writeUInt32BE(num value, num offset, [bool noAssert]);
 external num writeInt8(num value, num offset, [bool noAssert]);
 external num writeInt16LE(num value, num offset, [bool noAssert]);
 external num writeInt16BE(num value, num offset, [bool noAssert]);
 external num writeInt32LE(num value, num offset, [bool noAssert]);
 external num writeInt32BE(num value, num offset, [bool noAssert]);
 external num writeFloatLE(num value, num offset, [bool noAssert]);
 external num writeFloatBE(num value, num offset, [bool noAssert]);
 external num writeDoubleLE(num value, num offset, [bool noAssert]);
 external num writeDoubleBE(num value, num offset, [bool noAssert]);
 external Buffer fill(dynamic value, [num offset, num end]);
 external num indexOf(dynamic /*todoUnionType*/ value, [num byteOffset]);
}

