@JS('punycode')
library punycode;

import "package:js/js.dart";
import "../_vanilaJs.dart";

 external String decode(String string);
 external String encode(String string);
 external String toUnicode(String domain);
 external String toASCII(String domain);
@JS('ucs2')
class ucs2{
 external List<num> decode(String string);
 external String encode(List<num> codePoints);
}

