@JS('fs')
library fs;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('Stats')
class Stats{
 external bool isFile();
 external bool isDirectory();
 external bool isBlockDevice();
 external bool isCharacterDevice();
 external bool isSymbolicLink();
 external bool isFIFO();
 external bool isSocket();
 external num get dev;
 external num get ino;
 external num get mode;
 external num get nlink;
 external num get uid;
 external num get gid;
 external num get rdev;
 external num get size;
 external num get blksize;
 external num get blocks;
 external Date get atime;
 external Date get mtime;
 external Date get ctime;
 external Date get birthtime;
}

@JS('FSWatcher')
class FSWatcher{
 /*  extends events.EventEmitter */
 external void close();
}

@JS('ReadStream')
class ReadStream{
 /*  extends stream.Readable */
 external void close();
}

@JS('WriteStream')
class WriteStream{
 /*  extends stream.Writable */
 external void close();
 external num get bytesWritten;
}

 external void rename(String oldPath, String newPath, [ void callback([NodeJS.ErrnoException err])]);
 external void renameSync(String oldPath, String newPath);
 external void truncate(String path, [ void callback([NodeJS.ErrnoException err])]);
// external void truncate(String path, num len, [ void callback([NodeJS.ErrnoException err])]);
 external void truncateSync(String path, [num len]);
 external void ftruncate(num fd, [ void callback([NodeJS.ErrnoException err])]);
// external void ftruncate(num fd, num len, [ void callback([NodeJS.ErrnoException err])]);
 external void ftruncateSync(num fd, [num len]);
 external void chown(String path, num uid, num gid, [ void callback([NodeJS.ErrnoException err])]);
 external void chownSync(String path, num uid, num gid);
 external void fchown(num fd, num uid, num gid, [ void callback([NodeJS.ErrnoException err])]);
 external void fchownSync(num fd, num uid, num gid);
 external void lchown(String path, num uid, num gid, [ void callback([NodeJS.ErrnoException err])]);
 external void lchownSync(String path, num uid, num gid);
 external void chmod(String path, num mode, [ void callback([NodeJS.ErrnoException err])]);
// external void chmod(String path, String mode, [ void callback([NodeJS.ErrnoException err])]);
 external void chmodSync(String path, num mode);
// external void chmodSync(String path, String mode);
 external void fchmod(num fd, num mode, [ void callback([NodeJS.ErrnoException err])]);
// external void fchmod(num fd, String mode, [ void callback([NodeJS.ErrnoException err])]);
 external void fchmodSync(num fd, num mode);
// external void fchmodSync(num fd, String mode);
 external void lchmod(String path, num mode, [ void callback([NodeJS.ErrnoException err])]);
// external void lchmod(String path, String mode, [ void callback([NodeJS.ErrnoException err])]);
 external void lchmodSync(String path, num mode);
// external void lchmodSync(String path, String mode);
 external void stat(String path, [ dynamic callback(NodeJS.ErrnoException err, Stats stats)]);
 external void lstat(String path, [ dynamic callback(NodeJS.ErrnoException err, Stats stats)]);
 external void fstat(num fd, [ dynamic callback(NodeJS.ErrnoException err, Stats stats)]);
 external Stats statSync(String path);
 external Stats lstatSync(String path);
 external Stats fstatSync(num fd);
 external void link(String srcpath, String dstpath, [ void callback([NodeJS.ErrnoException err])]);
 external void linkSync(String srcpath, String dstpath);
 external void symlink(String srcpath, String dstpath, [String type,  void callback([NodeJS.ErrnoException err])]);
 external void symlinkSync(String srcpath, String dstpath, [String type]);
 external void readlink(String path, [ dynamic callback(NodeJS.ErrnoException err, String linkString)]);
 external String readlinkSync(String path);
 external void realpath(String path, [ dynamic callback(NodeJS.ErrnoException err, String resolvedPath)]);
// external void realpath(String path, dynamic /*todoTypeLiteral*/ cache,  dynamic callback(NodeJS.ErrnoException err, String resolvedPath));
 external String realpathSync(String path, [dynamic /*todoTypeLiteral*/ cache]);
 external void unlink(String path, [ void callback([NodeJS.ErrnoException err])]);
 external void unlinkSync(String path);
 external void rmdir(String path, [ void callback([NodeJS.ErrnoException err])]);
 external void rmdirSync(String path);
 external void mkdir(String path, [ void callback([NodeJS.ErrnoException err])]);
// external void mkdir(String path, num mode, [ void callback([NodeJS.ErrnoException err])]);
// external void mkdir(String path, String mode, [ void callback([NodeJS.ErrnoException err])]);
 external void mkdirSync(String path, [num mode]);
// external void mkdirSync(String path, [String mode]);
 external void readdir(String path, [ void callback(NodeJS.ErrnoException err, List<String> files)]);
 external List<String> readdirSync(String path);
 external void close(num fd, [ void callback([NodeJS.ErrnoException err])]);
 external void closeSync(num fd);
 external void open(String path, String flags, [ dynamic callback(NodeJS.ErrnoException err, num fd)]);
// external void open(String path, String flags, num mode, [ dynamic callback(NodeJS.ErrnoException err, num fd)]);
// external void open(String path, String flags, String mode, [ dynamic callback(NodeJS.ErrnoException err, num fd)]);
 external num openSync(String path, String flags, [num mode]);
// external num openSync(String path, String flags, [String mode]);
 external void utimes(String path, num atime, num mtime, [ void callback([NodeJS.ErrnoException err])]);
// external void utimes(String path, Date atime, Date mtime, [ void callback([NodeJS.ErrnoException err])]);
 external void utimesSync(String path, num atime, num mtime);
// external void utimesSync(String path, Date atime, Date mtime);
 external void futimes(num fd, num atime, num mtime, [ void callback([NodeJS.ErrnoException err])]);
// external void futimes(num fd, Date atime, Date mtime, [ void callback([NodeJS.ErrnoException err])]);
 external void futimesSync(num fd, num atime, num mtime);
// external void futimesSync(num fd, Date atime, Date mtime);
 external void fsync(num fd, [ void callback([NodeJS.ErrnoException err])]);
 external void fsyncSync(num fd);
 external void write(num fd, Buffer buffer, num offset, num length, num position, [ void callback(NodeJS.ErrnoException err, num written, Buffer buffer)]);
// external void write(num fd, Buffer buffer, num offset, num length, [ void callback(NodeJS.ErrnoException err, num written, Buffer buffer)]);
// external void write(num fd, dynamic data, [ void callback(NodeJS.ErrnoException err, num written, String str)]);
// external void write(num fd, dynamic data, num offset, [ void callback(NodeJS.ErrnoException err, num written, String str)]);
// external void write(num fd, dynamic data, num offset, String encoding, [ void callback(NodeJS.ErrnoException err, num written, String str)]);
 external num writeSync(num fd, Buffer buffer, num offset, num length, [num position]);
// external num writeSync(num fd, dynamic data, [num position, String enconding]);
 external void read(num fd, Buffer buffer, num offset, num length, num position, [ void callback(NodeJS.ErrnoException err, num bytesRead, Buffer buffer)]);
 external num readSync(num fd, Buffer buffer, num offset, num length, num position);
 external void readFile(String filename, String encoding,  void callback(NodeJS.ErrnoException err, String data));
// external void readFile(String filename, dynamic /*todoTypeLiteral*/ options,  void callback(NodeJS.ErrnoException err, String data));
// external void readFile(String filename, dynamic /*todoTypeLiteral*/ options,  void callback(NodeJS.ErrnoException err, Buffer data));
// external void readFile(String filename,  void callback(NodeJS.ErrnoException err, Buffer data));
 external String readFileSync(String filename, String encoding);
// external String readFileSync(String filename, dynamic /*todoTypeLiteral*/ options);
// external Buffer readFileSync(String filename, [dynamic /*todoTypeLiteral*/ options]);
 external void writeFile(String filename, dynamic data, [ void callback(NodeJS.ErrnoException err)]);
// external void writeFile(String filename, dynamic data, dynamic /*todoTypeLiteral*/ options, [ void callback(NodeJS.ErrnoException err)]);
// external void writeFile(String filename, dynamic data, dynamic /*todoTypeLiteral*/ options, [ void callback(NodeJS.ErrnoException err)]);
 external void writeFileSync(String filename, dynamic data, [dynamic /*todoTypeLiteral*/ options]);
// external void writeFileSync(String filename, dynamic data, [dynamic /*todoTypeLiteral*/ options]);
 external void appendFile(String filename, dynamic data, dynamic /*todoTypeLiteral*/ options, [ void callback(NodeJS.ErrnoException err)]);
// external void appendFile(String filename, dynamic data, dynamic /*todoTypeLiteral*/ options, [ void callback(NodeJS.ErrnoException err)]);
// external void appendFile(String filename, dynamic data, [ void callback(NodeJS.ErrnoException err)]);
 external void appendFileSync(String filename, dynamic data, [dynamic /*todoTypeLiteral*/ options]);
// external void appendFileSync(String filename, dynamic data, [dynamic /*todoTypeLiteral*/ options]);
 external void watchFile(String filename,  void listener(Stats curr, Stats prev));
// external void watchFile(String filename, dynamic /*todoTypeLiteral*/ options,  void listener(Stats curr, Stats prev));
 external void unwatchFile(String filename, [ void listener(Stats curr, Stats prev)]);
 external FSWatcher watch(String filename, [ dynamic listener(String event, String filename)]);
// external FSWatcher watch(String filename, dynamic /*todoTypeLiteral*/ options, [ dynamic listener(String event, String filename)]);
 external void exists(String path, [ void callback(bool exists)]);
 external bool existsSync(String path);
 external void access(String path,  void callback(NodeJS.ErrnoException err));
// external void access(String path, num mode,  void callback(NodeJS.ErrnoException err));
 external void accessSync(String path, [num mode]);
 external ReadStream createReadStream(String path, [dynamic /*todoTypeLiteral*/ options]);
 external WriteStream createWriteStream(String path, [dynamic /*todoTypeLiteral*/ options]);
