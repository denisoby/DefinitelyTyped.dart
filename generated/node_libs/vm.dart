@JS('vm')
library vm;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('Context')
class Context{
}

@JS('ScriptOptions')
class ScriptOptions{
 external String get filename;
 external num get lineOffset;
 external num get columnOffset;
 external bool get displayErrors;
 external num get timeout;
 external Buffer get cachedData;
 external bool get produceCachedData;
}

@JS('RunningScriptOptions')
class RunningScriptOptions{
 external String get filename;
 external num get lineOffset;
 external num get columnOffset;
 external bool get displayErrors;
 external num get timeout;
}

@JS('Script')
class Script{
/*todo Constructor*/
 external dynamic runInContext(Context contextifiedSandbox, [RunningScriptOptions options]);
 external dynamic runInNewContext([Context sandbox, RunningScriptOptions options]);
 external dynamic runInThisContext([RunningScriptOptions options]);
}

 external Context createContext([Context sandbox]);
 external bool isContext(Context sandbox);
 external dynamic runInContext(String code, Context contextifiedSandbox, [RunningScriptOptions options]);
 external dynamic runInDebugContext(String code);
 external dynamic runInNewContext(String code, [Context sandbox, RunningScriptOptions options]);
 external dynamic runInThisContext(String code, [RunningScriptOptions options]);
