@JS('domain')
library domain;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('Domain')
class Domain{
 /*  extends events.EventEmitter */
 /*  implements NodeJS.Domain */
 external void run(Function fn);
 external void add(events.EventEmitter emitter);
 external void remove(events.EventEmitter emitter);
 external dynamic bind( dynamic cb(Error err, dynamic data));
 external dynamic intercept( dynamic cb(dynamic data));
 external void dispose();
}

 external Domain create();
