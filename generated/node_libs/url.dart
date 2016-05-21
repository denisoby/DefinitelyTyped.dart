@JS('url')
library url;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('Url')
class Url{
 external String get href;
 external String get protocol;
 external String get auth;
 external String get hostname;
 external String get port;
 external String get host;
 external String get pathname;
 external String get search;
 external dynamic get query;
 external bool get slashes;
 external String get hash;
 external String get path;
}

 external Url parse(String urlStr, [bool parseQueryString, bool slashesDenoteHost]);
 external String format(Url url);
 external String resolve(String from, String to);
