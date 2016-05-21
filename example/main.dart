import "package:js/js.dart";
import "package:dts2dartjs/vanilaJs.dart";
import "../generated/mongodb_libs/mongodb.dart" as mongodb;

mongodb.Db db;

main() async {
  http.Server server = http.createServer(allowInterop(handler));
  server.listen(9876);

// Connection URL
  var hostPLusPort = settings.settingsData.dbSettings["host"];
  var dbname = settings.settingsData.dbSettings["dbname"];
  print("host: $hostPLusPort");
  var url = 'mongodb://$hostPLusPort/$dbname';
// Use connect method to connect to the Server
  mongodb.MongoClient.connect(url, allowInterop(connectHandler));

  ///
  ///  DartWrapper.testFunc = allowInterop(() {
  ///    print("test func");
  ///  });
}

void connectHandler(err, mongodb.Db _db) {
  db = _db;
  print("Connected to server");
  print(err);
  findDocuments(() {
    db.close();
  });
}

@JS()
class mongoSearchOptions{
  external String get _id;
  external void set _id(String _id);
}


void findDocuments(callback) {
// Get the documents collection
  mongodb.Collection collection = db.collection('store');
// Find some documents

  //eval('debugger');
  var query = json_parse("{'_id': 'pad:5200698'}");
  collection.findOne(query, allowInterop(findCallback));
}

void findCallback(err, doc) {
  print("Found the following records");
  print(err);
  print(JSON.encode(doc));
  db.close();
}

void handler(http.IncomingMessage request, http.ServerResponse response) {
  response.write("Hello, from dart server! \n");
  response.write("You asked for ${request.url}");
  var settingsStringified = JSON.encode(settings.settingsData.$container$);
  response.write("Server settings: \n" + settingsStringified);
  response.end();
}

/// @JS('dart')
/// class DartWrapper {
/// external static void set testFunc(Function func);
/// }