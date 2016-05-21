@JS('zlib')
library zlib;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('ZlibOptions')
class ZlibOptions{
 external num get chunkSize;
 external num get windowBits;
 external num get level;
 external num get memLevel;
 external num get strategy;
 external dynamic get dictionary;
}

@JS('Gzip')
class Gzip{
 /*  extends stream.Transform */
}

@JS('Gunzip')
class Gunzip{
 /*  extends stream.Transform */
}

@JS('Deflate')
class Deflate{
 /*  extends stream.Transform */
}

@JS('Inflate')
class Inflate{
 /*  extends stream.Transform */
}

@JS('DeflateRaw')
class DeflateRaw{
 /*  extends stream.Transform */
}

@JS('InflateRaw')
class InflateRaw{
 /*  extends stream.Transform */
}

@JS('Unzip')
class Unzip{
 /*  extends stream.Transform */
}

 external Gzip createGzip([ZlibOptions options]);
 external Gunzip createGunzip([ZlibOptions options]);
 external Deflate createDeflate([ZlibOptions options]);
 external Inflate createInflate([ZlibOptions options]);
 external DeflateRaw createDeflateRaw([ZlibOptions options]);
 external InflateRaw createInflateRaw([ZlibOptions options]);
 external Unzip createUnzip([ZlibOptions options]);
 external void deflate(Buffer buf,  void callback(Error error, dynamic result));
 external dynamic deflateSync(Buffer buf, [ZlibOptions options]);
 external void deflateRaw(Buffer buf,  void callback(Error error, dynamic result));
 external dynamic deflateRawSync(Buffer buf, [ZlibOptions options]);
 external void gzip(Buffer buf,  void callback(Error error, dynamic result));
 external dynamic gzipSync(Buffer buf, [ZlibOptions options]);
 external void gunzip(Buffer buf,  void callback(Error error, dynamic result));
 external dynamic gunzipSync(Buffer buf, [ZlibOptions options]);
 external void inflate(Buffer buf,  void callback(Error error, dynamic result));
 external dynamic inflateSync(Buffer buf, [ZlibOptions options]);
 external void inflateRaw(Buffer buf,  void callback(Error error, dynamic result));
 external dynamic inflateRawSync(Buffer buf, [ZlibOptions options]);
 external void unzip(Buffer buf,  void callback(Error error, dynamic result));
 external dynamic unzipSync(Buffer buf, [ZlibOptions options]);
