@JS('string_decoder')
library string_decoder;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('NodeStringDecoder')
class NodeStringDecoder{
 external String write(Buffer buffer);
 external num detectIncompleteChar(Buffer buffer);
}

