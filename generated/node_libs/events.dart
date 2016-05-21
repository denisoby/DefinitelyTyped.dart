@JS('events')
library events;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('EventEmitter')
class EventEmitter{
 /*  implements NodeJS.EventEmitter */
 external num listenerCount(EventEmitter emitter, String event);
 external /*todo type ThisType*/ dynamic addListener(String event, Function listener);
 external /*todo type ThisType*/ dynamic on(String event, Function listener);
 external /*todo type ThisType*/ dynamic once(String event, Function listener);
 external /*todo type ThisType*/ dynamic removeListener(String event, Function listener);
 external /*todo type ThisType*/ dynamic removeAllListeners([String event]);
 external /*todo type ThisType*/ dynamic setMaxListeners(num n);
 external num getMaxListeners();
 external List<Function> listeners(String event);
 external bool emit(String event, List<dynamic> args);
// external num listenerCount(String type);
}

