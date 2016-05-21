@JS('repl')
library repl;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('ReplOptions')
class ReplOptions{
 external String get prompt;
 external NodeJS.ReadableStream get input;
 external NodeJS.WritableStream get output;
 external bool get terminal;
 external Function get eval;
 external bool get useColors;
 external bool get useGlobal;
 external bool get ignoreUndefined;
 external Function get writer;
}

 external events.EventEmitter start(ReplOptions options);
