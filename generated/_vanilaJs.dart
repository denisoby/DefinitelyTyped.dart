import "package:js/js.dart";

@JS("Promise")
class Promise {
  external Promise then(Function onFulfilled, Function onRejected);
  external static Promise resolve (dynamic value);
}

@JS('JSON.stringify')
external String json_stringify(dynamic val, [dynamic useless, num putHere4]);

@JS('JSON.parse')
external dynamic json_parse(String val);

@JS('eval')
external dynamic eval(dynamic val);

@JS('Object.create')
external dynamic object_create([dynamic proto]);

@JS()
@anonymous
class mongoQuery {
  external String get _id;
  external void set _id(String _id);

//  external factory mongoQuery({String _id});
}
