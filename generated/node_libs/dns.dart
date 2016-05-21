@JS('dns')
library dns;

import "package:js/js.dart";
import "../_vanilaJs.dart";

 external String lookup(String domain, num family,  void callback(Error err, String address, num family));
// external String lookup(String domain,  void callback(Error err, String address, num family));
 external List<String> resolve(String domain, String rrtype,  void callback(Error err, List<String> addresses));
// external List<String> resolve(String domain,  void callback(Error err, List<String> addresses));
 external List<String> resolve4(String domain,  void callback(Error err, List<String> addresses));
 external List<String> resolve6(String domain,  void callback(Error err, List<String> addresses));
 external List<String> resolveMx(String domain,  void callback(Error err, List<String> addresses));
 external List<String> resolveTxt(String domain,  void callback(Error err, List<String> addresses));
 external List<String> resolveSrv(String domain,  void callback(Error err, List<String> addresses));
 external List<String> resolveNs(String domain,  void callback(Error err, List<String> addresses));
 external List<String> resolveCname(String domain,  void callback(Error err, List<String> addresses));
 external List<String> reverse(String ip,  void callback(Error err, List<String> domains));
