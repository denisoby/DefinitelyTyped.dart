@JS('win32')
library win32;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('ParsedPath')
class ParsedPath{
 external String get root;
 external String get dir;
 external String get base;
 external String get ext;
 external String get name;
}

 external String normalize(String p);
 external String join(List<dynamic> paths);
// external String join(List<String> paths);
 external String resolve(List<dynamic> pathSegments);
 external bool isAbsolute(String path);
 external String relative(String from, String to);
 external String dirname(String p);
 external String basename(String p, [String ext]);
 external String extname(String p);
 external ParsedPath parse(String pathString);
 external String format(ParsedPath pathObject);
