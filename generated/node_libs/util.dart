@JS('util')
library util;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('InspectOptions')
class InspectOptions{
 external bool get showHidden;
 external num get depth;
 external bool get colors;
 external bool get customInspect;
}

 external String format(dynamic format, List<dynamic> param);
 external void debug(String string);
 external void error(List<dynamic> param);
 external void puts(List<dynamic> param);
 external void print(List<dynamic> param);
 external void log(String string);
 external String inspect(dynamic object, [bool showHidden, num depth, bool color]);
// external String inspect(dynamic object, InspectOptions options);
 external bool isArray(dynamic object);
 external bool isRegExp(dynamic object);
 external bool isDate(dynamic object);
 external bool isError(dynamic object);
 external void inherits(dynamic constructor, dynamic superConstructor);
 external  void debuglog(String msg, List<dynamic> param); debuglog(String key);
