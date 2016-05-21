@JS('tty')
library tty;

import "package:js/js.dart";
import "../_vanilaJs.dart";

 external bool isatty(num fd);
@JS('ReadStream')
class ReadStream{
 /*  extends net.Socket */
 external bool get isRaw;
 external void setRawMode(bool mode);
 external bool get isTTY;
}

@JS('WriteStream')
class WriteStream{
 /*  extends net.Socket */
 external num get columns;
 external num get rows;
 external bool get isTTY;
}

