@JS('mongodb')
library mongodb;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('MongoClient')
class MongoClient{
/*todo Constructor*/
 external void connect(String uri, MongoCallback callback);
// external Promise connect(String uri, [MongoClientOptions options]);
// external void connect(String uri, MongoClientOptions options, MongoCallback callback);
// external void connect(String uri, MongoCallback callback);
// external Promise connect(String uri, [MongoClientOptions options]);
// external void connect(String uri, MongoClientOptions options, MongoCallback callback);
}

@JS('MongoCallback')
class MongoCallback{
}

@JS('MongoError')
class MongoError{
 /*  extends Error */
/*todo Constructor*/
 external MongoError create(Object options);
}

@JS('MongoClientOptions')
class MongoClientOptions{
 external bool get uri_decode_auth;
 external DbCreateOptions get db;
 external ServerOptions get server;
 external ReplSetOptions get replSet;
 external MongosOptions get mongos;
 external Object get promiseLibrary;
}

@JS('DbCreateOptions')
class DbCreateOptions{
 external String get authSource;
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get native_parser;
 external bool get forceServerObjectId;
 external bool get serializeFunctions;
 external bool get ignoreUndefined;
 external bool get raw;
 external bool get promoteLongs;
 external num get bufferMaxEntries;
 external dynamic /*todoUnionType*/ get readPreference;
 external Object get pkFactory;
 external Object get promiseLibrary;
 external dynamic /*todoTypeLiteral*/ get readConcern;
}

@JS('ReadPreference')
class ReadPreference{
/*todo Constructor*/
 external bool isValid(String mode);
// external bool isValid(String mode);
}

@JS('SocketOptions')
class SocketOptions{
 external bool get autoReconnect;
 external bool get noDelay;
 external num get keepAlive;
 external num get connectTimeoutMS;
 external num get socketTimeoutMS;
}

@JS('ServerOptions')
class ServerOptions{
 external num get poolSize;
 external bool get ssl;
 external Object get sslValidate;
 external dynamic /*todoUnionType*/ get checkServerIdentity;
 external List get sslCA;
 external dynamic /*todoUnionType*/ get sslCert;
 external dynamic /*todoUnionType*/ get sslKey;
 external dynamic /*todoUnionType*/ get sslPass;
 external SocketOptions get socketOptions;
 external num get reconnectTries;
 external num get reconnectInterval;
}

@JS('ReplSetOptions')
class ReplSetOptions{
 external bool get ha;
 external num get haInterval;
 external String get replicaSet;
 external num get secondaryAcceptableLatencyMS;
 external bool get connectWithNoPrimary;
 external num get poolSize;
 external bool get ssl;
 external Object get sslValidate;
 external dynamic /*todoUnionType*/ get checkServerIdentity;
 external List get sslCA;
 external dynamic /*todoUnionType*/ get sslCert;
 external dynamic /*todoUnionType*/ get sslKey;
 external dynamic /*todoUnionType*/ get sslPass;
 external SocketOptions get socketOptions;
}

@JS('MongosOptions')
class MongosOptions{
 external bool get ha;
 external num get haInterval;
 external num get poolSize;
 external bool get ssl;
 external Object get sslValidate;
 external dynamic /*todoUnionType*/ get checkServerIdentity;
 external List get sslCA;
 external dynamic /*todoUnionType*/ get sslCert;
 external dynamic /*todoUnionType*/ get sslKey;
 external dynamic /*todoUnionType*/ get sslPass;
 external SocketOptions get socketOptions;
}

@JS('Db')
class Db{
 /*  extends EventEmitter */
/*todo Constructor*/
 external void addUser(String username, String password, MongoCallback callback);
// external Promise addUser(String username, String password, [DbAddUserOptions options]);
// external void addUser(String username, String password, DbAddUserOptions options, MongoCallback callback);
 external Admin admin();
 external void authenticate(String userName, String password, MongoCallback callback);
// external Promise authenticate(String userName, String password, [dynamic /*todoTypeLiteral*/ options]);
// external void authenticate(String userName, String password, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void close(MongoCallback callback);
// external Promise close([bool forceClose]);
// external void close(bool forceClose, MongoCallback callback);
 external Collection collection(String name);
// external Collection collection(String name, MongoCallback callback);
// external Collection collection(String name, DbCollectionOptions options, MongoCallback callback);
 external Promise collections();
// external void collections(MongoCallback callback);
 external void command(Object command, MongoCallback callback);
// external Promise command(Object command, [dynamic /*todoTypeLiteral*/ options]);
// external void command(Object command, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void createCollection(String name, MongoCallback callback);
// external Promise createCollection(String name, [CollectionCreateOptions options]);
// external void createCollection(String name, CollectionCreateOptions options, MongoCallback callback);
 external void createIndex(String name, dynamic /*todoUnionType*/ fieldOrSpec, MongoCallback callback);
// external Promise createIndex(String name, dynamic /*todoUnionType*/ fieldOrSpec, [IndexOptions options]);
// external void createIndex(String name, dynamic /*todoUnionType*/ fieldOrSpec, IndexOptions options, MongoCallback callback);
 external Db db(String dbName);
// external Db db(String dbName, dynamic /*todoTypeLiteral*/ options);
 external Promise dropCollection(String name);
// external void dropCollection(String name, MongoCallback callback);
 external Promise dropDatabase();
// external void dropDatabase(MongoCallback callback);
 external void executeDbAdminCommand(Object command, MongoCallback callback);
// external Promise executeDbAdminCommand(Object command, [dynamic /*todoTypeLiteral*/ options]);
// external void executeDbAdminCommand(Object command, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void indexInformation(String name, MongoCallback callback);
// external Promise indexInformation(String name, [dynamic /*todoTypeLiteral*/ options]);
// external void indexInformation(String name, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external CommandCursor listCollections(dynamic /*todoTypeLiteral*/ filter, [dynamic /*todoTypeLiteral*/ options]);
 external void logout(MongoCallback callback);
// external Promise logout([dynamic /*todoTypeLiteral*/ options]);
// external void logout(dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external Promise open();
// external void open(MongoCallback callback);
 external void removeUser(String username, MongoCallback callback);
// external Promise removeUser(String username, [dynamic /*todoTypeLiteral*/ options]);
// external void removeUser(String username, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void renameCollection(String fromCollection, String toCollection, MongoCallback callback);
// external Promise renameCollection(String fromCollection, String toCollection, [dynamic /*todoTypeLiteral*/ options]);
// external void renameCollection(String fromCollection, String toCollection, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void stats(MongoCallback callback);
// external Promise stats([dynamic /*todoTypeLiteral*/ options]);
// external void stats(dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
}

@JS('Server')
class Server{
 /*  extends EventEmitter */
/*todo Constructor*/
 external List connections();
}

@JS('ReplSet')
class ReplSet{
 /*  extends EventEmitter */
/*todo Constructor*/
 external List connections();
}

@JS('Mongos')
class Mongos{
 /*  extends EventEmitter */
/*todo Constructor*/
 external List connections();
}

@JS('DbAddUserOptions')
class DbAddUserOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external Object get customData;
 external List<Object> get roles;
}

@JS('CollectionCreateOptions')
class CollectionCreateOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get raw;
 external Object get pkFactory;
 external dynamic /*todoUnionType*/ get readPreference;
 external bool get serializeFunctions;
 external bool get strict;
 external bool get capped;
 external num get size;
 external num get max;
 external bool get autoIndexId;
}

@JS('DbCollectionOptions')
class DbCollectionOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get raw;
 external Object get pkFactory;
 external dynamic /*todoUnionType*/ get readPreference;
 external bool get serializeFunctions;
 external bool get strict;
 external dynamic /*todoTypeLiteral*/ get readConcern;
}

@JS('IndexOptions')
class IndexOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get unique;
 external bool get sparse;
 external bool get background;
 external bool get dropDups;
 external num get min;
 external num get max;
 external num get v;
 external num get expireAfterSeconds;
 external String get name;
}

@JS('Admin')
class Admin{
 external void addUser(String username, String password, MongoCallback callback);
// external Promise addUser(String username, String password, [AddUserOptions options]);
// external void addUser(String username, String password, AddUserOptions options, MongoCallback callback);
 external void authenticate(String username, MongoCallback callback);
// external Promise authenticate(String username, [String password]);
// external void authenticate(String username, String password, MongoCallback callback);
 external Promise buildInfo();
// external void buildInfo(MongoCallback callback);
 external void command(Object command, MongoCallback callback);
// external Promise command(Object command, [dynamic /*todoTypeLiteral*/ options]);
// external void command(Object command, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external Promise listDatabases();
// external void listDatabases(MongoCallback callback);
 external Promise logout();
// external void logout(MongoCallback callback);
 external Promise ping();
// external void ping(MongoCallback callback);
 external Promise profilingInfo();
// external void profilingInfo(MongoCallback callback);
 external Promise profilingLevel();
// external void profilingLevel(MongoCallback callback);
 external void removeUser(String username, MongoCallback callback);
// external Promise removeUser(String username, [FSyncOptions options]);
// external void removeUser(String username, FSyncOptions options, MongoCallback callback);
 external Promise replSetGetStatus();
// external void replSetGetStatus(MongoCallback callback);
 external Promise serverInfo();
// external void serverInfo(MongoCallback callback);
 external Promise serverStatus();
// external void serverStatus(MongoCallback callback);
 external Promise setProfilingLevel(String level);
// external void setProfilingLevel(String level, MongoCallback callback);
 external void validateCollection(String collectionNme, MongoCallback callback);
// external Promise validateCollection(String collectionNme, [Object options]);
// external void validateCollection(String collectionNme, Object options, MongoCallback callback);
}

@JS('AddUserOptions')
class AddUserOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get fsync;
 external Object get customData;
 external List<Object> get roles;
}

@JS('FSyncOptions')
class FSyncOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get fsync;
}

@JS('ObjectID')
class ObjectID{
/*todo Constructor*/
 external ObjectID createFromHexString(String hexString);
 external ObjectID createFromTime(num time);
 external bool isValid(dynamic /*todoUnionType*/ id);
 external bool equals(ObjectID otherID);
 external String generate([num time]);
 external Date getTimestamp();
 external String toHexString();
}

@JS('Binary')
class Binary{
/*todo Constructor*/
 external num length();
 external void put(dynamic /*todoUnionType*/ byte_value);
 external Buffer read(num position, num length);
 external String value();
 external void write(dynamic /*todoUnionType*/ buffer, num offset);
}

@JS('Double')
class Double{
/*todo Constructor*/
// external num valueOf();
}

@JS('Long')
class Long{
/*todo Constructor*/
 external Long fromBits(num lowBits, num highBits);
 external Long fromInt(num value);
 external Long fromNumber(num value);
 external Long fromString(String str, [num radix]);
 external Long add(Long other);
 external Long and(Long other);
 external num compare(Long other);
 external Long div(Long other);
 external bool equals(Long other);
 external num getHighBits();
 external num getLowBits();
 external num getLowBitsUnsigned();
 external num getNumBitsAbs();
 external num greaterThan(Long other);
 external num greaterThanOrEqual(Long other);
 external bool isNegative();
 external bool isOdd();
 external bool isZero();
 external bool lessThan(Long other);
 external bool lessThanOrEqual(Long other);
 external Long modulo(Long other);
 external Long multiply(Long other);
 external Long negate();
 external Long not();
 external bool notEquals(Long other);
 external Long or(Long other);
 external Long shiftLeft(num other);
 external Long shiftRight(num other);
 external Long shiftRightUnsigned(num other);
 external Long subtract(Long other);
 external num toInt();
 external String toJSON();
 external num toNumber();
// external String toString([num radix]);
 external Long xor(Long other);
}

@JS('MaxKey')
class MaxKey{
}

@JS('MinKey')
class MinKey{
}

@JS('Timestamp')
class Timestamp{
/*todo Constructor*/
 external Timestamp fromBits(num lowBits, num highBits);
 external Timestamp fromInt(num value);
 external Timestamp fromNumber(num value);
 external Timestamp fromString(String str, [num radix]);
 external Timestamp add(Timestamp other);
 external Timestamp and(Timestamp other);
 external num compare(Timestamp other);
 external Timestamp div(Timestamp other);
 external bool equals(Timestamp other);
 external num getHighBits();
 external num getLowBits();
 external num getLowBitsUnsigned();
 external num getNumBitsAbs();
 external num greaterThan(Timestamp other);
 external num greaterThanOrEqual(Timestamp other);
 external bool isNegative();
 external bool isOdd();
 external bool isZero();
 external bool lessThan(Timestamp other);
 external bool lessThanOrEqual(Timestamp other);
 external Timestamp modulo(Timestamp other);
 external Timestamp multiply(Timestamp other);
 external Timestamp negate();
 external Timestamp not();
 external bool notEquals(Timestamp other);
 external Timestamp or(Timestamp other);
 external Timestamp shiftLeft(num other);
 external Timestamp shiftRight(num other);
 external Timestamp shiftRightUnsigned(num other);
 external Timestamp subtract(Timestamp other);
 external num toInt();
 external String toJSON();
 external num toNumber();
// external String toString([num radix]);
 external Timestamp xor(Timestamp other);
}

@JS('Collection')
class Collection{
 external String get collectionName;
 external String get namespace;
 external dynamic get writeConcern;
 external dynamic get readConcern;
 external dynamic get hint;
 external AggregationCursor aggregate(List<Object> pipeline, MongoCallback callback);
// external AggregationCursor aggregate(List<Object> pipeline, [CollectionAggregationOptions options, MongoCallback callback]);
 external void bulkWrite(List<Object> operations, MongoCallback callback);
// external Promise bulkWrite(List<Object> operations, [CollectionBluckWriteOptions options]);
// external void bulkWrite(List<Object> operations, CollectionBluckWriteOptions options, MongoCallback callback);
 external void count(Object query, MongoCallback callback);
// external Promise count(Object query, [MongoCountPreferences options]);
// external void count(Object query, MongoCountPreferences options, MongoCallback callback);
 external void createIndex(dynamic /*todoUnionType*/ fieldOrSpec, MongoCallback callback);
// external Promise createIndex(dynamic /*todoUnionType*/ fieldOrSpec, [IndexOptions options]);
// external void createIndex(dynamic /*todoUnionType*/ fieldOrSpec, IndexOptions options, MongoCallback callback);
 external Promise createIndexes(List<Object> indexSpecs);
// external void createIndexes(List<Object> indexSpecs, MongoCallback callback);
 external void deleteMany(Object filter, MongoCallback callback);
// external Promise deleteMany(Object filter, [CollectionOptions options]);
// external void deleteMany(Object filter, CollectionOptions options, MongoCallback callback);
 external void deleteOne(Object filter, MongoCallback callback);
// external Promise deleteOne(Object filter, [dynamic /*todoTypeLiteral*/ options]);
// external void deleteOne(Object filter, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void distinct(String key, Object query, MongoCallback callback);
// external Promise distinct(String key, Object query, [dynamic /*todoTypeLiteral*/ options]);
// external void distinct(String key, Object query, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external Promise drop();
// external void drop(MongoCallback callback);
 external void dropIndex(String indexName, MongoCallback callback);
// external Promise dropIndex(String indexName, [CollectionOptions options]);
// external void dropIndex(String indexName, CollectionOptions options, MongoCallback callback);
 external Promise dropIndexes();
// external void dropIndexes([MongoCallback callback]);
 external Cursor find([Object query]);
// external Cursor find(Object query, [Object fields, num skip, num limit, num timeout]);
 external void findOne(Object filter, MongoCallback callback);
// external Promise findOne(Object filter, [FindOneOptions options]);
// external void findOne(Object filter, FindOneOptions options, MongoCallback callback);
 external void findOneAndDelete(Object filter, MongoCallback callback);
// external Promise findOneAndDelete(Object filter, [dynamic /*todoTypeLiteral*/ options]);
// external void findOneAndDelete(Object filter, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void findOneAndReplace(Object filter, Object replacement, MongoCallback callback);
// external Promise findOneAndReplace(Object filter, Object replacement, [FindOneAndReplaceOption options]);
// external void findOneAndReplace(Object filter, Object replacement, FindOneAndReplaceOption options, MongoCallback callback);
 external void findOneAndUpdate(Object filter, Object update, MongoCallback callback);
// external Promise findOneAndUpdate(Object filter, Object update, [FindOneAndReplaceOption options]);
// external void findOneAndUpdate(Object filter, Object update, FindOneAndReplaceOption options, MongoCallback callback);
 external void geoHaystackSearch(num x, num y, MongoCallback callback);
// external Promise geoHaystackSearch(num x, num y, [GeoHaystackSearchOptions options]);
// external void geoHaystackSearch(num x, num y, GeoHaystackSearchOptions options, MongoCallback callback);
 external void geoNear(num x, num y, MongoCallback callback);
// external Promise geoNear(num x, num y, [GeoNearOptions options]);
// external void geoNear(num x, num y, GeoNearOptions options, MongoCallback callback);
 external void group(dynamic /*todoUnionType*/ keys, Object condition, Object initial, dynamic /*todoUnionType*/ reduce, dynamic /*todoUnionType*/ finalize, bool command, MongoCallback callback);
// external Promise group(dynamic /*todoUnionType*/ keys, Object condition, Object initial, dynamic /*todoUnionType*/ reduce, dynamic /*todoUnionType*/ finalize, bool command, [dynamic /*todoTypeLiteral*/ options]);
// external void group(dynamic /*todoUnionType*/ keys, Object condition, Object initial, dynamic /*todoUnionType*/ reduce, dynamic /*todoUnionType*/ finalize, bool command, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external Promise indexes();
// external void indexes(MongoCallback callback);
 external Promise indexExists(dynamic /*todoUnionType*/ indexes);
// external void indexExists(dynamic /*todoUnionType*/ indexes, MongoCallback callback);
 external void indexInformation(MongoCallback callback);
// external Promise indexInformation([dynamic /*todoTypeLiteral*/ options]);
// external void indexInformation(dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external OrderedBulkOperation initializeOrderedBulkOp([CollectionOptions options]);
 external UnorderedBulkOperation initializeUnorderedBulkOp([CollectionOptions options]);
 external void insert(Object docs, MongoCallback callback);
// external Promise insert(Object docs, [CollectionInsertOneOptions options]);
// external void insert(Object docs, CollectionInsertOneOptions options, MongoCallback callback);
 external void insertMany(List<Object> docs, MongoCallback callback);
// external Promise insertMany(List<Object> docs, [CollectionInsertManyOptions options]);
// external void insertMany(List<Object> docs, CollectionInsertManyOptions options, MongoCallback callback);
 external void insertOne(Object docs, MongoCallback callback);
// external Promise insertOne(Object docs, [CollectionInsertOneOptions options]);
// external void insertOne(Object docs, CollectionInsertOneOptions options, MongoCallback callback);
 external Promise isCapped();
// external void isCapped(MongoCallback callback);
 external CommandCursor listIndexes([dynamic /*todoTypeLiteral*/ options]);
 external void mapReduce(dynamic /*todoUnionType*/ map, dynamic /*todoUnionType*/ reduce, MongoCallback callback);
// external Promise mapReduce(dynamic /*todoUnionType*/ map, dynamic /*todoUnionType*/ reduce, [MapReduceOptions options]);
// external void mapReduce(dynamic /*todoUnionType*/ map, dynamic /*todoUnionType*/ reduce, MapReduceOptions options, MongoCallback callback);
 external Promise options();
// external void options(MongoCallback callback);
 external void parallelCollectionScan(MongoCallback callback);
// external Promise parallelCollectionScan([ParallelCollectionScanOptions options]);
// external void parallelCollectionScan(ParallelCollectionScanOptions options, MongoCallback callback);
 external Promise reIndex();
// external void reIndex(MongoCallback callback);
 external void rename(String newName, MongoCallback callback);
// external Promise rename(String newName, [dynamic /*todoTypeLiteral*/ options]);
// external void rename(String newName, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void replaceOne(Object filter, Object doc, MongoCallback callback);
// external Promise replaceOne(Object filter, Object doc, [ReplaceOneOptions options]);
// external void replaceOne(Object filter, Object doc, ReplaceOneOptions options, MongoCallback callback);
 external void save(Object doc, MongoCallback callback);
// external Promise save(Object doc, [CollectionOptions options]);
// external void save(Object doc, CollectionOptions options, MongoCallback callback);
 external void stats(MongoCallback callback);
// external Promise stats([dynamic /*todoTypeLiteral*/ options]);
// external void stats(dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void update(Object filter, Object update, MongoCallback callback);
// external Promise update(Object filter, Object update, [dynamic /*todoIntersectionType*/ options]);
// external void update(Object filter, Object update, dynamic /*todoIntersectionType*/ options, MongoCallback callback);
 external void updateMany(Object filter, Object update, MongoCallback callback);
// external Promise updateMany(Object filter, Object update, [dynamic /*todoTypeLiteral*/ options]);
// external void updateMany(Object filter, Object update, dynamic /*todoTypeLiteral*/ options, MongoCallback callback);
 external void updateOne(Object filter, Object update, MongoCallback callback);
// external Promise updateOne(Object filter, Object update, [ReplaceOneOptions options]);
// external void updateOne(Object filter, Object update, ReplaceOneOptions options, MongoCallback callback);
}

@JS('CollStats')
class CollStats{
 external String get ns;
 external num get count;
 external num get size;
 external num get avgObjSize;
 external num get storageSize;
 external num get numExtents;
 external num get nindexes;
 external num get lastExtentSize;
 external num get paddingFactor;
 external num get userFlags;
 external num get totalIndexSize;
 external dynamic /*todoTypeLiteral*/ get indexSizes;
 external bool get capped;
 external bool get maxSize;
 external dynamic get wiredTiger;
 external dynamic get indexDetails;
 external num get ok;
}

@JS('CollectionAggregationOptions')
class CollectionAggregationOptions{
 external dynamic /*todoUnionType*/ get readPreference;
 external dynamic /*todoTypeLiteral*/ get cursor;
 external bool get explain;
 external bool get allowDiskUse;
 external bool get maxTimeMS;
 external bool get bypassDocumentValidation;
}

@JS('CollectionInsertManyOptions')
class CollectionInsertManyOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get serializeFunctions;
 external bool get forceServerObjectId;
}

@JS('CollectionBluckWriteOptions')
class CollectionBluckWriteOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get serializeFunctions;
 external bool get ordered;
 external bool get bypassDocumentValidation;
}

@JS('BulkWriteOpResultObject')
class BulkWriteOpResultObject{
 external num get insertedCount;
 external num get matchedCount;
 external num get modifiedCount;
 external num get deletedCount;
 external num get upsertedCount;
 external dynamic get insertedIds;
 external dynamic get upsertedIds;
 external dynamic get result;
}

@JS('MongoCountPreferences')
class MongoCountPreferences{
 external num get limit;
 external bool get skip;
 external String get hint;
 external dynamic /*todoUnionType*/ get readPreference;
}

@JS('DeleteWriteOpResultObject')
class DeleteWriteOpResultObject{
 external dynamic /*todoTypeLiteral*/ get result;
 external dynamic get connection;
 external num get deletedCount;
}

@JS('FindAndModifyWriteOpResultObject')
class FindAndModifyWriteOpResultObject{
 external dynamic get value;
 external dynamic get lastErrorObject;
 external num get ok;
}

@JS('FindOneAndReplaceOption')
class FindOneAndReplaceOption{
 external Object get projection;
 external Object get sort;
 external num get maxTimeMS;
 external bool get upsert;
 external bool get returnOriginal;
}

@JS('GeoHaystackSearchOptions')
class GeoHaystackSearchOptions{
 external dynamic /*todoUnionType*/ get readPreference;
 external num get maxDistance;
 external Object get search;
 external num get limit;
}

@JS('GeoNearOptions')
class GeoNearOptions{
 external dynamic /*todoUnionType*/ get readPreference;
 external num get num;
 external num get minDistance;
 external num get maxDistance;
 external num get distanceMultiplier;
 external Object get query;
 external bool get spherical;
 external bool get uniqueDocs;
 external bool get includeLocs;
}

@JS('Code')
class Code{
/*todo Constructor*/
}

@JS('CollectionOptions')
class CollectionOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
}

@JS('OrderedBulkOperation')
class OrderedBulkOperation{
 external num get length;
 external void execute(MongoCallback callback);
// external Promise execute([FSyncOptions options]);
// external void execute(FSyncOptions options, MongoCallback callback);
 external FindOperatorsOrdered find(Object selector);
 external OrderedBulkOperation insert(Object doc);
}

@JS('BulkWriteResult')
class BulkWriteResult{
 external num get ok;
 external num get nInserted;
 external num get nUpdated;
 external num get nUpserted;
 external num get nModified;
 external num get nRemoved;
 external List getInsertedIds();
 external Object getLastOp();
 external Object getRawResponse();
 external Object getUpsertedIdAt(num index);
 external List getUpsertedIds();
 external WriteConcernError getWriteConcernError();
 external WriteError getWriteErrorAt(num index);
 external num getWriteErrorCount();
 external List getWriteErrors();
 external bool hasWriteErrors();
}

@JS('WriteError')
class WriteError{
 external num get code;
 external num get index;
 external String get errmsg;
}

@JS('WriteConcernError')
class WriteConcernError{
 external num get code;
 external String get errmsg;
}

@JS('FindOperatorsOrdered')
class FindOperatorsOrdered{
 external OrderedBulkOperation delete();
 external OrderedBulkOperation deleteOne();
 external OrderedBulkOperation replaceOne(Object doc);
 external OrderedBulkOperation update(Object doc);
 external OrderedBulkOperation updateOne(Object doc);
 external FindOperatorsOrdered upsert();
}

@JS('UnorderedBulkOperation')
class UnorderedBulkOperation{
 external void execute(MongoCallback callback);
// external Promise execute([FSyncOptions options]);
// external void execute(FSyncOptions options, MongoCallback callback);
 external FindOperatorsUnordered find(Object selector);
 external UnorderedBulkOperation insert(Object doc);
}

@JS('FindOperatorsUnordered')
class FindOperatorsUnordered{
 external num get length;
 external UnorderedBulkOperation remove();
 external UnorderedBulkOperation removeOne();
 external UnorderedBulkOperation replaceOne(Object doc);
 external UnorderedBulkOperation update(Object doc);
 external UnorderedBulkOperation updateOne(Object doc);
 external FindOperatorsUnordered upsert();
}

@JS('FindOneOptions')
class FindOneOptions{
 external num get limit;
 external dynamic /*todoUnionType*/ get sort;
 external Object get fields;
 external num get skip;
 external Object get hint;
 external bool get explain;
 external bool get snapshot;
 external bool get timeout;
 external bool get tailable;
 external num get batchSize;
 external bool get returnKey;
 external num get maxScan;
 external num get min;
 external num get max;
 external bool get showDiskLoc;
 external String get comment;
 external bool get raw;
 external dynamic /*todoUnionType*/ get readPreference;
 external bool get partial;
 external num get maxTimeMs;
}

@JS('InsertWriteOpResult')
class InsertWriteOpResult{
 external num get insertedCount;
 external List get ops;
 external List get insertedIds;
 external dynamic get connection;
 external dynamic /*todoTypeLiteral*/ get result;
}

@JS('CollectionInsertOneOptions')
class CollectionInsertOneOptions{
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get serializeFunctions;
 external bool get forceServerObjectId;
 external bool get bypassDocumentValidation;
}

@JS('InsertOneWriteOpResult')
class InsertOneWriteOpResult{
 external num get insertedCount;
 external List get ops;
 external ObjectID get insertedId;
 external dynamic get connection;
 external dynamic /*todoTypeLiteral*/ get result;
}

@JS('ParallelCollectionScanOptions')
class ParallelCollectionScanOptions{
 external dynamic /*todoUnionType*/ get readPreference;
 external num get batchSize;
 external num get numCursors;
 external bool get raw;
}

@JS('ReplaceOneOptions')
class ReplaceOneOptions{
 external bool get upsert;
 external dynamic /*todoUnionType*/ get w;
 external num get wtimeout;
 external bool get j;
 external bool get bypassDocumentValidation;
}

@JS('UpdateWriteOpResult')
class UpdateWriteOpResult{
 external dynamic /*todoTypeLiteral*/ get result;
 external dynamic get connection;
 external num get matchedCount;
 external num get modifiedCount;
 external num get upsertedCount;
 external dynamic /*todoTypeLiteral*/ get upsertedId;
}

@JS('MapReduceOptions')
class MapReduceOptions{
 external dynamic /*todoUnionType*/ get readPreference;
 external Object get out;
 external Object get query;
 external Object get sort;
 external num get limit;
 external bool get keeptemp;
 external dynamic /*todoUnionType*/ get finalize;
 external Object get scope;
 external bool get jsMode;
 external bool get verbose;
 external bool get bypassDocumentValidation;
}

@JS('WriteOpResult')
class WriteOpResult{
 external List get ops;
 external dynamic get connection;
 external dynamic get result;
}

@JS('Readable')
class Readable{
 external void pause();
 external void pipe(Writable destination, [Object options]);
 external dynamic /*todoUnionType*/ read(num size);
 external void resume();
 external void setEncoding(String encoding);
 external void unpipe([Writable destination]);
 external void unshift(dynamic /*todoUnionType*/ stream);
 external void wrap(Stream stream);
}

@JS('Writable')
class Writable{
}

@JS('Stream')
class Stream{
}

@JS('Cursor')
class Cursor{
 /*  extends Readable, NodeJS.EventEmitter */
 external String get sortValue;
 external bool get timeout;
 external ReadPreference get readPreference;
 external Cursor addCursorFlag(String flag, bool value);
 external Cursor addQueryModifier(String name, bool value);
 external Cursor batchSize(num value);
 external Cursor clone();
 external Promise close();
// external void close(MongoCallback callback);
 external Cursor comment(String value);
 external void count(bool applySkipLimit, MongoCallback callback);
// external Promise count(bool applySkipLimit, [CursorCommentOptions options]);
// external void count(bool applySkipLimit, CursorCommentOptions options, MongoCallback callback);
 external Promise explain();
// external void explain(MongoCallback callback);
 external Cursor filter(Object filter);
 external void forEach(IteratorCallback iterator, EndCallback callback);
 external Promise hasNext();
// external void hasNext(MongoCallback callback);
 external Cursor hint(Object hint);
 external bool isClosed();
 external Cursor limit(num value);
 external void map(Function transform);
 external Cursor max(num max);
 external Cursor maxAwaitTimeMS(num value);
 external Cursor maxScan(Object maxScan);
 external Cursor maxTimeMS(num value);
 external Cursor min(num min);
 external Promise next();
// external void next(MongoCallback callback);
 external void pause();
 external void pipe(Writable destination, [Object options]);
 external Cursor project(Object value);
 external dynamic /*todoUnionType*/ read(num size);
 external void resume();
 external Cursor returnKey(Object returnKey);
 external void rewind();
 external Cursor setCursorOption(String field, Object value);
 external void setEncoding(String encoding);
 external Cursor setReadPreference(dynamic /*todoUnionType*/ readPreference);
 external Cursor showRecordId(Object showRecordId);
 external Cursor skip(num value);
 external Cursor snapshot(Object snapshot);
 external Cursor sort(dynamic /*todoUnionType*/ keyOrList, [num direction]);
 external Cursor stream([dynamic /*todoTypeLiteral*/ options]);
 external Promise toArray();
// external void toArray(MongoCallback callback);
 external void unpipe([Writable destination]);
 external void unshift(dynamic /*todoUnionType*/ stream);
 external void wrap(Stream stream);
}

@JS('CursorCommentOptions')
class CursorCommentOptions{
 external num get skip;
 external num get limit;
 external num get maxTimeMS;
 external String get hint;
 external dynamic /*todoUnionType*/ get readPreference;
}

@JS('IteratorCallback')
class IteratorCallback{
}

@JS('EndCallback')
class EndCallback{
}

@JS('AggregationCursor')
class AggregationCursor{
 /*  extends Readable, NodeJS.EventEmitter */
 external AggregationCursor batchSize(num value);
 external AggregationCursor clone();
 external Promise close();
// external void close(MongoCallback callback);
 external void each(MongoCallback callback);
 external Promise explain();
// external void explain(MongoCallback callback);
 external AggregationCursor geoNear(Object document);
 external AggregationCursor group(Object document);
 external bool isClosed();
 external AggregationCursor limit(num value);
 external AggregationCursor match(Object document);
 external AggregationCursor maxTimeMS(num value);
 external Promise next();
// external void next(MongoCallback callback);
 external AggregationCursor out(String destination);
 external void pause();
 external void pipe(Writable destination, [Object options]);
 external AggregationCursor project(Object document);
 external dynamic /*todoUnionType*/ read(num size);
 external AggregationCursor redact(Object document);
 external void resume();
 external AggregationCursor rewind();
 external void setEncoding(String encoding);
 external AggregationCursor skip(num value);
 external AggregationCursor sort(Object document);
 external Promise toArray();
// external void toArray(MongoCallback callback);
 external void unpipe([Writable destination]);
 external void unshift(dynamic /*todoUnionType*/ stream);
 external AggregationCursor unwind(String field);
 external void wrap(Stream stream);
}

@JS('CommandCursor')
class CommandCursor{
 /*  extends Readable, NodeJS.EventEmitter */
 external CommandCursor batchSize(num value);
 external CommandCursor clone();
 external Promise close();
// external void close(MongoCallback callback);
 external void each(MongoCallback callback);
 external bool isClosed();
 external CommandCursor maxTimeMS(num value);
 external Promise next();
// external void next(MongoCallback callback);
 external void pause();
 external void pipe(Writable destination, [Object options]);
 external dynamic /*todoUnionType*/ read(num size);
 external void resume();
 external CommandCursor rewind();
 external void setEncoding(String encoding);
 external CommandCursor setReadPreference(dynamic /*todoUnionType*/ readPreference);
 external Promise toArray();
// external void toArray(MongoCallback callback);
 external void unpipe([Writable destination]);
 external void unshift(dynamic /*todoUnionType*/ stream);
 external void wrap(Stream stream);
}

