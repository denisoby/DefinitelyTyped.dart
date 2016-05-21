@JS('child_process')
library child_process;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('ChildProcess')
class ChildProcess{
 /*  extends events.EventEmitter */
 external stream.Writable get stdin;
 external stream.Readable get stdout;
 external stream.Readable get stderr;
 external /*todo type TupleType*/ dynamic get stdio;
 external num get pid;
 external void kill([String signal]);
 external void send(dynamic message, [dynamic sendHandle]);
 external void disconnect();
 external void unref();
}

@JS('SpawnOptions')
class SpawnOptions{
 external String get cwd;
 external dynamic get env;
 external dynamic get stdio;
 external bool get detached;
 external num get uid;
 external num get gid;
 external dynamic /*todoUnionType*/ get shell;
}

 external ChildProcess spawn(String command, [List<String> args, SpawnOptions options]);
@JS('ExecOptions')
class ExecOptions{
 external String get cwd;
 external dynamic get env;
 external String get shell;
 external num get timeout;
 external num get maxBuffer;
 external String get killSignal;
 external num get uid;
 external num get gid;
}

@JS('ExecOptionsWithStringEncoding')
class ExecOptionsWithStringEncoding{
 /*  extends ExecOptions */
 external BufferEncoding get encoding;
}

@JS('ExecOptionsWithBufferEncoding')
class ExecOptionsWithBufferEncoding{
 /*  extends ExecOptions */
 external String get encoding;
}

 external ChildProcess exec(String command, [ void callback(Error error, String stdout, String stderr)]);
// external ChildProcess exec(String command, ExecOptionsWithStringEncoding options, [ void callback(Error error, String stdout, String stderr)]);
// external ChildProcess exec(String command, ExecOptionsWithBufferEncoding options, [ void callback(Error error, Buffer stdout, Buffer stderr)]);
// external ChildProcess exec(String command, ExecOptions options, [ void callback(Error error, String stdout, String stderr)]);
@JS('ExecFileOptions')
class ExecFileOptions{
 external String get cwd;
 external dynamic get env;
 external num get timeout;
 external num get maxBuffer;
 external String get killSignal;
 external num get uid;
 external num get gid;
}

@JS('ExecFileOptionsWithStringEncoding')
class ExecFileOptionsWithStringEncoding{
 /*  extends ExecFileOptions */
 external BufferEncoding get encoding;
}

@JS('ExecFileOptionsWithBufferEncoding')
class ExecFileOptionsWithBufferEncoding{
 /*  extends ExecFileOptions */
 external String get encoding;
}

 external ChildProcess execFile(String file, [ void callback(Error error, String stdout, String stderr)]);
// external ChildProcess execFile(String file, [ExecFileOptionsWithStringEncoding options,  void callback(Error error, String stdout, String stderr)]);
// external ChildProcess execFile(String file, [ExecFileOptionsWithBufferEncoding options,  void callback(Error error, Buffer stdout, Buffer stderr)]);
// external ChildProcess execFile(String file, [ExecFileOptions options,  void callback(Error error, String stdout, String stderr)]);
// external ChildProcess execFile(String file, [List<String> args,  void callback(Error error, String stdout, String stderr)]);
// external ChildProcess execFile(String file, [List<String> args, ExecFileOptionsWithStringEncoding options,  void callback(Error error, String stdout, String stderr)]);
// external ChildProcess execFile(String file, [List<String> args, ExecFileOptionsWithBufferEncoding options,  void callback(Error error, Buffer stdout, Buffer stderr)]);
// external ChildProcess execFile(String file, [List<String> args, ExecFileOptions options,  void callback(Error error, String stdout, String stderr)]);
@JS('ForkOptions')
class ForkOptions{
 external String get cwd;
 external dynamic get env;
 external String get execPath;
 external List<String> get execArgv;
 external bool get silent;
 external num get uid;
 external num get gid;
}

 external ChildProcess fork(String modulePath, [List<String> args, ForkOptions options]);
@JS('SpawnSyncOptions')
class SpawnSyncOptions{
 external String get cwd;
 external dynamic /*todoUnionType*/ get input;
 external dynamic get stdio;
 external dynamic get env;
 external num get uid;
 external num get gid;
 external num get timeout;
 external String get killSignal;
 external num get maxBuffer;
 external String get encoding;
 external dynamic /*todoUnionType*/ get shell;
}

@JS('SpawnSyncOptionsWithStringEncoding')
class SpawnSyncOptionsWithStringEncoding{
 /*  extends SpawnSyncOptions */
 external BufferEncoding get encoding;
}

@JS('SpawnSyncOptionsWithBufferEncoding')
class SpawnSyncOptionsWithBufferEncoding{
 /*  extends SpawnSyncOptions */
 external String get encoding;
}

@JS('SpawnSyncReturns')
class SpawnSyncReturns{
 external num get pid;
 external List<String> get output;
 external dynamic /*generic*/  get stdout;
 external dynamic /*generic*/  get stderr;
 external num get status;
 external String get signal;
 external Error get error;
}

 external SpawnSyncReturns spawnSync(String command);
// external SpawnSyncReturns spawnSync(String command, [SpawnSyncOptionsWithStringEncoding options]);
// external SpawnSyncReturns spawnSync(String command, [SpawnSyncOptionsWithBufferEncoding options]);
// external SpawnSyncReturns spawnSync(String command, [SpawnSyncOptions options]);
// external SpawnSyncReturns spawnSync(String command, [List<String> args, SpawnSyncOptionsWithStringEncoding options]);
// external SpawnSyncReturns spawnSync(String command, [List<String> args, SpawnSyncOptionsWithBufferEncoding options]);
// external SpawnSyncReturns spawnSync(String command, [List<String> args, SpawnSyncOptions options]);
@JS('ExecSyncOptions')
class ExecSyncOptions{
 external String get cwd;
 external dynamic /*todoUnionType*/ get input;
 external dynamic get stdio;
 external dynamic get env;
 external String get shell;
 external num get uid;
 external num get gid;
 external num get timeout;
 external String get killSignal;
 external num get maxBuffer;
 external String get encoding;
}

@JS('ExecSyncOptionsWithStringEncoding')
class ExecSyncOptionsWithStringEncoding{
 /*  extends ExecSyncOptions */
 external BufferEncoding get encoding;
}

@JS('ExecSyncOptionsWithBufferEncoding')
class ExecSyncOptionsWithBufferEncoding{
 /*  extends ExecSyncOptions */
 external String get encoding;
}

 external Buffer execSync(String command);
// external String execSync(String command, [ExecSyncOptionsWithStringEncoding options]);
// external Buffer execSync(String command, [ExecSyncOptionsWithBufferEncoding options]);
// external Buffer execSync(String command, [ExecSyncOptions options]);
@JS('ExecFileSyncOptions')
class ExecFileSyncOptions{
 external String get cwd;
 external dynamic /*todoUnionType*/ get input;
 external dynamic get stdio;
 external dynamic get env;
 external num get uid;
 external num get gid;
 external num get timeout;
 external String get killSignal;
 external num get maxBuffer;
 external String get encoding;
}

@JS('ExecFileSyncOptionsWithStringEncoding')
class ExecFileSyncOptionsWithStringEncoding{
 /*  extends ExecFileSyncOptions */
 external BufferEncoding get encoding;
}

@JS('ExecFileSyncOptionsWithBufferEncoding')
class ExecFileSyncOptionsWithBufferEncoding{
 /*  extends ExecFileSyncOptions */
 external String get encoding;
}

 external Buffer execFileSync(String command);
// external String execFileSync(String command, [ExecFileSyncOptionsWithStringEncoding options]);
// external Buffer execFileSync(String command, [ExecFileSyncOptionsWithBufferEncoding options]);
// external Buffer execFileSync(String command, [ExecFileSyncOptions options]);
// external String execFileSync(String command, [List<String> args, ExecFileSyncOptionsWithStringEncoding options]);
// external Buffer execFileSync(String command, [List<String> args, ExecFileSyncOptionsWithBufferEncoding options]);
// external Buffer execFileSync(String command, [List<String> args, ExecFileSyncOptions options]);
