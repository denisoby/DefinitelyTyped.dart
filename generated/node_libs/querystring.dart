@JS('querystring')
library querystring;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('StringifyOptions')
class StringifyOptions{
 external Function get encodeURIComponent;
}

@JS('ParseOptions')
class ParseOptions{
 external num get maxKeys;
 external Function get decodeURIComponent;
}

 external String stringify(dynamic /*generic*/  obj, [String sep, String eq, StringifyOptions options]);
 external dynamic parse(String str, [String sep, String eq, ParseOptions options]);
// external dynamic /*generic*/  parse(String str, [String sep, String eq, ParseOptions options]);
 external String escape(String str);
 external String unescape(String str);
