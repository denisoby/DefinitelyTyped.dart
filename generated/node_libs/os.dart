@JS('os')
library os;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('CpuInfo')
class CpuInfo{
 external String get model;
 external num get speed;
 external dynamic /*todoTypeLiteral*/ get times;
}

@JS('NetworkInterfaceInfo')
class NetworkInterfaceInfo{
 external String get address;
 external String get netmask;
 external String get family;
 external String get mac;
 external bool get internal;
}

 external String tmpdir();
 external String homedir();
 external String endianness();
 external String hostname();
 external String type();
 external String platform();
 external String arch();
 external String release();
 external num uptime();
 external List<num> loadavg();
 external num totalmem();
 external num freemem();
 external List<CpuInfo> cpus();
 external dynamic /*todoTypeLiteral*/ networkInterfaces();
