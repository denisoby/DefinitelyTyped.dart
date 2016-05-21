@JS('readline')
library readline;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('Key')
class Key{
 external String get sequence;
 external String get name;
 external bool get ctrl;
 external bool get meta;
 external bool get shift;
}

@JS('ReadLine')
class ReadLine{
 /*  extends events.EventEmitter */
 external void setPrompt(String prompt);
 external void prompt([bool preserveCursor]);
 external void question(String query,  void callback(String answer));
 external ReadLine pause();
 external ReadLine resume();
 external void close();
 external void write(dynamic /*todoUnionType*/ data, [Key key]);
}

@JS('Completer')
class Completer{
}

@JS('CompleterResult')
class CompleterResult{
 external List<String> get completions;
 external String get line;
}

@JS('ReadLineOptions')
class ReadLineOptions{
 external NodeJS.ReadableStream get input;
 external NodeJS.WritableStream get output;
 external Completer get completer;
 external bool get terminal;
 external num get historySize;
}

 external ReadLine createInterface(NodeJS.ReadableStream input, [NodeJS.WritableStream output, Completer completer, bool terminal]);
// external ReadLine createInterface(ReadLineOptions options);
 external void cursorTo(NodeJS.WritableStream stream, num x, num y);
 external void moveCursor(NodeJS.WritableStream stream, dynamic /*todoUnionType*/ dx, dynamic /*todoUnionType*/ dy);
 external void clearLine(NodeJS.WritableStream stream, num dir);
 external void clearScreenDown(NodeJS.WritableStream stream);
