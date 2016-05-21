@JS('dgram')
library dgram;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('RemoteInfo')
class RemoteInfo{
 external String get address;
 external num get port;
 external num get size;
}

@JS('AddressInfo')
class AddressInfo{
 external String get address;
 external String get family;
 external num get port;
}

 external Socket createSocket(String type, [ void callback(Buffer msg, RemoteInfo rinfo)]);
@JS('Socket')
class Socket{
 /*  extends events.EventEmitter */
 external void send(Buffer buf, num offset, num length, num port, String address, [ void callback(Error error, num bytes)]);
 external void bind(num port, [String address,  void callback()]);
 external void close();
 external AddressInfo address();
 external void setBroadcast(bool flag);
 external void setMulticastTTL(num ttl);
 external void setMulticastLoopback(bool flag);
 external void addMembership(String multicastAddress, [String multicastInterface]);
 external void dropMembership(String multicastAddress, [String multicastInterface]);
}

