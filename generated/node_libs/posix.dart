@JS('posix')
library posix;

import "package:js/js.dart";
import "../_vanilaJs.dart";

 external String normalize(String p);
 external String join(List<dynamic> paths);
 external String resolve(List<dynamic> pathSegments);
 external bool isAbsolute(String p);
 external String relative(String from, String to);
 external String dirname(String p);
 external String basename(String p, [String ext]);
 external String extname(String p);
 external ParsedPath parse(String p);
 external String format(ParsedPath pP);
